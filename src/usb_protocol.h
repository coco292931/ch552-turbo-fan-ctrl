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
    uint32_t target_rpm;    // 目标转速(RPM)
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
 * @enum PairingState
 * @brief 配对状态机
 * 
 * 配对流程：
 * 1. 上位机发送 HELLO
 * 2. 设备回复设备信息
 * 3. 上位机发送 CONNECT 确认
 * 4. 设备回复 OK:CONNECTED，建立连接
 */
enum PairingState {
    PAIRING_IDLE = 0,           // 等待上位机握手
    PAIRING_WAITING_CONFIRM,    // 已回复设备信息，等待上位机确认
    PAIRING_DONE                // 配对完成，连接建立
};

/**
 * @class USBController
 * @brief USB通信控制器
 * 
 * 功能：
 * 1. 配对握手流程
 * 2. 接收上位机命令（GET/SET/RESET/PING）
 * 3. 发送系统状态
 * 4. 心跳检测
 * 5. 模式切换
 */
class USBController {
private:
    bool is_connected;              // 连接状态
    PairingState pairing_state;     // 配对状态机
    unsigned long last_heartbeat;   // 上次心跳时间
    String rx_buffer;               // 接收缓冲区

    /**
     * @brief 处理接收到的命令
     * @param cmd 命令字符串
     */
    void handleCommand(String cmd);

    /**
     * @brief 解析键值（用于简单命令解析）
     * @param cmd 命令字符串
     * @param key 键名（如 "VOLTAGE=" ）
     * @return 值字符串
     */
    String parseValue(String cmd, String key);

public:
    // ---- 外部控制参数 ----
    float target_voltage_override;  // 外部设置的目标电压
    uint32_t target_rpm_override;   // 外部设置的目标转速
    float override_temp_min;        // 外部设置的最低温度阈值
    float override_temp_max;        // 外部设置的最高温度阈值
    float override_temp_overheat;   // 外部设置的超温阈值
    uint8_t override_pwm_duty;      // 外部直接设置的PWM占空比

    // ---- 控制标志 ----
    bool override_active;           // 外部电压控制激活
    bool rpm_override_active;       // 外部转速设置激活
    bool temp_params_overridden;    // 温度参数已被外部覆盖
    bool pwm_duty_overridden;       // PWM占空比已被外部直接设置
    bool reset_requested;           // 复位请求标志
    bool status_requested;          // GET:STATUS 立即推送标志

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
     * @brief 发送系统状态（JSON格式）
     * @param status 系统状态结构体
     */
    void sendStatus(const SystemStatus* status);

    /** @brief 是否已完成配对并连接 */
    bool isConnected() const { return is_connected; }

    /** @brief 获取外部控制电压 */
    float getTargetVoltage() const { return target_voltage_override; }

    /** @brief 是否激活外部电压控制 */
    bool isOverrideActive() const { return override_active; }
};

#endif // USB_PROTOCOL_H
