#line 1 "C:\\Users\\tonyp\\Downloads\\ch552-turbo-fan-ctrl\\lib\\DS18B20\\DS18B20.c"
/**
 * @file DS18B20.cpp
 * @brief DS18B20温度传感器驱动实现
 */

#include "DS18B20.h"

static void ds18b20_pinOutput(DS18B20* dev) {
    pinMode(dev->pin, OUTPUT);
}

static void ds18b20_pinInput(DS18B20* dev) {
    pinMode(dev->pin, INPUT);
}

static void ds18b20_pinHigh(DS18B20* dev) {
    digitalWrite(dev->pin, HIGH);
}

static void ds18b20_pinLow(DS18B20* dev) {
    digitalWrite(dev->pin, LOW);
}

static uint8_t ds18b20_pinRead(DS18B20* dev) {
    return digitalRead(dev->pin);
}

static void ds18b20_delayUs(uint16_t us) {
    delayMicroseconds(us);
}

static uint8_t ds18b20_reset(DS18B20* dev) {
    uint8_t response;

    ds18b20_pinOutput(dev);
    ds18b20_pinLow(dev);
    ds18b20_delayUs(480);

    ds18b20_pinHigh(dev);
    ds18b20_pinInput(dev);
    ds18b20_delayUs(70);

    response = ds18b20_pinRead(dev);
    ds18b20_delayUs(410);

    return response;
}

static void ds18b20_writeByte(DS18B20* dev, uint8_t byte) {
    uint8_t i;

    for (i = 0; i < 8; i++) {
        ds18b20_pinOutput(dev);
        ds18b20_pinLow(dev);
        ds18b20_delayUs(2);

        if (byte & 0x01) {
            ds18b20_pinHigh(dev);
        } else {
            ds18b20_pinLow(dev);
        }

        ds18b20_delayUs(60);
        ds18b20_pinHigh(dev);
        ds18b20_delayUs(2);

        byte >>= 1;
    }
}

static uint8_t ds18b20_readByte(DS18B20* dev) {
    uint8_t i, byte = 0;

    for (i = 0; i < 8; i++) {
        ds18b20_pinOutput(dev);
        ds18b20_pinLow(dev);
        ds18b20_delayUs(2);

        ds18b20_pinHigh(dev);
        ds18b20_pinInput(dev);
        ds18b20_delayUs(12);

        if (ds18b20_pinRead(dev)) {
            byte |= (1 << i);
        }

        ds18b20_delayUs(50);
    }

    return byte;
}

static uint8_t ds18b20_readScratchpad(DS18B20* dev, uint8_t *data) {
    uint8_t i;

    if (ds18b20_reset(dev)) {
        return 1;
    }

    ds18b20_writeByte(dev, DS18B20_CMD_SKIP_ROM);
    ds18b20_writeByte(dev, DS18B20_CMD_READ_SCRATCHPAD);

    for (i = 0; i < 9; i++) {
        data[i] = ds18b20_readByte(dev);
    }

    return 0;
}

void DS18B20_init(DS18B20* dev, uint8_t data_pin) {
    dev->pin = data_pin;
}

void DS18B20_begin(DS18B20* dev) {
    pinMode(dev->pin, OUTPUT);
    digitalWrite(dev->pin, HIGH);
}

float DS18B20_readTemperature(DS18B20* dev) {
    uint8_t temp_low, temp_high;
    int16_t temp_raw;
    float temperature;

    if (ds18b20_reset(dev)) {
        return -999.0;
    }

    ds18b20_writeByte(dev, DS18B20_CMD_SKIP_ROM);
    ds18b20_writeByte(dev, DS18B20_CMD_CONVERT);

    delay(750);

    if (ds18b20_reset(dev)) {
        return -999.0;
    }

    ds18b20_writeByte(dev, DS18B20_CMD_SKIP_ROM);
    ds18b20_writeByte(dev, DS18B20_CMD_READ_SCRATCHPAD);

    temp_low = ds18b20_readByte(dev);
    temp_high = ds18b20_readByte(dev);

    temp_raw = (temp_high << 8) | temp_low;

    temperature = temp_raw * 0.0625;

    return temperature;
}

float DS18B20_readTemperatureFast(DS18B20* dev) {
    uint8_t temp_low, temp_high, config;
    uint8_t scratchpad[9];
    int16_t temp_raw;
    float temperature;
    uint32_t wait_time;

    if (ds18b20_readScratchpad(dev, scratchpad)) {
        return -999.0;
    }
    config = scratchpad[4];

    switch (config) {
        case DS18B20_RESOLUTION_9BIT:
            wait_time = 94;
            break;
        case DS18B20_RESOLUTION_10BIT:
            wait_time = 188;
            break;
        case DS18B20_RESOLUTION_11BIT:
            wait_time = 375;
            break;
        case DS18B20_RESOLUTION_12BIT:
        default:
            wait_time = 750;
            break;
    }

    if (ds18b20_reset(dev)) {
        return -999.0;
    }

    ds18b20_writeByte(dev, DS18B20_CMD_SKIP_ROM);
    ds18b20_writeByte(dev, DS18B20_CMD_CONVERT);

    delay(wait_time);

    if (ds18b20_reset(dev)) {
        return -999.0;
    }

    ds18b20_writeByte(dev, DS18B20_CMD_SKIP_ROM);
    ds18b20_writeByte(dev, DS18B20_CMD_READ_SCRATCHPAD);

    temp_low = ds18b20_readByte(dev);
    temp_high = ds18b20_readByte(dev);

    temp_raw = (temp_high << 8) | temp_low;

    temperature = temp_raw * 0.0625;

    return temperature;
}

void DS18B20_setResolution(DS18B20* dev, ds18b20_resolution_t resolution) {
    uint8_t scratchpad[9];

    if (ds18b20_readScratchpad(dev, scratchpad)) {
        return;
    }

    ds18b20_reset(dev);
    ds18b20_writeByte(dev, DS18B20_CMD_SKIP_ROM);
    ds18b20_writeByte(dev, DS18B20_CMD_WRITE_SCRATCHPAD);
    ds18b20_writeByte(dev, scratchpad[2]);
    ds18b20_writeByte(dev, scratchpad[3]);
    ds18b20_writeByte(dev, resolution);

    ds18b20_reset(dev);
    ds18b20_writeByte(dev, DS18B20_CMD_SKIP_ROM);
    ds18b20_writeByte(dev, DS18B20_CMD_COPY_SCRATCHPAD);
    delay(10);
}

void DS18B20_setAlarmTemperature(DS18B20* dev, int8_t temp_high, int8_t temp_low) {
    uint8_t scratchpad[9];

    if (ds18b20_readScratchpad(dev, scratchpad)) {
        return;
    }

    ds18b20_reset(dev);
    ds18b20_writeByte(dev, DS18B20_CMD_SKIP_ROM);
    ds18b20_writeByte(dev, DS18B20_CMD_WRITE_SCRATCHPAD);
    ds18b20_writeByte(dev, (uint8_t)temp_high);
    ds18b20_writeByte(dev, (uint8_t)temp_low);
    ds18b20_writeByte(dev, scratchpad[4]);

    ds18b20_reset(dev);
    ds18b20_writeByte(dev, DS18B20_CMD_SKIP_ROM);
    ds18b20_writeByte(dev, DS18B20_CMD_COPY_SCRATCHPAD);
    delay(10);
}
