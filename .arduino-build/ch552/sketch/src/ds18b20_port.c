#line 1 "C:\\Users\\tonyp\\Downloads\\ch552-turbo-fan-ctrl\\src\\ds18b20_port.c"
#include "config.h"

#if FEATURE_TEMP_CONTROL && !FEATURE_THERMISTOR_ADC

#include "../lib/DS18B20/DS18B20.h"

static void ow_drive_low(DS18B20* dev) {
	digitalWrite(dev->pin, LOW);
}

static void ow_release_bus(DS18B20* dev) {
	digitalWrite(dev->pin, HIGH);
}

static uint8_t ow_read_bus(DS18B20* dev) {
	return digitalRead(dev->pin);
}

static uint8_t ow_reset(DS18B20* dev) {
	uint8_t present;

#if defined(ARDUINO) && !defined(__INTELLISENSE__)
	EA = 0;
#endif
	ow_drive_low(dev);
	delayMicroseconds(480);

	ow_release_bus(dev);
	delayMicroseconds(70);

	present = (ow_read_bus(dev) == 0) ? 1 : 0;
#if defined(ARDUINO) && !defined(__INTELLISENSE__)
	EA = 1;
#endif
	delayMicroseconds(410);

	return present;
}

static void ow_write_bit(DS18B20* dev, uint8_t bitv) {
#if defined(ARDUINO) && !defined(__INTELLISENSE__)
	EA = 0;
#endif
	ow_drive_low(dev);
	delayMicroseconds(2);
	if (bitv) {
		ow_release_bus(dev);
	} else {
		ow_drive_low(dev);
	}
	delayMicroseconds(60);
	ow_release_bus(dev);
#if defined(ARDUINO) && !defined(__INTELLISENSE__)
	EA = 1;
#endif
	delayMicroseconds(2);
}

static uint8_t ow_read_bit(DS18B20* dev) {
	uint8_t bitv;

#if defined(ARDUINO) && !defined(__INTELLISENSE__)
	EA = 0;
#endif
	ow_drive_low(dev);
	delayMicroseconds(2);
	ow_release_bus(dev);
	delayMicroseconds(12);

	bitv = ow_read_bus(dev) ? 1 : 0;
#if defined(ARDUINO) && !defined(__INTELLISENSE__)
	EA = 1;
#endif
	delayMicroseconds(50);
	return bitv;
}

static void ow_write_byte(DS18B20* dev, uint8_t v) {
	uint8_t i;
	for (i = 0; i < 8; i++) {
		ow_write_bit(dev, v & 0x01);
		v >>= 1;
	}
}

static uint8_t ow_read_byte(DS18B20* dev) {
	uint8_t i;
	uint8_t v = 0;
	for (i = 0; i < 8; i++) {
		if (ow_read_bit(dev)) {
			v |= (uint8_t)(1u << i);
		}
	}
	return v;
}

void DS18B20_init(DS18B20* dev, uint8_t data_pin) {
	dev->pin = data_pin;
}

void DS18B20_begin(DS18B20* dev) {
	pinMode(dev->pin, OUTPUT_OD);
	ow_release_bus(dev);
}

float DS18B20_readTemperatureFast(DS18B20* dev) {
	int16_t raw;
	uint8_t temp_low;
	uint8_t temp_high;

	if (!ow_reset(dev)) {
		return -999.0f;
	}

	ow_write_byte(dev, DS18B20_CMD_SKIP_ROM);
	ow_write_byte(dev, DS18B20_CMD_CONVERT);
	delay(750);

	if (!ow_reset(dev)) {
		return -999.0f;
	}

	ow_write_byte(dev, DS18B20_CMD_SKIP_ROM);
	ow_write_byte(dev, DS18B20_CMD_READ_SCRATCHPAD);
	temp_low = ow_read_byte(dev);
	temp_high = ow_read_byte(dev);
	raw = (int16_t)(((uint16_t)temp_high << 8) | temp_low);

	if (raw == (int16_t)0xFFFF || raw == (int16_t)0x0550 || raw == (int16_t)0x0000) {
		return -999.0f;
	}

	return (float)raw * 0.0625f;
}


#endif
