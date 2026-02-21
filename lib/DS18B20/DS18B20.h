/**
 * @file DS18B20.h
 * @brief DS18B20温度传感器驱动 - Arduino风格封装
 * @note 移植自原始C驱动，适配CH552G + Arduino环境
 */

#ifndef DS18B20_H
#define DS18B20_H

#include <Arduino.h>

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

/**
 * @class DS18B20
 * @brief DS18B20温度传感器类（Arduino风格）
 */
class DS18B20 {
private:
    uint8_t pin;  // 数据引脚
    
    // OneWire协议底层操作
    void pinOutput();
    void pinInput();
    void pinHigh();
    void pinLow();
    uint8_t pinRead();
    void delayUs(uint16_t us);
    
    // DS18B20复位
    uint8_t reset();
    
    // 读写字节
    void writeByte(uint8_t byte);
    uint8_t readByte();
    
    // 读取暂存器
    uint8_t readScratchpad(uint8_t *data);
    
public:
    /**
     * @brief 构造函数
     * @param data_pin 数据引脚
     */
    DS18B20(uint8_t data_pin);
    
    /**
     * @brief 初始化
     */
    void begin();
    
    /**
     * @brief 读取温度（标准方式，固定等待750ms）
     * @return 温度值(°C)，失败返回-999.0
     */
    float readTemperature();
    
    /**
     * @brief 读取温度（快速方式，根据分辨率自动调整等待时间）
     * @return 温度值(°C)，失败返回-999.0
     */
    float readTemperatureFast();
    
    /**
     * @brief 设置分辨率
     * @param resolution 分辨率配置
     */
    void setResolution(ds18b20_resolution_t resolution);
    
    /**
     * @brief 设置报警温度范围
     * @param temp_high 温度上限
     * @param temp_low 温度下限
     */
    void setAlarmTemperature(int8_t temp_high, int8_t temp_low);
};

#endif // DS18B20_H
