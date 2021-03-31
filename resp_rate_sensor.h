/*
 * @file resp_rate_sensor.h
 * @brief Respiratory Rate Service implementation API.
 *
 *  Created on: Mar 12, 2021
 *      Author: Jake Chandler
 *
 *      University of Georgia
 */

#ifndef RESP_RATE_SENSOR_H_
#define RESP_RATE_SENSOR_H_

#include <stdbool.h>
#include <stdint.h>
#include "ble_service.h"


typedef void (* rrs_notification_changed_cb_t) (uint16_t conn_idx, bool enabled);

/**
 * Body Sensor Location
 *
 */
typedef enum {
        RRS_SENSOR_LOC_FACE = 30,
} rrs_body_sensor_location_t;

typedef void (* rrs_notification_changed_cb_t) (uint16_t conn_idx, bool enabled);

/**
 * RRS application callbacks
 */
typedef struct {
        /** Notification status for Respiratory Rate Measurement changed by client */
        rrs_notification_changed_cb_t notif_changed;
} rrs_callbacks_t;

/**
 * Respiratory rate measurement information
 *
 * \note This corresponds to contents of Respiratory Rate Measurement characteristic value.
 *
 * \note TO BE CHANGED. Need to get more details on the information detected by the sensor.
 *
 */
typedef struct {
        uint16_t        bpm;                    /**< Breaths Per Minute value */
        bool            contact_supported;      /**< true if Sensor Contact feature is supported */
        bool            contact_detected;       /**< true if sensor contact is detected */
} rrs_measurement_t;

/**
 * Register Respiratory Rate Service instance
 *
 * \param [in] location  sensor location
 * \param [in] cb        application callbacks
 *
 * \return service instance
 *
 */
ble_service_t *rrs_init(rrs_body_sensor_location_t location, const rrs_callbacks_t *cb);

/**
 * Notify heart rate measurement to client
 *
 * \note Notification will only be sent if given client enabled notifications before.
 *
 * \param [in] svc       service instance
 * \param [in] conn_idx  connection index
 * \param [in] meas      respiratory rate measurement
 *
 */
void rrs_notify_measurement(ble_service_t *svc, uint16_t conn_idx, rrs_measurement_t *meas);

#endif /* RESP_RATE_SENSOR_H_ */
