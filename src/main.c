/**
 * @file main.c
 * @brief ESP8266 涡扇控制系统主程序
 */

#include "arduino_compat.h"
#include "config.h"
#include "voltage_control.h"
#include "temp_sensor.h"
#include "fan_monitor.h"
#include "usb_protocol.h"
#include "serial_compat.h"
#include "../lib/DS18B20/DS18B20.h"
#include <stdio.h>

#if FEATURE_VERBOSE_LOG
#define LOG_LINE(x) serial_println_str(x)
#else
#define LOG_LINE(x) do { (void)0; } while (0)
#endif

// ==================== 全局对象 ====================

DS18B20 tempSensor;                        // 温度传感器
VoltageController voltageCtrl;             // 电压控制器
TempController tempCtrl;                   // 温度控制器
FanMonitor fanMonitor;                     // 风扇监控
USBController usbCtrl;                     // 串口协议控制器

// ==================== 系统状态 ====================

SystemStatus sysStatus;                   // 系统状态
unsigned long last_temp_update = 0;        // 上次温度更新时间
unsigned long last_voltage_check = 0;      // 上次电压检测时间
unsigned long stall_detect_time = 0;       // 堵转检测时间
uint8_t stall_retry_count = 0;             // 堵转重试计数
unsigned long last_rpm_control = 0;         // 上次RPM闭环更新时间
float rpm_i_term = 0.0f;                   // RPM闭环积分项（电压修正）

static float clampf(float v, float lo, float hi) {
    if (v < lo) return lo;
    if (v > hi) return hi;
    return v;
}

static void log_debug_fault_once(bool* latched, bool triggered, const char* message) {
    if (triggered) {
        if (!*latched) {
            serial_println_str(message);
            *latched = true;
        }
    } else {
        *latched = false;
    }
}

// RPM 闭环反馈控制：根据实际 RPM 与目标 RPM 的偏差调整输出电压
// 在 RPM 控制模式下周期性调用此函数以实现反馈闭环
static void rpm_feedback_control(VoltageController* vc, uint32_t actual_rpm, uint32_t target_rpm, unsigned long now, unsigned long* last_update) {
    float error;
    float adjustment;
    float new_target_voltage;
    
    // 检查更新周期
    if (now - *last_update < RPM_FEEDBACK_UPDATE_MS) {
        return;
    }
    *last_update = now;
    
    // 如果在停机状态，不需要反馈
    if (target_rpm == 0u) {
        voltageCtrl.rpm_i_term = 0.0f;
        return;
    }
    
    // 计算 RPM 误差（带死区）
    if (actual_rpm >= target_rpm) {
        error = (float)(actual_rpm - target_rpm);
    } else {
        error = -(float)(target_rpm - actual_rpm);
    }
    
    if (error >= -RPM_FEEDBACK_DEADZONE && error <= RPM_FEEDBACK_DEADZONE) {
        error = 0.0f;
    }
    
    // PI 控制器：调整目标电压
    // 积分项累积误差
    vc->rpm_i_term += error * (RPM_FEEDBACK_UPDATE_MS / 1000.0f);
    vc->rpm_i_term = clampf(vc->rpm_i_term, -500.0f, 500.0f);  // 积分限幅
    
    adjustment = RPM_FEEDBACK_KP * error + RPM_FEEDBACK_KI * vc->rpm_i_term;
    adjustment = clampf(adjustment, -RPM_FEEDBACK_MAX_ADJUST, RPM_FEEDBACK_MAX_ADJUST);
    
    // 获取当前目标电压并调整
    new_target_voltage = VoltageController_getTargetVoltage(vc) + adjustment;
    new_target_voltage = clampf(new_target_voltage, VOUT_MIN, VOUT_MAX);
    
    // 设置调整后的电压（在 RPM 模式下，通过电压间接调整 RPM）
    VoltageController_setVoltage(vc, new_target_voltage);
}

// ==================== 初始化 ====================

void setup() {
    analogWriteRange(PWM_RESOLUTION);
    analogWriteFreq(PWM_FREQ);

#if FEATURE_TEMP_CONTROL
    DS18B20_init(&tempSensor, PIN_TEMP_SENSOR);
#endif
    float init_voltage = 0.0f;

    // 1. 初始化USB串口（优先，方便调试）
    USBController_begin(&usbCtrl);
    delay(500);

    LOG_LINE("=================================");
    LOG_LINE("ESP8266 Fan Control System v1.0");
    LOG_LINE("=================================");
    
    // 2. 初始化电压控制（Fail-Safe: 默认12V）
    LOG_LINE("[INIT] Voltage controller...");
    VoltageController_begin(&voltageCtrl, PIN_PWM_OUTPUT, PIN_VOLTAGE_ADC);
    delay(100);
    
#if FEATURE_TEMP_CONTROL
    // 3. 初始化温度控制
    LOG_LINE("[INIT] Temperature sensor...");
    TempController_begin(&tempCtrl, &tempSensor, &voltageCtrl);
    delay(200);
    
    if (TempController_isReady(&tempCtrl)) {
        #if FEATURE_VERBOSE_LOG
        serial_print_str("[OK] Temp sensor ready: ");
        serial_print_float(TempController_getTemperature(&tempCtrl), 2);
        serial_println_str(" C");
        #endif
    } else {
        LOG_LINE("[WARN] Temp sensor not ready!");
    }
#else
    tempCtrl.current_temp = 25.0f;
    tempCtrl.suggested_voltage = VOUT_DEFAULT;
    tempCtrl.target_rpm = RPM_TARGET_MIN;
    tempCtrl.temp_min = TEMP_MIN;
    tempCtrl.temp_max = TEMP_MAX;
    tempCtrl.temp_overheat = TEMP_OVERHEAT;
    tempCtrl.sensor_ready = false;
#endif
    
    // 4. 初始化风扇监控
    LOG_LINE("[INIT] Fan monitor...");
    FanMonitor_begin(&fanMonitor, PIN_FAN_TACH);
    delay(100);
    
    // 5. 读取初始电压
    init_voltage = VoltageController_readVoltage(&voltageCtrl);
    #if FEATURE_VERBOSE_LOG
    serial_print_str("[INFO] Initial voltage: ");
    serial_print_float(init_voltage, 2);
    serial_println_str(" V");
    #endif
    
    // 6. 初始化系统状态
    sysStatus.temperature = TempController_getTemperature(&tempCtrl);
    sysStatus.voltage = init_voltage;
    sysStatus.target_voltage = VOUT_DEFAULT;
    sysStatus.rpm = 0;
    sysStatus.target_rpm = RPM_TARGET_MIN;
    sysStatus.pwm_duty = 0;
    sysStatus.control_mode = (uint8_t)VoltageController_getControlMode(&voltageCtrl);
    sysStatus.error_flags = ERROR_NONE;
    sysStatus.auto_mode = true;
    sysStatus.output_locked = false;
    sysStatus.debug_mode = false;
    
    LOG_LINE("[READY] System started!");
    LOG_LINE("=================================");
}
// ==================== 主循环 ====================

static void loop_control(void) {
    unsigned long now = millis();
    static bool prev_host_override_active = false;
    static unsigned long boot_ms = 0;
    static unsigned long stall_grace_until_ms = 0;
    static bool stall_prev_armed = false;
    static unsigned long auto_start_boost_until_ms = 0;
    static bool auto_was_stopped = true;
    static bool debug_temp_sensor_fault_latched = false;
    static bool debug_overheat_fault_latched = false;
    static bool debug_voltage_fault_latched = false;
    static bool debug_stall_fault_latched = false;

    if (boot_ms == 0) {
        boot_ms = now;
        stall_grace_until_ms = now + (unsigned long)STALL_MONITOR_STARTUP_GRACE_MS;
    }

#if FEATURE_USB_PROTOCOL
    USBController_update(&usbCtrl);
    sysStatus.debug_mode = usbCtrl.debug_mode;

    // 上位机设置温度阈值：收到后立即应用
    if (usbCtrl.temp_params_overridden) {
        TempController_setThresholds(&tempCtrl, usbCtrl.override_temp_min, usbCtrl.override_temp_max, usbCtrl.override_temp_overheat);
        usbCtrl.temp_params_overridden = false;
    }

    // 软复位：清覆盖与瞬态告警（不自动解锁输出）
    if (usbCtrl.reset_requested) {
        uint8_t keep = 0;
        if (!usbCtrl.debug_mode && VoltageController_isLocked(&voltageCtrl)) {
            keep |= ERROR_VOLTAGE_ABNORMAL;
            if (sysStatus.error_flags & ERROR_FAN_STALLED) {
                keep |= ERROR_FAN_STALLED;
            }
        }
        if (!usbCtrl.debug_mode) {
            sysStatus.error_flags = keep;
        }

        stall_retry_count = 0;
        stall_detect_time = 0;
        rpm_i_term = 0.0f;
        last_rpm_control = now;

        usbCtrl.override_active = false;
        usbCtrl.voltage_override_active = false;
        usbCtrl.rpm_override_active = false;
        usbCtrl.temp_params_overridden = false;
        usbCtrl.pwm_duty_overridden = false;
        usbCtrl.status_requested = false;
        usbCtrl.timeout_report_pending = false;
        usbCtrl.reset_requested = false;
    }

    // 调试用解锁：仅在配置启用时生效
    if (usbCtrl.unlock_requested) {
#if FEATURE_HOST_UNLOCK_OUTPUT
        if (!usbCtrl.debug_mode) {
            VoltageController_unlockOutput(&voltageCtrl);
            sysStatus.error_flags &= (uint8_t)~(ERROR_VOLTAGE_ABNORMAL | ERROR_FAN_STALLED);
            FanMonitor_resetStall(&fanMonitor);
            stall_retry_count = 0;
            stall_detect_time = 0;
        } else {
            serial_println_str("DBG:UNLOCK_IGNORED");
        }
        usbCtrl.unlock_requested = false;
#else
        usbCtrl.unlock_requested = false;
#endif
    }

    // 断连/超时告警：等待下一次连接后的首次状态上报
    if (usbCtrl.timeout_report_pending) {
        sysStatus.error_flags |= ERROR_USB_TIMEOUT;
    }
#endif

#if FEATURE_TEMP_CONTROL
    // 温度采样不依赖模式：手动模式也必须持续读取温度/超温。
    if (now - last_temp_update >= TEMP_UPDATE_INTERVAL) {
        bool temp_ok = TempController_update(&tempCtrl);
        if (!temp_ok) {
            log_debug_fault_once(&debug_temp_sensor_fault_latched, usbCtrl.debug_mode, "DBG:ERR_TEMP_SENSOR");
            if (!usbCtrl.debug_mode) {
                sysStatus.error_flags |= ERROR_TEMP_SENSOR;
            }
        } else {
            debug_temp_sensor_fault_latched = false;
            if (!usbCtrl.debug_mode) {
                sysStatus.error_flags &= (uint8_t)~ERROR_TEMP_SENSOR;
            }
        }
        last_temp_update = now;
    }
#endif

    // 电压异常检测（短路/跌落）：锁定输出
    if (now - last_voltage_check >= VOLTAGE_CHECK_INTERVAL) {
        VoltageController_updateVoltage(&voltageCtrl);
        bool voltage_mode_active = (VoltageController_getControlMode(&voltageCtrl) == VC_CONTROL_VOLTAGE);
        bool voltage_protection_armed = (VoltageController_getTargetVoltage(&voltageCtrl) >= (float)VOLTAGE_ABNORMAL_ARM_MIN_TARGET);
        bool output_explicit_off = (VoltageController_getPWMDuty(&voltageCtrl) >= PWM_RESOLUTION);
        bool fan_is_spinning = (FanMonitor_getRPM(&fanMonitor) > (uint32_t)RPM_STALL_THRESH);
        bool voltage_abnormal = voltage_protection_armed
            && voltage_mode_active
            && !output_explicit_off
            && !fan_is_spinning
            && !VoltageController_isLocked(&voltageCtrl)
            && VoltageController_isVoltageAbnormal(&voltageCtrl);
        if (voltage_abnormal) {
            log_debug_fault_once(&debug_voltage_fault_latched, usbCtrl.debug_mode, "DBG:ERR_VOLTAGE_ABNORMAL");
            if (!usbCtrl.debug_mode) {
                sysStatus.error_flags |= ERROR_VOLTAGE_ABNORMAL;
                VoltageController_lockOutput(&voltageCtrl);
            }
        }
        if (!usbCtrl.debug_mode) {
            if (voltage_mode_active && VoltageController_isLocked(&voltageCtrl)) {
                sysStatus.error_flags |= ERROR_VOLTAGE_ABNORMAL;
            } else {
                sysStatus.error_flags &= (uint8_t)~ERROR_VOLTAGE_ABNORMAL;
            }
        }
        last_voltage_check = now;
    }

    // RPM 更新（内部每秒计算一次）
    FanMonitor_updateRPM(&fanMonitor);

    // 堵转检测：快速降压尝试起转，重试失败则锁定输出
    // 对所有模式都启用，但判定条件需要根据模式取得有效电压
    float effective_voltage = VoltageController_getTargetVoltage(&voltageCtrl);
    VoltageControlMode ctrl_mode = VoltageController_getControlMode(&voltageCtrl);
    
    // PWM 模式下，需要根据 current_pwm_duty 反推有效电压
    if (ctrl_mode == VC_CONTROL_PWM) {
        uint8_t current_duty = VoltageController_getPWMDuty(&voltageCtrl);
        // 只计算非关断状态的有效电压
        if (current_duty < PWM_RESOLUTION) {
            effective_voltage = VoltageController_pwmToVoltage(current_duty);
        }
    }
    
    bool stall_armed = (!VoltageController_isLocked(&voltageCtrl))
        && (now - boot_ms >= (unsigned long)STALL_MONITOR_STARTUP_GRACE_MS)
        && (now >= stall_grace_until_ms)
        && (effective_voltage >= (float)STALL_ARM_MIN_VOLTAGE);

    // 进入“可起转区间”时给风扇留起转时间，避免刚加电压就按0RPM判堵转
    if (stall_armed && !stall_prev_armed) {
        stall_grace_until_ms = now + (unsigned long)STALL_SPINUP_GRACE_MS;
    }
    stall_prev_armed = stall_armed;

    if (!stall_armed) {
        // 未武装堵转保护时，不应累计堵转状态。若已因此锁定，则需要保留错误标志供排查。
        if (!VoltageController_isLocked(&voltageCtrl) || usbCtrl.debug_mode) {
            FanMonitor_resetStall(&fanMonitor);
            if (!usbCtrl.debug_mode) {
                sysStatus.error_flags &= (uint8_t)~ERROR_FAN_STALLED;
            }
            stall_retry_count = 0;
            stall_detect_time = 0;
        }
    } else if (FanMonitor_isStalled(&fanMonitor)) {
        log_debug_fault_once(&debug_stall_fault_latched, usbCtrl.debug_mode, "DBG:ERR_FAN_STALLED");
        if (!usbCtrl.debug_mode) {
            sysStatus.error_flags |= ERROR_FAN_STALLED;
        }
        if (stall_detect_time == 0) {
            stall_detect_time = now;
            if (!usbCtrl.debug_mode) {
                VoltageController_setVoltage(&voltageCtrl, VOUT_MIN);
            }
        }

        if (now - stall_detect_time >= STALL_RETRY_DELAY) {
            stall_retry_count++;
            if (stall_retry_count >= STALL_MAX_RETRIES) {
                if (!usbCtrl.debug_mode) {
                    VoltageController_lockOutput(&voltageCtrl);
                }
            } else {
                FanMonitor_resetStall(&fanMonitor);
                stall_detect_time = 0;
            }
        }
    } else {
        debug_stall_fault_latched = false;
        if (stall_detect_time != 0) {
            if (!usbCtrl.debug_mode) {
                sysStatus.error_flags &= (uint8_t)~ERROR_FAN_STALLED;
            }
            stall_detect_time = 0;
            stall_retry_count = 0;
        }
    }

    // ===== 决策：是否由上位机覆盖控制 =====
    bool output_locked = VoltageController_isLocked(&voltageCtrl);
    bool host_override_active = false;

#if FEATURE_USB_PROTOCOL
    bool host_connected = USBController_isConnected(&usbCtrl);
    bool host_manual_mode = host_connected && usbCtrl.override_active;
    host_override_active = host_manual_mode && (usbCtrl.pwm_duty_overridden || usbCtrl.voltage_override_active || usbCtrl.rpm_override_active);
#endif

    if (output_locked) {
        host_override_active = false;
    }

    // 模式切换时重置闭环积分，避免跨模式“串味”
    if (host_override_active != prev_host_override_active) {
        rpm_i_term = 0.0f;
        prev_host_override_active = host_override_active;
    }

    // ===== 超温策略 =====
#if FEATURE_TEMP_CONTROL
    bool overheat = TempController_isOverheat(&tempCtrl);
    if (overheat) {
        log_debug_fault_once(&debug_overheat_fault_latched, usbCtrl.debug_mode, "DBG:ERR_OVERHEAT");
        if (!usbCtrl.debug_mode) {
            sysStatus.error_flags |= ERROR_OVERHEAT;
        }

#if FEATURE_USB_PROTOCOL
        // 手动模式超温：允许上位机干预，但若一段时间无请求则回退到自主控制
        if (host_override_active) {
            if (now - usbCtrl.last_heartbeat > OVERHEAT_HOST_GRACE_MS) {
                usbCtrl.override_active = false;
                usbCtrl.voltage_override_active = false;
                usbCtrl.rpm_override_active = false;
                usbCtrl.pwm_duty_overridden = false;
                host_override_active = false;
            }
        }
#endif
    } else {
        debug_overheat_fault_latched = false;
        if (!usbCtrl.debug_mode) {
            sysStatus.error_flags &= (uint8_t)~ERROR_OVERHEAT;
        }
    }
#endif

    // ===== 控制输出决策树：优先级为 PWM > VOLTAGE > RPM (> 自主温度模式) =====
    sysStatus.auto_mode = !host_override_active;
    
    // 确定当前的控制源和目标
    bool in_pwm_mode = false;
    bool in_voltage_mode = false;
    bool in_rpm_mode = false;
    uint32_t rpm_target_for_feedback = 0u;
    
#if FEATURE_USB_PROTOCOL
    if (host_override_active && !output_locked) {
        // 优先级：PWM 覆盖 > 电压覆盖 > RPM 覆盖
        if (usbCtrl.pwm_duty_overridden) {
            VoltageController_setPWMDuty(&voltageCtrl, usbCtrl.override_pwm_duty);
            in_pwm_mode = true;
        } else if (usbCtrl.voltage_override_active) {
            // 在 VOLTAGE 模式下，也应用 dithering（setVoltage 已实现）
            VoltageController_setVoltage(&voltageCtrl, usbCtrl.target_voltage_override);
            in_voltage_mode = true;
        } else if (usbCtrl.rpm_override_active) {
            VoltageController_setTargetRPM(&voltageCtrl, usbCtrl.target_rpm_override);
            in_rpm_mode = true;
            rpm_target_for_feedback = usbCtrl.target_rpm_override;
        }
    }
#endif

    // 自主模式：温度映射到 RPM，然后执行 RPM 反馈闭环
    if (sysStatus.auto_mode && !output_locked) {
        uint32_t target_rpm = TempController_getTargetRPM(&tempCtrl);

        if (target_rpm == 0u) {
            // 停机
            VoltageController_setPWMDuty(&voltageCtrl, PWM_RESOLUTION);
            auto_was_stopped = true;
            auto_start_boost_until_ms = 0;
            voltageCtrl.rpm_i_term = 0.0f;
        } else {
            // RPM 闭环控制
            uint32_t actual_rpm = FanMonitor_getRPM(&fanMonitor);
            
            if (auto_was_stopped && actual_rpm <= (uint32_t)RPM_STALL_THRESH && auto_start_boost_until_ms == 0u) {
                auto_start_boost_until_ms = now + 1200u;
            }

            if (now < auto_start_boost_until_ms) {
                // 起转脉冲
                VoltageController_setPWMDuty(&voltageCtrl, 8u);
            } else {
                // 进入正常 RPM 闭环
                VoltageController_setTargetRPM(&voltageCtrl, target_rpm);
                rpm_feedback_control(&voltageCtrl, actual_rpm, target_rpm, now, &last_rpm_control);
                in_rpm_mode = true;
                rpm_target_for_feedback = target_rpm;
                
                if (actual_rpm > (uint32_t)RPM_STALL_THRESH) {
                    auto_was_stopped = false;
                }
                auto_start_boost_until_ms = 0u;
            }
        }
    }
    
    // 仅在非自主模式的 RPM override 下执行反馈（自主模式上面已处理）
    if (!sysStatus.auto_mode && in_rpm_mode) {
        uint32_t actual_rpm = FanMonitor_getRPM(&fanMonitor);
        rpm_feedback_control(&voltageCtrl, actual_rpm, rpm_target_for_feedback, now, &last_rpm_control);
    }

    // ===== 状态汇总/上报 =====
    sysStatus.temperature = TempController_getTemperature(&tempCtrl);
    sysStatus.voltage = VoltageController_getCurrentVoltage(&voltageCtrl);
    sysStatus.target_voltage = VoltageController_getTargetVoltage(&voltageCtrl);
    sysStatus.rpm = FanMonitor_getRPM(&fanMonitor);
    sysStatus.target_rpm = TempController_getTargetRPM(&tempCtrl);
    sysStatus.pwm_duty = VoltageController_getPWMDuty(&voltageCtrl);
    sysStatus.control_mode = (uint8_t)VoltageController_getControlMode(&voltageCtrl);
    sysStatus.output_locked = output_locked;

#if FEATURE_USB_PROTOCOL
    if (host_override_active && usbCtrl.rpm_override_active) {
        sysStatus.target_rpm = usbCtrl.target_rpm_override;
    }

    if (usbCtrl.status_requested) {
        USBController_sendStatus(&usbCtrl, &sysStatus);
        usbCtrl.status_requested = false;

        // 断连超时告警：在“下一次连接后的首次状态上报”后清除
        if (usbCtrl.timeout_report_pending) {
            usbCtrl.timeout_report_pending = false;
            sysStatus.error_flags &= (uint8_t)~ERROR_USB_TIMEOUT;
        }
    }
#endif

    delay(20);
}

void loop() {
    loop_control();
}
