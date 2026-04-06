#line 1 "C:\\Users\\tonyp\\Downloads\\ch552-turbo-fan-ctrl\\referance\\ds18b20.c"
#include "ds18b20.h"

// GPIO配置 - 需要根据实际MCU修改
#define DS18B20_PIN 13

// 延时函数 - 需要根据实际MCU修改
static void delay_us(uint16_t us) {
    // ESP32示例：使用ets_delay_us
    // ets_delay_us(us);
    
    // CH552G需要自己实现微秒级延时
    // 根据主频计算循环次数
    volatile uint16_t i;
    while(us--) {
        i = 3;  // 根据实际主频调整
        while(i--);
    }
}

// GPIO操作宏 - 需要根据实际MCU修改
// ESP32示例：
// #define DS_PIN_OUTPUT() gpio_set_direction(DS18B20_PIN, GPIO_MODE_OUTPUT)
// #define DS_PIN_INPUT()  gpio_set_direction(DS18B20_PIN, GPIO_MODE_INPUT)
// #define DS_PIN_HIGH()   gpio_set_level(DS18B20_PIN, 1)
// #define DS_PIN_LOW()    gpio_set_level(DS18B20_PIN, 0)
// #define DS_PIN_READ()   gpio_get_level(DS18B20_PIN)

// CH552G示例 (假设使用P1.3)：
// #define DS_PIN_OUTPUT() P1_MOD_OC |= (1<<3); P1_DIR_PU |= (1<<3)
// #define DS_PIN_INPUT()  P1_MOD_OC &= ~(1<<3); P1_DIR_PU |= (1<<3)
// #define DS_PIN_HIGH()   P1_3 = 1
// #define DS_PIN_LOW()    P1_3 = 0
// #define DS_PIN_READ()   P1_3

// 通用GPIO操作接口 - 移植时修改这里
static inline void ds_pin_output(void) {
    // 配置为输出模式
    // DS_PIN_OUTPUT();
}

static inline void ds_pin_input(void) {
    // 配置为输入模式
    // DS_PIN_INPUT();
}

static inline void ds_pin_high(void) {
    // 输出高电平
    // DS_PIN_HIGH();
}

static inline void ds_pin_low(void) {
    // 输出低电平
    // DS_PIN_LOW();
}

static inline uint8_t ds_pin_read(void) {
    // 读取引脚电平
    // return DS_PIN_READ();
    return 1;  // 占位符
}

/**
 * @brief 初始化DS18B20引脚
 */
void ds18b20_init_pin(void) {
    ds_pin_output();
    ds_pin_high();
}

/**
 * @brief DS18B20复位
 * @return 0-成功, 1-失败
 */
uint8_t ds18b20_reset(void) {
    uint8_t response;
    
    // 主机发送复位脉冲
    ds_pin_output();
    ds_pin_low();
    delay_us(480);  // 拉低至少480us
    
    // 释放总线
    ds_pin_high();
    ds_pin_input();
    delay_us(70);   // 等待60-240us
    
    // 读取DS18B20应答
    response = ds_pin_read();
    delay_us(410);  // 完成复位时序
    
    return response;  // 0表示有设备应答
}

/**
 * @brief 写一个字节到DS18B20
 * @param byte 要写入的字节
 */
void ds18b20_write_byte(uint8_t byte) {
    uint8_t i;
    
    for (i = 0; i < 8; i++) {
        ds_pin_output();
        ds_pin_low();
        delay_us(2);
        
        // 写0: 拉低60-120us
        // 写1: 拉低后立即释放，保持高电平
        if (byte & 0x01) {
            ds_pin_high();
        } else {
            ds_pin_low();
        }
        
        delay_us(60);
        ds_pin_high();
        delay_us(2);
        
        byte >>= 1;
    }
}

/**
 * @brief 从DS18B20读取一个字节
 * @return 读取的字节
 */
uint8_t ds18b20_read_byte(void) {
    uint8_t i, byte = 0;
    
    for (i = 0; i < 8; i++) {
        ds_pin_output();
        ds_pin_low();
        delay_us(2);
        
        // 释放总线，准备读取
        ds_pin_high();
        ds_pin_input();
        delay_us(12);
        
        // 读取数据位
        if (ds_pin_read()) {
            byte |= (1 << i);
        }
        
        delay_us(50);
    }
    
    return byte;
}

/**
 * @brief 读取DS18B20温度
 * @return 温度值（摄氏度）
 */
float ds18b20_read_temperature(void) {
    uint8_t temp_low, temp_high;
    int16_t temp_raw;
    float temperature;
    
    // 复位
    if (ds18b20_reset()) {
        return -999.0;  // 错误
    }
    
    // 跳过ROM（单个设备）
    ds18b20_write_byte(DS18B20_CMD_SKIP_ROM);
    
    // 启动温度转换
    ds18b20_write_byte(DS18B20_CMD_CONVERT);
    
    // 等待转换完成（12位精度需要750ms）
    delay_us(750000);  // 750ms
    
    // 复位
    if (ds18b20_reset()) {
        return -999.0;
    }
    
    // 跳过ROM
    ds18b20_write_byte(DS18B20_CMD_SKIP_ROM);
    
    // 读取暂存器
    ds18b20_write_byte(DS18B20_CMD_READ_SCRATCHPAD);
    
    // 读取温度数据（低字节、高字节）
    temp_low = ds18b20_read_byte();
    temp_high = ds18b20_read_byte();
    
    // 组合温度数据
    temp_raw = (temp_high << 8) | temp_low;
    
    // 转换为实际温度（分辨率0.0625°C）
    temperature = temp_raw * 0.0625;
    
    return temperature;
}

/**
 * @brief 读取DS18B20暂存器（9字节）
 * @param data 存储读取数据的缓冲区（至少9字节）
 * @return 0-成功, 1-失败
 */
uint8_t ds18b20_read_scratchpad(uint8_t *data) {
    uint8_t i;
    
    // 复位
    if (ds18b20_reset()) {
        return 1;
    }
    
    // 跳过ROM
    ds18b20_write_byte(DS18B20_CMD_SKIP_ROM);
    
    // 读取暂存器
    ds18b20_write_byte(DS18B20_CMD_READ_SCRATCHPAD);
    
    // 读取9字节数据
    for (i = 0; i < 9; i++) {
        data[i] = ds18b20_read_byte();
    }
    
    return 0;
}

/**
 * @brief 设置DS18B20分辨率
 * @param resolution 分辨率配置（9-12位）
 */
void ds18b20_set_resolution(ds18b20_resolution_t resolution) {
    uint8_t scratchpad[9];
    
    // 读取当前暂存器
    if (ds18b20_read_scratchpad(scratchpad)) {
        return;
    }
    
    // 复位
    ds18b20_reset();
    
    // 跳过ROM
    ds18b20_write_byte(DS18B20_CMD_SKIP_ROM);
    
    // 写入暂存器（TH, TL, Config）
    ds18b20_write_byte(DS18B20_CMD_WRITE_SCRATCHPAD);
    ds18b20_write_byte(scratchpad[2]);  // TH (报警上限)
    ds18b20_write_byte(scratchpad[3]);  // TL (报警下限)
    ds18b20_write_byte(resolution);     // 配置寄存器（分辨率）
    
    // 复位
    ds18b20_reset();
    
    // 跳过ROM
    ds18b20_write_byte(DS18B20_CMD_SKIP_ROM);
    
    // 将暂存器复制到EEPROM（掉电保存）
    ds18b20_write_byte(DS18B20_CMD_COPY_SCRATCHPAD);
    delay_us(10000);  // 等待写入完成（最多10ms）
}

/**
 * @brief 设置DS18B20报警温度范围
 * @param temp_high 温度上限（-55到125°C）
 * @param temp_low  温度下限（-55到125°C）
 */
void ds18b20_set_alarm_temperature(int8_t temp_high, int8_t temp_low) {
    uint8_t scratchpad[9];
    
    // 读取当前暂存器
    if (ds18b20_read_scratchpad(scratchpad)) {
        return;
    }
    
    // 复位
    ds18b20_reset();
    
    // 跳过ROM
    ds18b20_write_byte(DS18B20_CMD_SKIP_ROM);
    
    // 写入暂存器（TH, TL, Config）
    ds18b20_write_byte(DS18B20_CMD_WRITE_SCRATCHPAD);
    ds18b20_write_byte((uint8_t)temp_high);  // TH (报警上限)
    ds18b20_write_byte((uint8_t)temp_low);   // TL (报警下限)
    ds18b20_write_byte(scratchpad[4]);       // 配置寄存器（保持原分辨率）
    
    // 复位
    ds18b20_reset();
    
    // 跳过ROM
    ds18b20_write_byte(DS18B20_CMD_SKIP_ROM);
    
    // 将暂存器复制到EEPROM（掉电保存）
    ds18b20_write_byte(DS18B20_CMD_COPY_SCRATCHPAD);
    delay_us(10000);  // 等待写入完成（最多10ms）
}

/**
 * @brief 读取DS18B20温度（快速版，根据当前分辨率自动调整等待时间）
 * @return 温度值（摄氏度）
 */
float ds18b20_read_temperature_fast(void) {
    uint8_t temp_low, temp_high, config;
    uint8_t scratchpad[9];
    int16_t temp_raw;
    float temperature;
    uint32_t wait_time;
    
    // 读取当前配置
    if (ds18b20_read_scratchpad(scratchpad)) {
        return -999.0;
    }
    config = scratchpad[4];
    
    // 根据分辨率计算等待时间
    switch (config) {
        case DS18B20_RESOLUTION_9BIT:
            wait_time = 94000;    // 93.75ms
            break;
        case DS18B20_RESOLUTION_10BIT:
            wait_time = 188000;   // 187.5ms
            break;
        case DS18B20_RESOLUTION_11BIT:
            wait_time = 375000;   // 375ms
            break;
        case DS18B20_RESOLUTION_12BIT:
        default:
            wait_time = 750000;   // 750ms
            break;
    }
    
    // 复位
    if (ds18b20_reset()) {
        return -999.0;
    }
    
    // 跳过ROM
    ds18b20_write_byte(DS18B20_CMD_SKIP_ROM);
    
    // 启动温度转换
    ds18b20_write_byte(DS18B20_CMD_CONVERT);
    
    // 根据分辨率等待转换完成
    delay_us(wait_time);
    
    // 复位
    if (ds18b20_reset()) {
        return -999.0;
    }
    
    // 跳过ROM
    ds18b20_write_byte(DS18B20_CMD_SKIP_ROM);
    
    // 读取暂存器
    ds18b20_write_byte(DS18B20_CMD_READ_SCRATCHPAD);
    
    // 读取温度数据
    temp_low = ds18b20_read_byte();
    temp_high = ds18b20_read_byte();
    
    // 组合温度数据
    temp_raw = (temp_high << 8) | temp_low;
    
    // 转换为实际温度
    temperature = temp_raw * 0.0625;
    
    return temperature;
}
