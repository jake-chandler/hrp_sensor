/*
 * @file resp_rate_sensor.c
 *
 * @brief Respiratory Rate Service implementation.
 *
 *
 *  Created on: Mar 12, 2021
 *      Author: Jake Chandler
 *
 *      University of Georgia
 */
#if defined(CONFIG_USE_BLE_SERVICES)
#include <stdbool.h>
#include <stddef.h>
#include <string.h>
#include <stdio.h>
#include "osal.h"
#include "ble_att.h"
#include "ble_bufops.h"
#include "ble_common.h"
#include "ble_gatt.h"
#include "ble_gatts.h"
#include "ble_uuid.h"
#include "ble_storage.h"
#include "svc_defines.h"
#include "hrs.h"
#include "resp_rate_sensor.h"

#define UUID_SERVICE_RR (0x1075)
#define UUID_RESPIRATORY_RATE_MEASUREMENT     (0x3B57)
#define UUID_BODY_SENSOR_LOCATION       (0x3B58)
#define SERVICE "Respiratory Rate"


/**
 * Flags for determining size of event.
 */
enum measurement_flags {
        RRS_FLAG_VAL_16BIT                      = 0x01,
        RRS_FLAG_SENSOR_CONTACT_DETECTED        = 0x02,
        RRS_FLAG_SENSOR_CONTACT_SUPPORTED       = 0x04,
};

/**
 * The Respiratory Rate service.
 */
typedef struct {
        ble_service_t svc;

        // callbacks
        const rrs_callbacks_t *cb;

        // handles
        uint16_t rrm_val_h;
        uint16_t rrm_ccc_h;
} rr_service_t;

static void cleanup(ble_service_t *svc)
{

        OS_FREE(svc);
}


/**
 * Used for changing the notification status for the Respiratory Rate Value.
 */
static att_error_t do_rrm_ccc_write(rr_service_t *rrs, uint16_t conn_idx, uint16_t offset,
                                                                uint16_t length, const uint8_t *value)
{
        uint16_t ccc_val;

        if (offset) {
                return ATT_ERROR_ATTRIBUTE_NOT_LONG;
        }

        if (length != sizeof(uint16_t)) {
                return ATT_ERROR_APPLICATION_ERROR;
        }

        ccc_val = get_u16(value);

        ble_storage_put_u32(conn_idx, rrs->rrm_ccc_h, ccc_val, true);

        if (rrs->cb && rrs->cb->notif_changed) {
                rrs->cb->notif_changed(conn_idx, ccc_val & GATT_CCC_NOTIFICATIONS);
        }

        return ATT_ERROR_OK;
}

/**
 * @note Should only be called when the notification status has changed.
 */
static void handle_write_req(ble_service_t *svc, const ble_evt_gatts_write_req_t *evt)
{
        rr_service_t *rrs = (rr_service_t *) svc;
        att_error_t status = ATT_ERROR_ATTRIBUTE_NOT_FOUND;
        printf("Event Handle: %i \n",evt->handle);
        if (evt->handle == rrs->rrm_ccc_h) {
                        status = do_rrm_ccc_write(rrs, evt->conn_idx, evt->offset, evt->length, evt->value);
                        goto done;
        }

done:
        ble_gatts_write_cfm(evt->conn_idx, evt->handle, status);

}

static void handle_read_req(ble_service_t *svc, const ble_evt_gatts_read_req_t *evt)
{
        rr_service_t *rrs = (rr_service_t *) svc;

        if (evt->handle == rrs->rrm_ccc_h) {
                uint16_t ccc_val = 0;

                ble_storage_get_u16(evt->conn_idx, rrs->rrm_ccc_h, &ccc_val);

                // we're little-endian, ok to use value as-is
                ble_gatts_read_cfm(evt->conn_idx, evt->handle, ATT_ERROR_OK,
                                                                        sizeof(uint16_t), &ccc_val);
        } else {
                ble_gatts_read_cfm(evt->conn_idx, evt->handle, ATT_ERROR_READ_NOT_PERMITTED, 0, NULL);
        }
}

static uint8_t pack_notify_value(const rrs_measurement_t *meas, uint16_t length, uint8_t *value)
{
        uint8_t *ptr = &value[1];
        uint8_t flags = 0;

        if (meas->bpm > 255) {
                flags |= RRS_FLAG_VAL_16BIT;
                put_u16_inc(&ptr, meas->bpm);
        } else {
                put_u8_inc(&ptr, meas->bpm);
        }

        flags |= (meas->contact_supported ? RRS_FLAG_SENSOR_CONTACT_SUPPORTED : 0);
        flags |= (meas->contact_detected ? RRS_FLAG_SENSOR_CONTACT_DETECTED : 0);
        put_u8(value, flags);

        return ptr - value;
}
void rrs_notify_measurement(ble_service_t *svc, uint16_t conn_idx,  rrs_measurement_t *meas)
{
        rr_service_t *rrs = (rr_service_t *) svc;
        uint16_t ccc_val = 0;
        uint8_t value[20]; // default ATT_MTU-3
        uint8_t value_len;

        ble_storage_get_u16(conn_idx, rrs->rrm_ccc_h, &ccc_val);

        // ensure that client still has enabled notification for this service.
        if (!(ccc_val & GATT_CCC_NOTIFICATIONS)) {

                // if not, don't notify.
                return;
        }

        value_len = pack_notify_value(meas, sizeof(value), value);

        ble_gatts_send_event(conn_idx, rrs->rrm_val_h, GATT_EVENT_NOTIFICATION, value_len, value);
}


ble_service_t *rrs_init(rrs_body_sensor_location_t loc, const rrs_callbacks_t*cb)
{
        rr_service_t *rrs;
        uint16_t num_attr;
        uint8_t location = loc;
        uint16_t body_sensor_loc;
        att_uuid_t rrs_uuid;

        rrs = OS_MALLOC(sizeof(*rrs));
                                memset(rrs, 0, sizeof(*rrs));

        // initialize the service.
        rrs->svc.read_req = handle_read_req;
        rrs->svc.write_req = handle_write_req;
        rrs->svc.cleanup = cleanup;
        rrs->cb = cb;

        // calculate the number of attributes required for this service.
        num_attr = ble_gatts_get_num_attr(0, 2, 1);

        // create and add the service to the uuid.
        ble_uuid_create16(UUID_SERVICE_RR, &rrs_uuid);
        //ble_uuid_from_string(SERVICE, &rrs_uuid);
        ble_gatts_add_service(&rrs_uuid, GATT_SERVICE_PRIMARY, num_attr);

        // add respiratory rate measurement as a characteristic for the service.
        ble_uuid_create16(UUID_RESPIRATORY_RATE_MEASUREMENT, &rrs_uuid);
        ble_gatts_add_characteristic(&rrs_uuid, GATT_PROP_NOTIFY, ATT_PERM_READ,
                                                      7, 0, NULL, &rrs->rrm_val_h);
        // add descriptor for notifications
        ble_uuid_create16(UUID_GATT_CLIENT_CHAR_CONFIGURATION, &rrs_uuid);
        ble_gatts_add_descriptor(&rrs_uuid, ATT_PERM_RW, 2, 0, &rrs->rrm_ccc_h);

        ble_uuid_create16(UUID_BODY_SENSOR_LOCATION, &rrs_uuid);
        ble_gatts_add_characteristic(&rrs_uuid, GATT_PROP_READ, ATT_PERM_READ, 1, 0, NULL, &body_sensor_loc);

        // finally register the service
        ble_gatts_register_service(&rrs->svc.start_h, &rrs->rrm_val_h, &rrs->rrm_ccc_h,
                                                                        &body_sensor_loc, 0);

        // Body Sensor Location is static
        ble_gatts_set_value(body_sensor_loc, sizeof(uint8_t), &location);

        rrs->svc.end_h = rrs->svc.start_h + num_attr;

        ble_service_add(&rrs->svc);

        return &rrs->svc;

}


#endif
