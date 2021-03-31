/*
 * @file uga_sensor_config.h
 *
 *  Created on: Mar 14, 2021
 *      Author: Jake Chandler
 */

#ifndef CONFIG_UGA_SENSOR_CONFIG_H_
#define CONFIG_UGA_SENSOR_CONFIG_H_

/**
 * Port and pin configuration for 16-bit HRP measurement value trigger
 */
#define CFG_SEND_16_BIT_VALUE_TRIGGER_GPIO_PORT   (HW_GPIO_PORT_1)
#define CFG_SEND_16_BIT_VALUE_TRIGGER_GPIO_PIN    (HW_GPIO_PIN_2)

/**
 * Pair after connect flag
 */
#ifndef CFG_PAIR_AFTER_CONNECT
#define CFG_PAIR_AFTER_CONNECT                    ( 0 )
#endif

#endif /* CONFIG_UGA_SENSOR_CONFIG_H_ */
