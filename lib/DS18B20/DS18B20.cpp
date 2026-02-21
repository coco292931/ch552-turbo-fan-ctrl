/**
 * @file DS18B20.cpp
 * @brief DS18B20温度传感器驱动实现
 */

#include "DS18B20.h"

DS18B20::DS18B20(uint8_t data_pin) {
    pin = data_pin;
}

void DS18B20::begin() {
    pinMode(pin, OUTPUT);
    digitalWrite(pin, HIGH);
}

// ==================== OneWire底层操作 ====================

void DS18B20::pinOutput() {
    pinMode(pin, OUTPUT);
}

void DS18B20::pinInput() {
    pinMode(pin, INPUT);
}

void DS18B20::pinHigh() {
    digitalWrite(pin, HIGH);
}

void DS18B20::pinLow() {
    digitalWrite(pin, LOW);
}

uint8_t DS18B20::pinRead() {
    return digitalRead(pin);
}

void DS18B20::delayUs(uint16_t us) {
    delayMicroseconds(us);
}

uint8_t DS18B20::reset() {
    uint8_t response;
    
    // 主机发送复位脉冲
    pinOutput();
    pinLow();
    delayUs(480);  // 拉低至少480us
    
    // 释放总线
    pinHigh();
    pinInput();
    delayUs(70);   // 等待60-240us
    
    // 读取DS18B20应答
    response = pinRead();
    delayUs(410);  // 完成复位时序
    
    return response;  // 0表示有设备应答
}

void DS18B20::writeByte(uint8_t byte) {
    uint8_t i;
    
    for (i = 0; i < 8; i++) {
        pinOutput();
        pinLow();
        delayUs(2);
        
        // 写0: 拉低60-120us
        // 写1: 拉低后立即释放，保持高电平
        if (byte & 0x01) {
            pinHigh();
        } else {
            pinLow();
        }
        
        delayUs(60);
        pinHigh();
        delayUs(2);
        
        byte >>= 1;
    }
}

uint8_t DS18B20::readByte() {
    uint8_t i, byte = 0;
    
    for (i = 0; i < 8; i++) {
        pinOutput();
        pinLow();
        delayUs(2);
        
        // 释放总线，准备读取
        pinHigh();
        pinInput();
        delayUs(12);
        
        // 读取数据位
        if (pinRead()) {
            byte |= (1 << i);
        }
        
        delayUs(50);
    }
    
    return byte;
}

uint8_t DS18B20::readScratchpad(uint8_t *data) {
    uint8_t i;
    
    // 复位
    if (reset()) {
        return 1;
    }
    
    // 跳过ROM
    writeByte(DS18B20_CMD_SKIP_ROM);
    
    // 读取暂存器
    writeByte(DS18B20_CMD_READ_SCRATCHPAD);
    
    // 读取9字节数据
    for (i = 0; i < 9; i++) {
        data[i] = readByte();
    }
    
    return 0;
}

// ==================== 高层API ====================

float DS18B20::readTemperature() {
    uint8_t temp_low, temp_high;
    int16_t temp_raw;
    float temperature;
    
    // 复位
    if (reset()) {
        return -999.0;
    }
    
    // 跳过ROM（单个设备）
    writeByte(DS18B20_CMD_SKIP_ROM);
    
    // 启动温度转换
    writeByte(DS18B20_CMD_CONVERT);
    
    // 等待转换完成（12位精度需要750ms）
    delay(750);
    
    // 复位
    if (reset()) {
        return -999.0;
    }
    
    // 跳过ROM
    writeByte(DS18B20_CMD_SKIP_ROM);
    
    // 读取暂存器
    writeByte(DS18B20_CMD_READ_SCRATCHPAD);
    
    // 读取温度数据（低字节、高字节）
    temp_low = readByte();
    temp_high = readByte();
    
    // 组合温度数据
    temp_raw = (temp_high << 8) | temp_low;
    
    // 转换为实际温度（分辨率0.0625°C）
    temperature = temp_raw * 0.0625;
    
    return temperature;
}

float DS18B20::readTemperatureFast() {
    uint8_t temp_low, temp_high, config;
    uint8_t scratchpad[9];
    int16_t temp_raw;
    float temperature;
    uint32_t wait_time;
    
    // 读取当前配置
    if (readScratchpad(scratchpad)) {
        return -999.0;
    }
    config = scratchpad[4];
    
    // 根据分辨率计算等待时间
    switch (config) {
        case DS18B20_RESOLUTION_9BIT:
            wait_time = 94;    // 93.75ms
            break;
        case DS18B20_RESOLUTION_10BIT:
            wait_time = 188;   // 187.5ms
            break;
        case DS18B20_RESOLUTION_11BIT:
            wait_time = 375;   // 375ms
            break;
        case DS18B20_RESOLUTION_12BIT:
        default:
            wait_time = 750;   // 750ms
            break;
    }
    
    // 复位
    if (reset()) {
        return -999.0;
    }
    
    // 跳过ROM
    writeByte(DS18B20_CMD_SKIP_ROM);
    
    // 启动温度转换
    writeByte(DS18B20_CMD_CONVERT);
    
    // 根据分辨率等待转换完成
    delay(wait_time);
    
    // 复位
    if (reset()) {
        return -999.0;
    }
    
    // 跳过ROM
    writeByte(DS18B20_CMD_SKIP_ROM);
    
    // 读取暂存器
    writeByte(DS18B20_CMD_READ_SCRATCHPAD);
    
    // 读取温度数据
    temp_low = readByte();
    temp_high = readByte();
    
    // 组合温度数据
    temp_raw = (temp_high << 8) | temp_low;
    
    // 转换为实际温度
    temperature = temp_raw * 0.0625;
    
    return temperature;
}

void DS18B20::setResolution(ds18b20_resolution_t resolution) {
    uint8_t scratchpad[9];
    
    // 读取当前暂存器
    if (readScratchpad(scratchpad)) {
        return;
    }
    
    // 复位
    reset();
    
    // 跳过ROM
    writeByte(DS18B20_CMD_SKIP_ROM);
    
    // 写入暂存器（TH, TL, Config）
    writeByte(DS18B20_CMD_WRITE_SCRATCHPAD);
    writeByte(scratchpad[2]);  // TH (报警上限)
    writeByte(scratchpad[3]);  // TL (报警下限)
    writeByte(resolution);     // 配置寄存器（分辨率）
    
    // 复位
    reset();
    
    // 跳过ROM
    writeByte(DS18B20_CMD_SKIP_ROM);
    
    // 将暂存器复制到EEPROM（掉电保存）
    writeByte(DS18B20_CMD_COPY_SCRATCHPAD);
    delay(10);  // 等待写入完成（最多10ms）
}

void DS18B20::setAlarmTemperature(int8_t temp_high, int8_t temp_low) {
    uint8_t scratchpad[9];
    
    // 读取当前暂存器
    if (readScratchpad(scratchpad)) {
        return;
    }
    
    // 复位
    reset();
    
    // 跳过ROM
    writeByte(DS18B20_CMD_SKIP_ROM);
    
    // 写入暂存器（TH, TL, Config）
    writeByte(DS18B20_CMD_WRITE_SCRATCHPAD);
    writeByte((uint8_t)temp_high);  // TH (报警上限)
    writeByte((uint8_t)temp_low);   // TL (报警下限)
    writeByte(scratchpad[4]);       // 配置寄存器（保持原分辨率）
    
    // 复位
    reset();
    
    // 跳过ROM
    writeByte(DS18B20_CMD_SKIP_ROM);
    
    // 将暂存器复制到EEPROM（掉电保存）
    writeByte(DS18B20_CMD_COPY_SCRATCHPAD);
    delay(10);  // 等待写入完成（最多10ms）
}
