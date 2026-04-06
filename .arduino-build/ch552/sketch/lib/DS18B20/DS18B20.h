#line 1 "C:\\Users\\tonyp\\Downloads\\ch552-turbo-fan-ctrl\\lib\\DS18B20\\DS18B20.h"
/**
 * @file DS18B20.h
 * @brief DS18B20温度传感器驱动 - Arduino风格封装
 * @note 移植自原始C驱动，适配CH552G + Arduino环境
 */

#ifndef DS18B20_H
#define DS18B20_H

#include "../../src/arduino_compat.h"

// DS18B20命令
#define DS18B20_CMD_CONVERT         0x44  // 启动温度转换
#define DS18B20_CMD_READ_SCRATCHPAD 0xBE  // 读取暂存器
#define DS18B20_CMD_WRITE_SCRATCHPAD 0x4E // 写入暂存器
#define DS18B20_CMD_COPY_SCRATCHPAD 0x48  // 复制暂存器
#define DS18B20_CMD_RECALL_E2       0xB8  // 从EEPROM恢复
#define DS18B20_CMD_READ_POWER      0xB4  // 读取供电方式
#define DS18B20_CMD_SKIP_ROM        0xCC  // 跳过ROM
#define DS18B20_CMD_SEARCH_ROM      0xF0  // 搜索ROM
#define DS18B20_CMD_READ_ROM        0x33  // 读取ROM
#define DS18B20_CMD_MATCH_ROM       0x55  // 匹配ROM

// DS18B20分辨率配置
typedef enum {
    DS18B20_RESOLUTION_9BIT  = 0x1F,  // 9位  (93.75ms转换时间)
    DS18B20_RESOLUTION_10BIT = 0x3F,  // 10位 (187.5ms转换时间)
    DS18B20_RESOLUTION_11BIT = 0x5F,  // 11位 (375ms转换时间)
    DS18B20_RESOLUTION_12BIT = 0x7F   // 12位 (750ms转换时间，默认)
} ds18b20_resolution_t;

typedef struct {
    uint8_t pin;
} DS18B20;

void DS18B20_init(DS18B20* dev, uint8_t data_pin);
void DS18B20_begin(DS18B20* dev);
float DS18B20_readTemperature(DS18B20* dev);
float DS18B20_readTemperatureFast(DS18B20* dev);
void DS18B20_setResolution(DS18B20* dev, ds18b20_resolution_t resolution);
void DS18B20_setAlarmTemperature(DS18B20* dev, int8_t temp_high, int8_t temp_low);

#endif // DS18B20_H
