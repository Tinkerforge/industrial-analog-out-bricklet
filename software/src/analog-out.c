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

	BC->counter = 0;
	BC->input_voltage_sum = 0;

	update();
}

void destructor(void) {
}

void invocation(const ComType com, const uint8_t *data) {
	switch(((StandardMessage*)data)->header.fid) {
		case FID_SET_OUTPUT_VOLTAGE: {
			set_output_voltage(com, (SetOutputVoltage*)data);
			break;
		}

		case FID_GET_OUTPUT_VOLTAGE: {
			get_output_voltage(com, (GetOutputVoltage*)data);
			break;
		}

		case FID_GET_INPUT_VOLTAGE: {
			get_input_voltage(com, (GetInputVoltage*)data);
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

void set_output_voltage(const ComType com, const SetOutputVoltage *data) {
	BC->last_output_voltage = data->voltage;
	update();

	logbli("set_output_voltage: %d\n\r", data->voltage);

	BA->com_return_setter(com, data);
}

void get_output_voltage(const ComType com, const GetOutputVoltage *data) {
	GetOutputVoltageReturn govr;
	govr.header        = data->header;
	govr.header.length = sizeof(GetOutputVoltageReturn);
	govr.voltage       = BC->last_output_voltage;

	BA->send_blocking_with_timeout(&govr, sizeof(GetOutputVoltageReturn), com);
	logbli("get_output_voltage: %d\n\r", govr.voltage);
}

void get_input_voltage(const ComType com, const GetInputVoltage *data) {
	GetInputVoltageReturn givr;
	givr.header        = data->header;
	givr.header.length = sizeof(GetInputVoltageReturn);
	// voltage = input*3300*(68+22)/(4095*22*256) = input*75/5824
	givr.voltage       = BC->last_input_voltage_sum*75/5824;

	BA->send_blocking_with_timeout(&givr, sizeof(GetInputVoltageReturn), com);
	logbli("get_input_voltage: %d\n\r", givr.voltage);
}

void update(void) {
	dac7760_write_register(REG_WRITE_DAC, BC->last_output_voltage);
}

void dac7760_write_register(const uint8_t reg, const uint16_t data) {
	uint8_t write_data[4] = {reg, data >> 8, data & 0xFF};
	write_data[3] = crc8_atm(write_data, 3);

	for(uint8_t i = 0; i < 4; i++) {
		spibb_transceive_byte(write_data[i]);
	}
}

bool dac7760_read_register(const uint8_t reg, uint16_t *data) {
	uint8_t read_data[3];
	spibb_transceive_byte(REG_READ);
	spibb_transceive_byte(REG_NOP);
	spibb_transceive_byte(reg);

	for(uint8_t i = 0; i < 3; i++) {
		read_data[i] = spibb_transceive_byte(REG_NOP);
	}

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
