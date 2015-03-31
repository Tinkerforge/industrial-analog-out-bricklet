/* industrial-analog-out-bricklet
 * Copyright (C) 2015 Olaf Lüke <olaf@tinkerforge.com>
 *
 * config.h: Analog Out Bricklet 2.0 specific configuration
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 * Boston, MA 02111-1307, USA.
 */

#ifndef CONFIG_H
#define CONFIG_H

#include <stdint.h>
#include <stdbool.h>

#include "bricklib/drivers/board/sam3s/SAM3S.h"

#include "analog-out.h"

#define BRICKLET_FIRMWARE_VERSION_MAJOR 2
#define BRICKLET_FIRMWARE_VERSION_MINOR 0
#define BRICKLET_FIRMWARE_VERSION_REVISION 0

#define BRICKLET_HARDWARE_VERSION_MAJOR 2
#define BRICKLET_HARDWARE_VERSION_MINOR 0
#define BRICKLET_HARDWARE_VERSION_REVISION 0

#define BRICKLET_DEVICE_IDENTIFIER 258

#define PIN_SDI (BS->pin1_ad)
#define PIN_SDO (BS->pin2_da)
#define PIN_CLK (BS->pin3_pwm)
#define PIN_LAT (BS->pin4_io)

#define BOARD_MCK 64000000

#define MAX_ADC_VALUE ((1  << 12) - 1)
#define MAX_VOLTAGE 3300

#define LOGGING_LEVEL LOGGING_DEBUG
#define DEBUG_BRICKLET 1

#define INVOCATION_IN_BRICKLET_CODE

typedef struct {
	uint32_t last_input_voltage_sum;
	uint32_t input_voltage_sum;
	uint8_t counter;

	uint16_t last_output_voltage;
} BrickContext;

#endif
