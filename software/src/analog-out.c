/* industrial-analog-out-bricklet
 * Copyright (C) 2015 Olaf Lüke <olaf@tinkerforge.com>
 *
 * analog-out.c: Implementation of Industrial Analog Out Bricklet messages
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

#include "analog-out.h"

#include "bricklib/bricklet/bricklet_communication.h"
#include "bricklib/utility/util_definitions.h"
#include "bricklib/utility/init.h"
#include "bricklib/drivers/adc/adc.h"

#include "brickletlib/bricklet_debug.h"
#include "brickletlib/bricklet_entry.h"

#include "config.h"

#define MIN_DAC 0
#define MAX_DAC 4095

const uint8_t crc8_atm_table[256] = {
	  0,   7,  14,   9,  28,  27,  18,  21,  56,  63,  54,  49,  36,  35,  42,  45,
	112, 119, 126, 121, 108, 107,  98, 101,  72,  79,  70,  65,  84,  83,  90,  93,
	224, 231, 238, 233, 252, 251, 242, 245, 216, 223, 214, 209, 196, 195, 202, 205,
	144, 151, 158, 153, 140, 139, 130, 133, 168, 175, 166, 161, 180, 179, 186, 189,
	199, 192, 201, 206, 219, 220, 213, 210, 255, 248, 241, 246, 227, 228, 237, 234,
	183, 176, 185, 190, 171, 172, 165, 162, 143, 136, 129, 134, 147, 148, 157, 154,
	 39,  32,  41,  46,  59,  60,  53,  50,  31,  24,  17,  22,   3,   4,  13,  10,
	 87,  80,  89,  94,  75,  76,  69,  66, 111, 104,  97, 102, 115, 116, 125, 122,
	137, 142, 135, 128, 149, 146, 155, 156, 177, 182, 191, 184, 173, 170, 163, 164,
	249, 254, 247, 240, 229, 226, 235, 236, 193, 198, 207, 200, 221, 218, 211, 212,
	105, 110, 103,  96, 117, 114, 123, 124,  81,  86,  95,  88,  77,  74,  67,  68,
	 25,  30,  23,  16,   5,   2,  11,  12,  33,  38,  47,  40,  61,  58,  51,  52,
	 78,  73,  64,  71,  82,  85,  92,  91, 118, 113, 120, 127, 106, 109, 100,  99,
	 62,  57,  48,  55,  34,  37,  44,  43,   6,   1,   8,  15,  26,  29,  20,  19,
	174, 169, 160, 167, 178, 181, 188, 187, 150, 145, 152, 159, 138, 141, 132, 131,
	222, 217, 208, 215, 194, 197, 204, 203, 230, 225, 232, 239, 250, 253, 244, 243,
};

void constructor(void) {
	_Static_assert(sizeof(BrickContext) <= BRICKLET_CONTEXT_MAX_SIZE, "BrickContext too big");

	PIN_SDO.type = PIO_INPUT;
	PIN_SDO.attribute = PIO_DEFAULT;
	BA->PIO_Configure(&PIN_SDO, 1);

	PIN_SDI.type = PIO_OUTPUT_0;
	PIN_SDI.attribute = PIO_DEFAULT;
	BA->PIO_Configure(&PIN_SDI, 1);

	PIN_CLK.type = PIO_OUTPUT_1;
	PIN_CLK.attribute = PIO_DEFAULT;
	BA->PIO_Configure(&PIN_CLK, 1);

	PIN_LAT.type = PIO_OUTPUT_1;
	PIN_LAT.attribute = PIO_DEFAULT;
	BA->PIO_Configure(&PIN_LAT, 1);

	BC->voltage = 0;
	BC->current = 0;
	BC->voltage_range = RANGE_VOLTAGE_0_TO_10;
	BC->current_range = RANGE_CURRENT_4_TO_20;

	update_dac();
}

void destructor(void) {
}

void invocation(const ComType com, const uint8_t *data) {
	switch(((StandardMessage*)data)->header.fid) {
		case FID_SET_VOLTAGE: {
			set_voltage(com, (SetVoltage*)data);
			break;
		}

		case FID_GET_VOLTAGE: {
			get_voltage(com, (GetVoltage*)data);
			break;
		}

		case FID_SET_CURRENT: {
			set_current(com, (SetCurrent*)data);
			break;
		}

		case FID_GET_CURRENT: {
			get_current(com, (GetCurrent*)data);
			break;
		}

		case FID_SET_CONFIGURATION: {
			set_configuration(com, (SetConfiguration*)data);
			break;
		}

		case FID_GET_CONFIGURATION: {
			get_configuration(com, (GetConfiguration*)data);
			break;
		}

		default: {
			BA->com_return_error(data, sizeof(MessageHeader), MESSAGE_ERROR_CODE_NOT_SUPPORTED, com);
			break;
		}
	}
}

void tick(const uint8_t tick_type) {
	if(tick_type & TICK_TASK_TYPE_CALCULATION) {

	}
}

void update_voltage_by_value(void) {
	switch(BC->voltage_range) {
		case RANGE_VOLTAGE_0_TO_5: {
			BC->voltage = SCALE(BC->value, MIN_DAC, MAX_DAC, 0, 5000);
			break;
		}

		case RANGE_VOLTAGE_0_TO_10: {
			BC->voltage = SCALE(BC->value, MIN_DAC, MAX_DAC, 0, 10000);
			break;
		}
	}
}

void update_current_by_value(void) {
	switch(BC->current_range) {
		case RANGE_CURRENT_4_TO_20: {
			BC->current = SCALE(BC->value, MIN_DAC, MAX_DAC, 4000, 20000);
			break;
		}

		case RANGE_CURRENT_0_TO_20: {
			BC->current = SCALE(BC->value, MIN_DAC, MAX_DAC, 0, 20000);
			break;
		}

		case RANGE_CURRENT_0_TO_24: {
			BC->current = SCALE(BC->value, MIN_DAC, MAX_DAC, 0, 24000);
			break;
		}
	}
}

void update_value_by_voltage(uint16_t voltage) {
	switch(BC->voltage_range) {
		case RANGE_VOLTAGE_0_TO_5: {
			BC->voltage = BETWEEN(0, voltage, 5000);
			BC->value = SCALE(BC->voltage, 0, 5000, MIN_DAC, MAX_DAC);
			break;
		}

		case RANGE_VOLTAGE_0_TO_10: {
			BC->voltage = BETWEEN(0, voltage, 5000);
			BC->value = SCALE(BC->voltage, 0, 10000, MIN_DAC, MAX_DAC);
			break;
		}
	}

	update_current_by_value();
}

void update_value_by_current(uint16_t current) {
	switch(BC->current_range) {
		case RANGE_CURRENT_4_TO_20: {
			BC->current = BETWEEN(4000, current, 20000);
			BC->value = SCALE(BC->current, 4000, 20000, MIN_DAC, MAX_DAC);
			break;
		}

		case RANGE_CURRENT_0_TO_20: {
			BC->current = BETWEEN(0, current, 20000);
			BC->value = SCALE(BC->current, 0, 20000, MIN_DAC, MAX_DAC);
			break;
		}

		case RANGE_CURRENT_0_TO_24: {
			BC->current = BETWEEN(0, current, 24000);
			BC->value = SCALE(BC->current, 0, 24000, MIN_DAC, MAX_DAC);
			break;
		}
	}

	update_voltage_by_value();
}

void set_voltage(const ComType com, const SetVoltage *data) {
	update_value_by_voltage(data->voltage);
	update_dac();

	logbli("set_voltage: %d (vol) -> %d (val)\n\r", BC->voltage, BC->value);

	BA->com_return_setter(com, data);
}

void get_voltage(const ComType com, const GetVoltage *data) {
	GetVoltageReturn gvr;
	gvr.header        = data->header;
	gvr.header.length = sizeof(GetVoltageReturn);
	gvr.voltage       = BC->voltage;

	BA->send_blocking_with_timeout(&gvr, sizeof(GetVoltageReturn), com);
	logbli("get_voltage: %d\n\r", gvr.voltage);
}

void set_current(const ComType com, const SetCurrent *data) {
	update_value_by_current(data->current);
	update_dac();

	logbli("set_current: %d (cur) -> %d (val)\n\r", BC->current, BC->value);
	BA->com_return_setter(com, data);
}

void get_current(const ComType com, const GetCurrent *data) {
	GetCurrentReturn gcr;
	gcr.header        = data->header;
	gcr.header.length = sizeof(GetCurrentReturn);
	gcr.current       = BC->current;

	BA->send_blocking_with_timeout(&gcr, sizeof(GetCurrentReturn), com);
	logbli("get_current: %d\n\r", gcr.current);
}

void set_configuration(const ComType com, const SetConfiguration *data) {
	if((data->voltage_range > RANGE_VOLTAGE_0_TO_10) || (data->current_range > RANGE_CURRENT_0_TO_24)) {
		BA->com_return_error(data, sizeof(MessageHeader), MESSAGE_ERROR_CODE_INVALID_PARAMETER, com);
		return;
	}

	BC->voltage_range = data->voltage_range;
	BC->current_range = data->current_range;

	update_configuration();
	update_voltage_by_value();
	update_current_by_value();

	logbli("set_configuration: %d (cur range), %d (vol range)\n\r", data->current_range, data->voltage_range);
	BA->com_return_setter(com, data);
}

void get_configuration(const ComType com, const GetConfiguration *data) {
	GetConfigurationReturn gcr;
	gcr.header        = data->header;
	gcr.header.length = sizeof(GetConfigurationReturn);
	gcr.current_range = BC->current_range;
	gcr.voltage_range = BC->voltage_range;

	BA->send_blocking_with_timeout(&gcr, sizeof(GetConfigurationReturn), com);
	logbli("get_configuration: %d (cur range), %d (vol range)\n\r", gcr.current_range, gcr.voltage_range);
}

void update_configuration(void) {
	// TODO
}

void update_dac(void) {
	dac7760_write_register(REG_WRITE_DAC, BC->value);
}

void dac7760_write_register(const uint8_t reg, const uint16_t data) {
	PIN_LAT.pio->PIO_CODR = PIN_LAT.mask; // latch low

	uint8_t write_data[4] = {reg, data >> 8, data & 0xFF};
	write_data[3] = crc8_atm(write_data, 3);

	for(uint8_t i = 0; i < 4; i++) {
		spibb_transceive_byte(write_data[i]);
	}

	PIN_LAT.pio->PIO_CODR = PIN_LAT.mask; // latch high
}

bool dac7760_read_register(const uint8_t reg, uint16_t *data) {
	PIN_LAT.pio->PIO_CODR = PIN_LAT.mask; // latch low

	uint8_t read_data[3];
	spibb_transceive_byte(REG_READ);
	spibb_transceive_byte(REG_NOP);
	spibb_transceive_byte(reg);

	PIN_LAT.pio->PIO_CODR = PIN_LAT.mask; // latch high
	SLEEP_NS(100); // Minimum of 40ns according to datasheet
	PIN_LAT.pio->PIO_CODR = PIN_LAT.mask; // latch low

	for(uint8_t i = 0; i < 3; i++) {
		read_data[i] = spibb_transceive_byte(REG_NOP);
	}

	PIN_LAT.pio->PIO_CODR = PIN_LAT.mask; // latch high

	*data = read_data[0] << 8;
	*data |= read_data[1];

	uint8_t crc = crc8_atm(read_data, 3);
	logbli("crc (read, calc): %d %d\n\r", read_data[2], crc);

	return crc == read_data[2];
}

uint8_t spibb_transceive_byte(const uint8_t value) {
	uint8_t recv = 0;

	for(int8_t i = 7; i >= 0; i--) {
		PIN_CLK.pio->PIO_CODR = PIN_CLK.mask;
		if((value >> i) & 1) {
			PIN_SDI.pio->PIO_SODR = PIN_SDI.mask;
		} else {
			PIN_SDI.pio->PIO_CODR = PIN_SDI.mask;
		}

		SLEEP_US(1);
		if(PIN_SDO.pio->PIO_PDSR & PIN_SDO.mask) {
			recv |= (1 << i);
		}

		PIN_CLK.pio->PIO_SODR = PIN_CLK.mask;
		SLEEP_US(1);
	}

	return recv;
}

uint8_t crc8_atm(uint8_t *buf, uint8_t len) {
	uint8_t sum = 0;

	for(uint8_t i = 0; i < len; i++) {
		sum = buf[i] ^ crc8_atm_table[sum];
	}

	return ~sum;
}
