/**
 * @file usb_protocol.h
 * @brief USB通信协议模块
 */

#ifndef USB_PROTOCOL_H
#define USB_PROTOCOL_H

#include <Arduino.h>
#include "config.h"

/**
 * @struct SystemStatus
 * @brief 系统状态数据结构
 */
struct SystemStatus {
    float temperature;      // 温度(°C)
    float voltage;          // 输出电压(V)
    float target_voltage;   // 目标电压(V)
    uint32_t rpm;           // 风扇转速(RPM)
    uint8_t pwm_duty;       // PWM占空比(0-255)
    uint8_t error_flags;    // 错误标志位
    bool auto_mode;         // 自主控制模式
};

/**
 * @enum ErrorFlags
 * @brief 错误标志位定义
 */
enum ErrorFlags {
    ERROR_NONE           = 0x00,
    ERROR_TEMP_SENSOR    = 0x01,  // 温度传感器错误
    ERROR_FAN_STALLED    = 0x02,  // 风扇堵转
    ERROR_OVERHEAT       = 0x04,  // 超温
    ERROR_VOLTAGE_ABNORMAL = 0x08, // 电压异常
    ERROR_USB_TIMEOUT    = 0x10   // USB超时
};

/**
 * @class USBController
 * @brief USB通信控制器
 * 
 * 功能：
 * 1. 接收上位机命令
 * 2. 发送系统状态
 * 3. 心跳检测
 * 4. 模式切换
 */
class USBController {
private:
    bool is_connected;              // 连接状态
    unsigned long last_heartbeat;   // 上次心跳时间
    String rx_buffer;               // 接收缓冲区
    
    /**
     * @brief 处理接收到的命令
     * @param cmd 命令字符串
     */
    void handleCommand(String cmd);
    
    /**
     * @brief 解析JSON命令（简化版）
     * @param cmd 命令字符串
     * @param key 键名
     * @return 值（字符串）
     */
    String parseValue(String cmd, String key);
    
public:
    // 外部控制参数
    float target_voltage_override;  // 外部设置的目标电压
    bool override_active;           // 外部控制激活标志
    bool reset_requested;           // 复位请求标志
    
    /**
     * @brief 初始化USB通信
     */
    void begin();
    
    /**
     * @brief 更新通信状态（定期调用）
     * 处理接收数据和心跳检测
     */
    void update();
    
    /**
     * @brief 发送系统状态
     * @param status 系统状态结构体
     */
    void sendStatus(const SystemStatus* status);
    
    /**
     * @brief 是否已连接
     */
    bool isConnected() const { return is_connected; }
    
    /**
     * @brief 获取外部控制电压
     */
    float getTargetVoltage() const { return target_voltage_override; }
    
    /**
     * @brief 是否激活外部控制
     */
    bool isOverrideActive() const { return override_active; }
};

#endif // USB_PROTOCOL_H
