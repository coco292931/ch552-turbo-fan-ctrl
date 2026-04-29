/**
 * @file config.h
 * @brief CH552G涡扇控制系统 - 系统配置与引脚定义
 * @date 2026-02-20
 */

#ifndef CONFIG_H
#define CONFIG_H

// ==================== 固件裁剪配置 ====================

// CH552 默认启用精简固件配置，优先保证可编译与核心控制链路可用。
#if defined(CH552)
#ifndef FEATURE_USB_PROTOCOL
#define FEATURE_USB_PROTOCOL 0
#endif
#ifndef FEATURE_TEMP_CONTROL
#define FEATURE_TEMP_CONTROL 1
#endif
#ifndef FEATURE_VERBOSE_LOG
#define FEATURE_VERBOSE_LOG  0
#endif
#ifndef FEATURE_THERMISTOR_ADC
#define FEATURE_THERMISTOR_ADC 0
#endif
#ifndef FEATURE_DS18B20_CRC
#define FEATURE_DS18B20_CRC    0
#endif
#ifndef FEATURE_DS18B20_RETRY
#define FEATURE_DS18B20_RETRY  0
#endif
#elif defined(ARDUINO_ARCH_ESP8266)
#ifndef FEATURE_USB_PROTOCOL
#define FEATURE_USB_PROTOCOL 0
#endif
#ifndef FEATURE_TEMP_CONTROL
#define FEATURE_TEMP_CONTROL 1
#endif
#ifndef FEATURE_VERBOSE_LOG
#define FEATURE_VERBOSE_LOG  1
#endif
#ifndef FEATURE_THERMISTOR_ADC
#define FEATURE_THERMISTOR_ADC 0
#endif
#ifndef FEATURE_DS18B20_CRC
#define FEATURE_DS18B20_CRC    1
#endif
#ifndef FEATURE_DS18B20_RETRY
#define FEATURE_DS18B20_RETRY  1
#endif
#else
#ifndef FEATURE_USB_PROTOCOL
#define FEATURE_USB_PROTOCOL 1
#endif
#ifndef FEATURE_TEMP_CONTROL
#define FEATURE_TEMP_CONTROL 1
#endif
#ifndef FEATURE_VERBOSE_LOG
#define FEATURE_VERBOSE_LOG  1
#endif
#ifndef FEATURE_THERMISTOR_ADC
#define FEATURE_THERMISTOR_ADC 0
#endif
#ifndef FEATURE_DS18B20_CRC
#define FEATURE_DS18B20_CRC    1
#endif
#ifndef FEATURE_DS18B20_RETRY
#define FEATURE_DS18B20_RETRY  1
#endif
#endif

// ==================== 硬件引脚定义 ====================

#if defined(ARDUINO_ARCH_ESP8266)
// ESP8266 引脚映射
#define PIN_PWM_OUTPUT    13      // GPIO13 - PWM输出(软件PWM)
#define PIN_VOLTAGE_ADC   A0      // ADC0 - 输出电压检测
#define PIN_FAN_TACH      4       // GPIO4  - 转速检测
#define PIN_TEMP_SENSOR   5       // GPIO5  - DS18B20
#else
// PWM输出引脚 - 注入XL4015的FB节点
#define PIN_PWM_OUTPUT    34      // P3.4 - PWM输出

// ADC电压检测引脚 - 检测输出电压
// 临时排查：借用 AIN1(P1.4=14) 作为电压采样输入，原 P1.1 方案后续可切回。
#define PIN_VOLTAGE_ADC   11      // P1.4 - 电压检测(测试)

// 风扇转速检测引脚 - FG信号
#define PIN_FAN_TACH      32      // P3.2 - 转速检测 (或使用P1.4=14)

// 温度传感器引脚 - DS18B20单总线
#define PIN_TEMP_SENSOR   17      // P1.7 - 飞线引脚 (原为 P1.5=15，防硬件冲突)
#endif


// ==================== 控制参数 ====================

// 输出电压范围
#define VOUT_MIN          5.2f    // 最小输出电压(V)
#define VOUT_MAX          12.0f   // 最大输出电压(V) 硬件锁死了，不要改这里
#define VOUT_DEFAULT      12.0f   // 默认电压(Fail-Safe)

// 温度阈值
#define TEMP_MIN          30.0f   // 最低温度阈值(°C) 起转温度
#define TEMP_MAX          45.0f   // 最高温度阈值(°C) 满转温度
#define TEMP_OVERHEAT     50.0f   // 超温保护阈值(°C) 报警温度

// 风扇转速
#define RPM_MIN           1000     // 最小有效转速(RPM)
#define RPM_STALL_THRESH  200     // 堵转判定阈值(RPM)
#define RPM_TARGET_MIN    800    // 温度最低时的目标转速 (RPM)，对应TEMP_MIN (即最低电压下的转速)
#define RPM_TARGET_MAX    2800    // 温度最高时的目标转速 (RPM)，对应TEMP_MAX (即最高电压下的转速)

// PWM参数
#define PWM_FREQ          10000   // PWM频率 10kHz
#define PWM_RESOLUTION    255     // PWM分辨率 (8位)


// ==================== 温度-电压映射参数 ====================

// 映射方式选择：0=一次函数 1=二次函数
#define TEMP_MAPPING_MODE  0

// 一次函数参数: V = k*T + b
//计算参数 5V~30°C,12V~45°C
#define TEMP_VOLTAGE_K    0.4666667f   // 斜率 = (12-5)/(45-30)
#define TEMP_VOLTAGE_B   -9.0f         // 截距，使 30°C 对应 5V

// 二次函数参数: V = Vmin + (Vmax-Vmin) * ((T-Tmin)/(Tmax-Tmin))^2
// 通过TEMP_MIN, TEMP_MAX, VOUT_MIN, VOUT_MAX自动计算
// 扯淡，2个参数写什么二次函数，还双曲线


// ==================== 系统参数 ====================

// 采样周期
#define TEMP_UPDATE_INTERVAL   2000   // 温度更新间隔(ms)
#define STATUS_SEND_INTERVAL   1000   // 状态上报间隔(ms)
#define VOLTAGE_CHECK_INTERVAL 500    // 电压检测间隔(ms)

// USB通信
#define USB_HEARTBEAT_TIMEOUT  5000   // USB心跳超时(ms)
#define USB_BAUD_RATE          115200 // 串口波特率
#define USB_CMD_MAX_LEN        64     // USB命令最大长度（不含结尾\0）

// ADC热敏电阻温控（CH552精简配置默认启用）
// 以下是线性标定点：在 TEMP_MIN/TEMP_MAX 对应的 ADC 读数。
// 若使用 NTC 且温度升高 ADC 下降，通常 THERM_ADC_AT_TEMP_MIN > THERM_ADC_AT_TEMP_MAX。
#define THERM_ADC_AT_TEMP_MIN  200
#define THERM_ADC_AT_TEMP_MAX  110

// 异常保护
#define STALL_RETRY_DELAY      3000   // 堵转重试延迟(ms)
#define STALL_MAX_RETRIES      2      // 最大重试次数


// ==================== 校准参数 ====================

// ADC电压校准 (实测后调整)
// 分压比: (10kΩ + 5.1kΩ) / 5.1kΩ = 2.96
#if defined(ARDUINO_ARCH_ESP8266)
#define ADC_VOLTAGE_RATIO     12.0f   // 1.0V满量程时对应12V输出
#define ADC_REF_VOLTAGE       1.0f    // ESP8266 ADC参考电压
#define ADC_RESOLUTION        1023    // 10位ADC
#else
#define ADC_VOLTAGE_RATIO     2.96f
#define ADC_REF_VOLTAGE       5.0f    // CH552 ADC参考电压
#define ADC_RESOLUTION        255     // 8位ADC
#endif

// PWM-电压映射校准系数 (需要实测后调整)
// 这些系数需要通过实际测试确定
#define PWM_CALIB_K1         -0.07f   // 一次项系数
#define PWM_CALIB_B1          12.0f   // 常数项
// 当前假设: PWM=0% -> 12V, PWM=100% -> 5V (线性)


#endif // CONFIG_H
