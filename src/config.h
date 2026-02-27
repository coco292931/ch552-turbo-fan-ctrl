/**
 * @file config.h
 * @brief CH552G涡扇控制系统 - 系统配置与引脚定义
 * @date 2026-02-20
 */

#ifndef CONFIG_H
#define CONFIG_H

// ==================== 硬件引脚定义 ====================

// PWM输出引脚 - 注入XL4015的FB节点
#define PIN_PWM_OUTPUT    34      // P3.4 - PWM输出

// ADC电压检测引脚 - 检测输出电压
#define PIN_VOLTAGE_ADC   11      // P1.1 - 电压检测

// 风扇转速检测引脚 - FG信号
#define PIN_FAN_TACH      32      // P3.2 - 转速检测 (或使用P1.4=14)

// 温度传感器引脚 - DS18B20单总线
#define PIN_TEMP_SENSOR   15      // P1.5 - 温度传感器


// ==================== 控制参数 ====================

// 输出电压范围
#define VOUT_MIN          5.0f    // 最小输出电压(V)
#define VOUT_MAX          12.0f   // 最大输出电压(V)
#define VOUT_DEFAULT      12.0f   // 默认电压(Fail-Safe)

// 温度阈值
#define TEMP_MIN          25.0f   // 最低温度阈值(°C)
#define TEMP_MAX          80.0f   // 最高温度阈值(°C)
#define TEMP_OVERHEAT     85.0f   // 超温保护阈值(°C)

// 风扇转速
#define RPM_MIN           500     // 最小有效转速(RPM)
#define RPM_STALL_THRESH  100     // 堵转判定阈值(RPM)
#define RPM_TARGET_MIN    600     // 温度最低时的目标转速(RPM)，对应TEMP_MIN
#define RPM_TARGET_MAX    3000    // 温度最高时的目标转速(RPM)，对应TEMP_MAX

// PWM参数
#define PWM_FREQ          10000   // PWM频率 10kHz (避免音频噪声)
#define PWM_RESOLUTION    255     // PWM分辨率 (8位)


// ==================== 温度-电压映射参数 ====================

// 映射方式选择：0=一次函数 1=二次函数
#define TEMP_MAPPING_MODE  0

// 一次函数参数: V = k*T + b
#define TEMP_VOLTAGE_K    0.127f   // 斜率 (约7V变化/55°C温差)
#define TEMP_VOLTAGE_B    4.825f   // 截距 (25°C时约8V)

// 二次函数参数: V = Vmin + (Vmax-Vmin) * ((T-Tmin)/(Tmax-Tmin))^2
// 通过TEMP_MIN, TEMP_MAX, VOUT_MIN, VOUT_MAX自动计算


// ==================== 系统参数 ====================

// 采样周期
#define TEMP_UPDATE_INTERVAL   2000   // 温度更新间隔(ms)
#define STATUS_SEND_INTERVAL   1000   // 状态上报间隔(ms)
#define VOLTAGE_CHECK_INTERVAL 500    // 电压检测间隔(ms)

// USB通信
#define USB_HEARTBEAT_TIMEOUT  5000   // USB心跳超时(ms)
#define USB_BAUD_RATE          115200 // 串口波特率

// 异常保护
#define STALL_RETRY_DELAY      3000   // 堵转重试延迟(ms)
#define STALL_MAX_RETRIES      2      // 最大重试次数


// ==================== 校准参数 ====================

// ADC电压校准 (实测后调整)
// 分压比: (10kΩ + 5.1kΩ) / 5.1kΩ = 2.96
#define ADC_VOLTAGE_RATIO     2.96f
#define ADC_REF_VOLTAGE       5.0f    // CH552 ADC参考电压
#define ADC_RESOLUTION        1024    // 10位ADC

// PWM-电压映射校准系数 (需要实测后调整)
// 这些系数需要通过实际测试确定
#define PWM_CALIB_K1         -0.07f   // 一次项系数
#define PWM_CALIB_B1          12.0f   // 常数项
// 当前假设: PWM=0% -> 12V, PWM=100% -> 5V (线性)


#endif // CONFIG_H
