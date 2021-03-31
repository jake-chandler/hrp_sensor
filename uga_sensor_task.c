/*
 * @file uga_sensor_task.c
 *
 * @brief Heart Rate, Blood Oxygen, and Respiratory Rate Sensor profile task
 *
 * TODO:
 *      -Mimic this task with the provided HR Task, except use additional services.
 *      -Finish implementing the BO2 sensor service.
 *      -Daksh needs to initialize and read from hardware.
 *  Created on: Mar 13, 2021
 *      Author: Jake Chandler
 *
 *      University of Georgia
 */

#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <string.h>
#include "osal.h"
#include "sys_watchdog.h"
#include "ble_common.h"
#include "ble_service.h"
#include "hrs.h"
#include "dis.h"
#include "hw_gpio.h"
#include "resp_rate_sensor.h"
#include "hrs.h"

/*
 * Notification bits reservation
 *
 * Bit #0 is always assigned to BLE event queue notification.
 */
#define RRS_TIMER_NOTIF (1 << 1)
#define ADV_TIMER_NOTIF (1 << 2)  // notification from advertising timer
#define BUTTON_NOTIF    (1 << 3)
#define CLIENT_UPDATE_TIME (500)
#define PERIPHERAL_DEVICE_NAME "uga_respiratory_mc"

/* Advertising modes of sensor app */
typedef enum {
        ADV_MODE_OFF,
        ADV_MODE_FAST_CONNECTION,
        ADV_MODE_REDUCED_POWER,
} adv_mode_t;

__RETAINED OS_TASK static current_task;
/* Active connection index used to send measurements */
__RETAINED_RW static uint16_t active_conn_idx = BLE_CONN_IDX_INVALID;
/* Current advertising mode */
__RETAINED static adv_mode_t adv_mode;
/* Timer used for advertising mode control */
__RETAINED static OS_TIMER adv_timer;
/* Advertising interval minimum */
__RETAINED static uint16_t adv_intv_min;
/* Advertising interval maximum */
__RETAINED static uint16_t adv_intv_max;
/* Advertising timeout */
__RETAINED static unsigned adv_timeout;

/*
 * HRP advertising and scan response data
 *
 * As per HRP specification, sensor device should include HRS UUID in advertising data and local name
 * in either advertising data or scan response.
 */
static const uint8_t adv_data[] = {
        0x03, GAP_DATA_TYPE_UUID16_LIST_INC,
        0x0D, 0x18, // = 0x180D (HRS UUID)
};

static const uint8_t scan_rsp[] = {
        0x19, GAP_DATA_TYPE_LOCAL_NAME,
        'U', 'G', 'A', ' ', 'H', 'R', ' ', 'R', 'R',' ', 'a', 'n', 'd',' ', 'B', '0', '2',' ', 'S', 'e', 'n', 's', 'o', 'r'
};

/*
 * Device Information Service data for MEMS acoustic sensor
 *
 */
static const dis_device_info_t resp_dis_info = {
        .manufacturer = "Infineon",
        .model_number = "IM69D130",
};

/* Callbacks from RRS implementation */
static void rrs_notif_changed_cb(uint16_t conn_idx, bool enabled);


/* Device Information Service data for Optical Pulse Oximeter and HR sensor
 * @note TODO

static const dis_device_info_t hr_dis_info = {
        .manufacturer = "Maxim",
        .model_number = "MAX86140ENP+T",
};
*/
 /* Callbacks from HRS implementation */
static void hrs_notif_changed_cb(uint16_t conn_idx, bool enabled);
static void hrs_ee_reset_cb(uint16_t conn_idx);

/* Callback structure for HRS implementation */
static const hrs_callbacks_t hrs_cb = {
        .notif_changed = hrs_notif_changed_cb,
        .ee_reset      = hrs_ee_reset_cb,
};


static const rrs_callbacks_t rrs_cb = {
        .notif_changed = rrs_notif_changed_cb,
};

/* Timer used to send measurements */
__RETAINED static OS_TIMER rrs_timer;

/* Respiratory Rate Measurement data */
__RETAINED_RW static rrs_measurement_t rrs_meas = {
        .contact_supported = true,
        .contact_detected = true,
};

/* Heart Rate Measurement data */
__RETAINED_RW static hrs_measurement_t hrs_meas = {
        .contact_supported = true,
        .contact_detected = true,
        .has_energy_expended = false,
        .energy_expended = 0,
        .rr_num = 0,
        .rr = { 0, 0, 0, 0 }, // placeholder for up to 4 RR-Interval values
};


static void apply_adv_parameters(adv_mode_t mode)
{
        const char *mode_str __UNUSED;

        switch (mode) {
        case ADV_MODE_OFF:
                // leave all-zero
                adv_intv_min = 0;
                adv_intv_max = 0;
                adv_timeout = 0;
                mode_str = "off";
                break;
        case ADV_MODE_FAST_CONNECTION:
                adv_intv_min = 20;
                adv_intv_max = 30;
                adv_timeout = 30000;
                mode_str = "fast connection";
                break;
        case ADV_MODE_REDUCED_POWER:
                adv_intv_min = 1000;
                adv_intv_max = 1500;
                adv_timeout = 90000;
                mode_str = "reduced power";
                break;
        default:
                return;
        }

        /* If both min and max intervals are non-zero, set them and start advertising */
        if (adv_intv_min && adv_intv_max) {
                ble_gap_adv_intv_set(BLE_ADV_INTERVAL_FROM_MS(adv_intv_min),
                                                        BLE_ADV_INTERVAL_FROM_MS(adv_intv_max));
                ble_gap_adv_start(GAP_CONN_MODE_UNDIRECTED);

                if (adv_timeout) {
                        OS_TIMER_CHANGE_PERIOD(adv_timer, OS_MS_2_TICKS(adv_timeout),
                                                                                OS_TIMER_FOREVER);
                        OS_TIMER_START(adv_timer, OS_TIMER_FOREVER);
                }
        }

}

static void set_adv_mode(adv_mode_t mode)
{
        ble_error_t ret;

        /* If request mode is the same, just restart timer */
        if (mode == adv_mode) {
                OS_TIMER_START(adv_timer, OS_TIMER_FOREVER);
                return;
        }

        adv_mode = mode;

        /* Always try to stop advertising - we need to change parameters and then start again */
        OS_TIMER_STOP(adv_timer, OS_TIMER_FOREVER);
        ret = ble_gap_adv_stop();

        /* Advertising isn't started, apply parameters and start advertising */
        if (ret == BLE_ERROR_NOT_ALLOWED) {
                apply_adv_parameters(adv_mode);
        }
}

/* RRS timer callback */
static void rrp_timer_cb(OS_TIMER timer)
{
        OS_TASK task = (OS_TASK) OS_TIMER_GET_TIMER_ID(timer);

        OS_TASK_NOTIFY(task, RRS_TIMER_NOTIF, OS_NOTIFY_SET_BITS);
}

static void adv_timer_cb(TimerHandle_t timer)
{
        OS_TASK task = (OS_TASK) OS_TIMER_GET_TIMER_ID(timer);

        OS_TASK_NOTIFY(task, ADV_TIMER_NOTIF, OS_NOTIFY_SET_BITS);
}

/* Notification state for Heart Rate Measurement changed by peer */
static void rrs_notif_changed_cb(uint16_t conn_idx, bool enabled)
{
        if (enabled) {
                OS_TIMER_START(rrs_timer, OS_TIMER_FOREVER);
        } else {
                OS_TIMER_STOP(rrs_timer, OS_TIMER_FOREVER);
        }
}


/* Notification state for Heart Rate Measurement changed by peer */
static void hrs_notif_changed_cb(uint16_t conn_idx, bool enabled)
{
        if (enabled) {
                OS_TIMER_START(rrs_timer, OS_TIMER_FOREVER);
        } else {
                OS_TIMER_STOP(rrs_timer, OS_TIMER_FOREVER);
        }
}

 /* Reset Energy Expended requested by peer*/
static void hrs_ee_reset_cb(uint16_t conn_idx)
{
        hrs_meas.energy_expended = 0;
}


static void handle_evt_gap_connected(ble_evt_gap_connected_t *evt)
{
        /*
         * The first connected client will be the active one and notifications will be sent only
         * to him. After receive active connection index advertising is disabled for other clients.
         */
        if (active_conn_idx == BLE_CONN_IDX_INVALID) {
                active_conn_idx = evt->conn_idx;
                set_adv_mode(ADV_MODE_OFF);
        }

#if CFG_PAIR_AFTER_CONNECT
        ble_gap_pair(evt->conn_idx, true);
#endif
}

static void handle_evt_gap_disconnected(ble_evt_gap_disconnected_t *evt)
{
        /*
         * If the active client disconnects then allow another client to became the active one.
         * Start advertising to allow other clients to connect to the sensor.
         */
        if (active_conn_idx == evt->conn_idx) {
                active_conn_idx = BLE_CONN_IDX_INVALID;
                set_adv_mode(ADV_MODE_FAST_CONNECTION);
        }
}

static void handle_evt_gap_adv_completed(ble_evt_gap_adv_completed_t *evt)
{
        /* Update mode if advertising is called due to something else than our stop request */
        if (evt->status != BLE_ERROR_CANCELED) {
                set_adv_mode(ADV_MODE_OFF);
        }

        apply_adv_parameters(adv_mode);
}

static void handle_evt_gap_pair_req(ble_evt_gap_pair_req_t *evt)
{
        ble_gap_pair_reply(evt->conn_idx, true, evt->bond);
}


static void handle_adv_timer_notif(void)
{
        switch (adv_mode) {
        case ADV_MODE_OFF:
                /* ignore */
                break;
        case ADV_MODE_FAST_CONNECTION:
                set_adv_mode(ADV_MODE_REDUCED_POWER);
                break;
        case ADV_MODE_REDUCED_POWER:
                set_adv_mode(ADV_MODE_OFF);
                break;
        default:
                OS_ASSERT(0);
                return;
        }
}

void uga_sensor_task(void *params)
{
        ble_service_t *rrs;
        ble_service_t *hrs;
        int8_t wdog_id;

        /* Register hrp_sensor task to be monitored by watchdog */
        wdog_id = sys_watchdog_register(false);

        ble_peripheral_start();
        ble_register_app();

        current_task = OS_GET_CURRENT_TASK();

        /* Set device name */
        ble_gap_device_name_set("uga_respiratory_mc", ATT_PERM_READ);

        /* Add Respiratory Rate and Heart Rate Services */
        rrs = rrs_init(RRS_SENSOR_LOC_FACE, &rrs_cb);
        hrs = hrs_init(HRS_SENSOR_LOC_CHEST, &hrs_cb);

        /* Add DIS */
        //dis_init(NULL, &hr_dis_info);
        dis_init(NULL, &resp_dis_info);

        /*
         * Create timer for services which will be used to send measurement every CLEINT_UPDATE_TIME second once client
         * is connected.
         */

        rrs_timer = OS_TIMER_CREATE("rrs", OS_MS_2_TICKS(CLIENT_UPDATE_TIME), OS_TIMER_SUCCESS,
                                                (void *) OS_GET_CURRENT_TASK(), rrp_timer_cb);
        OS_ASSERT(rrs_timer);

        /*
         * Create timer for controlling advertising mode. We need to set any non-zero period (i.e. 1)
         * but this will be changed later, when timer is started.
         */
        adv_timer = OS_TIMER_CREATE("adv", /* don't care */ 1, OS_TIMER_FAIL,
                                                (void *) OS_GET_CURRENT_TASK(), adv_timer_cb);
        OS_ASSERT(adv_timer);

        /*
         * Set advertising data and scan response, then start advertising.
         */
        ble_gap_adv_data_set(sizeof(adv_data), adv_data, sizeof(scan_rsp), scan_rsp);
        set_adv_mode(ADV_MODE_FAST_CONNECTION);

        for (;;) {
                OS_BASE_TYPE ret;
                uint32_t notif;

                /* notify watchdog on each loop */
                sys_watchdog_notify(wdog_id);

                /* suspend watchdog while blocking on OS_TASK_NOTIFY_WAIT() */
                sys_watchdog_suspend(wdog_id);

                /*
                 * Wait on any of the notification bits, then clear them all
                 */
                ret = OS_TASK_NOTIFY_WAIT(0, OS_TASK_NOTIFY_ALL_BITS, &notif, OS_TASK_NOTIFY_FOREVER);
                OS_ASSERT(ret == OS_OK);

                /* resume watchdog */
                sys_watchdog_notify_and_resume(wdog_id);

                /* Notified from BLE Manager? */
                if (notif & BLE_APP_NOTIFY_MASK) {
                        ble_evt_hdr_t *hdr;

                        hdr = ble_get_event(false);
                        if (!hdr) {
                                goto no_event;
                        }

                        /*
                         * First, application needs to try pass event through ble_framework.
                         * Then it can handle it itself and finally pass to default event handler.
                         */
                        if (!ble_service_handle_event(hdr)) {
                                switch (hdr->evt_code) {
                                case BLE_EVT_GAP_CONNECTED:
                                        handle_evt_gap_connected((ble_evt_gap_connected_t *) hdr);
                                        break;
                                case BLE_EVT_GAP_DISCONNECTED:
                                        handle_evt_gap_disconnected((ble_evt_gap_disconnected_t *) hdr);
                                        break;
                                case BLE_EVT_GAP_ADV_COMPLETED:
                                        handle_evt_gap_adv_completed((ble_evt_gap_adv_completed_t *) hdr);
                                        break;
                                case BLE_EVT_GAP_PAIR_REQ:
                                        handle_evt_gap_pair_req((ble_evt_gap_pair_req_t *) hdr);
                                        break;
                                default:
                                        ble_handle_event_default(hdr);
                                        break;
                                }
                        }

                        /* Free event buffer (it's not needed anymore) */
                        OS_FREE(hdr);

no_event:
                        /*
                         * If there are more events waiting in queue, application should process
                         * them now.
                         */
                        if (ble_has_event()) {
                                OS_TASK_NOTIFY(OS_GET_CURRENT_TASK(), BLE_APP_NOTIFY_MASK, eSetBits);
                        }
                }

                /* Notified from HRS timer? */
                if (notif & RRS_TIMER_NOTIF) {
                        static unsigned int hrs_tick = 0;

                        /**
                         * Send faux readings for now, since Daksh will be filling in the readings from the sensor.
                         *
                         * This is where the analog reading and any mathematical operations required to convert the signals
                         * will be done.
                         *
                         * TODO: encapsulate the following procedures in its own function.
                         */

                        /* BPM will be 255+/-5 to send both 8- and 16-bit values */
                        rrs_meas.bpm = 30 + rand() % 11;

                        hrs_meas.bpm = 80 + rand() % 11;

                        /* Toggle Contact Detected bit every 4 measurements */
                        if (hrs_tick % 4 == 0) {
                                rrs_meas.contact_detected = !rrs_meas.contact_detected;
                                //hrs_meas.contact_detected = !hrs_meas.contact_detected;
                        }

                        /*
                         * Send notification to client. The function will check
                         * internally if notifications are enabled or not.
                         */
                        rrs_notify_measurement(rrs, active_conn_idx, &rrs_meas);
                        hrs_notify_measurement(hrs, active_conn_idx, &hrs_meas);


                        hrs_tick++;
                }

                if (notif & ADV_TIMER_NOTIF) {
                        handle_adv_timer_notif();
                }

                if (notif & BUTTON_NOTIF) {
                        if (adv_mode == ADV_MODE_OFF) {
                                set_adv_mode(ADV_MODE_FAST_CONNECTION);
                        }
                }
        }
}
