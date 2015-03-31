/* industrial-analog-out-bricklet
 * Copyright (C) 2015 Olaf Lüke <olaf@tinkerforge.com>
 *
 * analog-out.h: Implementation of Industrial Analog Out Bricklet messages
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

#ifndef ANALOG_OUT_H
#define ANALOG_OUT_H

#include <stdint.h>
#include "bricklib/com/com_common.h"

#define REG_NOP            0x00
#define REG_WRITE_DAC      0x01
#define REG_READ           0x02
#define REG_WRITE_CONTROL  0x55
#define REG_WRITE_RESET    0x56
#define REG_WRITE_CONFIG   0x67
#define REG_WRITE_CAL_GAIN 0x68
#define REG_WRITE_CAL_ZERO 0x69
#define REG_RESET_WATCHDOG 0x95

#define FID_SET_OUTPUT_VOLTAGE 1
#define FID_GET_OUTPUT_VOLTAGE 2
#define FID_GET_INPUT_VOLTAGE  3

typedef struct {
	MessageHeader header;
} __attribute__((__packed__)) StandardMessage;

typedef struct {
	MessageHeader header;
	uint16_t voltage;
} __attribute__((__packed__)) SetOutputVoltage;

typedef struct {
	MessageHeader header;
} __attribute__((__packed__)) GetOutputVoltage;

typedef struct {
	MessageHeader header;
	uint16_t voltage;
} __attribute__((__packed__)) GetOutputVoltageReturn;

typedef struct {
	MessageHeader header;
} __attribute__((__packed__)) GetInputVoltage;

typedef struct {
	MessageHeader header;
	uint16_t voltage;
} __attribute__((__packed__)) GetInputVoltageReturn;

void set_output_voltage(const ComType com, const SetOutputVoltage *data);
void get_output_voltage(const ComType com, const GetOutputVoltage *data);
void get_input_voltage(const ComType com, const GetInputVoltage *data);

void dac7760_write_register(const uint8_t reg, const uint16_t data);
bool dac7760_read_register(const uint8_t reg, uint16_t *data);
uint8_t spibb_transceive_byte(const uint8_t value);
uint8_t crc8_atm(uint8_t *buf, uint8_t len);

void invocation(const ComType com, const uint8_t *data);
void constructor(void);
void destructor(void);
void tick(const uint8_t tick_type);

void update(void);

#endif
