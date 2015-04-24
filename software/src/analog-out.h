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

#define RANGE_VOLTAGE_0_TO_5    0
#define RANGE_VOLTAGE_0_TO_10   1
#define RANGE_CURRENT_4_TO_20   0
#define RANGE_CURRENT_0_TO_20   1
#define RANGE_CURRENT_0_TO_24   2

#define REG_NOP            0x00
#define REG_WRITE_DAC      0x01
#define REG_READ           0x02
#define REG_WRITE_CONTROL  0x55
#define REG_WRITE_RESET    0x56
#define REG_WRITE_CONFIG   0x57
#define REG_WRITE_CAL_GAIN 0x58
#define REG_WRITE_CAL_ZERO 0x59
#define REG_RESET_WATCHDOG 0x95

#define FID_ENABLE            1
#define FID_DISABLE           2
#define FID_IS_ENABLED        3
#define FID_SET_VOLTAGE       4
#define FID_GET_VOLTAGE       5
#define FID_SET_CURRENT       6
#define FID_GET_CURRENT       7
#define FID_SET_CONFIGURATION 8
#define FID_GET_CONFIGURATION 9

typedef struct {
	MessageHeader header;
} __attribute__((__packed__)) StandardMessage;

typedef struct {
	MessageHeader header;
} __attribute__((__packed__)) Enable;

typedef struct {
	MessageHeader header;
} __attribute__((__packed__)) Disable;

typedef struct {
	MessageHeader header;
} __attribute__((__packed__)) IsEnabled;

typedef struct {
	MessageHeader header;
	bool enabled;
} __attribute__((__packed__)) IsEnabledReturn;

typedef struct {
	MessageHeader header;
	uint16_t voltage;
} __attribute__((__packed__)) SetVoltage;

typedef struct {
	MessageHeader header;
} __attribute__((__packed__)) GetVoltage;

typedef struct {
	MessageHeader header;
	uint16_t voltage;
} __attribute__((__packed__)) GetVoltageReturn;

typedef struct {
	MessageHeader header;
	uint16_t current;
} __attribute__((__packed__)) SetCurrent;

typedef struct {
	MessageHeader header;
} __attribute__((__packed__)) GetCurrent;

typedef struct {
	MessageHeader header;
	uint16_t current;
} __attribute__((__packed__)) GetCurrentReturn;

typedef struct {
	MessageHeader header;
	uint8_t voltage_range;
	uint8_t current_range;
} __attribute__((__packed__)) SetConfiguration;

typedef struct {
	MessageHeader header;
} __attribute__((__packed__)) GetConfiguration;

typedef struct {
	MessageHeader header;
	uint8_t voltage_range;
	uint8_t current_range;
} __attribute__((__packed__)) GetConfigurationReturn;


void enable(const ComType com, const Enable *data);
void disable(const ComType com, const Disable *data);
void is_enabled(const ComType com, const IsEnabled *data);
void set_voltage(const ComType com, const SetVoltage *data);
void get_voltage(const ComType com, const GetVoltage *data);
void set_current(const ComType com, const SetCurrent *data);
void get_current(const ComType com, const GetCurrent *data);
void set_configuration(const ComType com, const SetConfiguration *data);
void get_configuration(const ComType com, const GetConfiguration *data);

void dac7760_write_register(const uint8_t reg, const uint16_t data);
bool dac7760_read_register(const uint8_t reg, uint16_t *data);
uint8_t spibb_transceive_byte(const uint8_t value);
uint8_t crc8_atm(uint8_t *buf, uint8_t len);

void invocation(const ComType com, const uint8_t *data);
void constructor(void);
void destructor(void);
void tick(const uint8_t tick_type);

void update_voltage_by_value(void);
void update_current_by_value(void);
void update_value_by_voltage(uint16_t voltage);
void update_value_by_current(uint16_t current);
void update_configuration(void);
void update_dac(void);

#endif
