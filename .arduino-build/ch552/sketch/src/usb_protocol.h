#line 1 "C:\\Users\\tonyp\\Downloads\\ch552-turbo-fan-ctrl\\src\\usb_protocol.h"
/**
 * @file usb_protocol.h
 * @brief USB通信协议模块
 */

#ifndef USB_PROTOCOL_H
#define USB_PROTOCOL_H

#include "arduino_compat.h"
#include "config.h"

/**
 * @struct SystemStatus
 * @brief 系统状态数据结构
 */
typedef struct {
    float temperature;      // 温度(°C)
    float voltage;          // 输出电压(V)
    float target_voltage;   // 目标电压(V)
    uint32_t rpm;           // 风扇转速(RPM)
    uint32_t target_rpm;    // 目标转速(RPM)
    uint8_t pwm_duty;       // PWM占空比(0-255)
    uint8_t error_flags;    // 错误标志位
    bool auto_mode;         // 自主控制模式
} SystemStatus;

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
typedef enum {
    PAIRING_IDLE = 0,           // 等待上位机握手
    PAIRING_WAITING_CONFIRM,    // 已回复设备信息，等待上位机确认
    PAIRING_DONE                // 配对完成，连接建立
} PairingState;

typedef struct {
    bool is_connected;
    PairingState pairing_state;
    unsigned long last_heartbeat;
    char rx_buffer[USB_CMD_MAX_LEN + 1];
    uint8_t rx_len;

    float target_voltage_override;
    uint32_t target_rpm_override;
    float override_temp_min;
    float override_temp_max;
    float override_temp_overheat;
    uint8_t override_pwm_duty;

    bool override_active;
    bool rpm_override_active;
    bool temp_params_overridden;
    bool pwm_duty_overridden;
    bool reset_requested;
    bool status_requested;
} USBController;

void USBController_begin(USBController* uc);
void USBController_update(USBController* uc);
void USBController_sendStatus(USBController* uc, const SystemStatus* status);
bool USBController_isConnected(const USBController* uc);
float USBController_getTargetVoltage(const USBController* uc);
bool USBController_isOverrideActive(const USBController* uc);

#endif // USB_PROTOCOL_H
