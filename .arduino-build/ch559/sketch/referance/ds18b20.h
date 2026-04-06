#line 1 "C:\\Users\\tonyp\\Downloads\\ch552-turbo-fan-ctrl\\referance\\ds18b20.h"
#ifndef DS18B20_H
#define DS18B20_H

#include <stdint.h>

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

// 函数声明
void ds18b20_init_pin(void);
uint8_t ds18b20_reset(void);
void ds18b20_write_byte(uint8_t byte);
uint8_t ds18b20_read_byte(void);
void ds18b20_set_resolution(ds18b20_resolution_t resolution);
void ds18b20_set_alarm_temperature(int8_t temp_high, int8_t temp_low);
uint8_t ds18b20_read_scratchpad(uint8_t *data);
float ds18b20_read_temperature(void);
float ds18b20_read_temperature_fast(void);

#endif // DS18B20_H
