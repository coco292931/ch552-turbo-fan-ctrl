#line 1 "C:\\Users\\tonyp\\Downloads\\ch552-turbo-fan-ctrl\\README.md"
# CH552G 涡扇控制系统

基于 **CH552G** 微控制器和 **XL4015** 降压控制器的智能风扇调速控制系统。

## 项目特性

- ✅ **Fail-Safe 设计**：MCU失效时自动恢复12V满速运行
- 🌡️ **温度自适应控制**：通过DS18B20检测温度，自动调节风扇电压
- 📊 **实时监控**：转速检测、电压检测、温度监测
- 🔌 **USB通信**：支持上位机远程控制与状态查询
- 🛡️ **多重保护**：堵转保护、超温保护、短路保护
- 🎛️ **灵活映射**：支持一次/二次函数温度-电压映射

## 项目结构

```
涡扇控制技术验证/
├── platformio.ini              # PlatformIO配置文件
├── src/                        # 源代码目录
│   ├── main.cpp               # 主程序
│   ├── config.h               # 系统配置与引脚定义
│   ├── voltage_control.h/cpp  # 电压控制模块
│   ├── temp_sensor.h/cpp      # 温度控制模块
│   ├── fan_monitor.h/cpp      # 风扇监控模块
│   └── usb_protocol.h/cpp     # USB通信模块
├── lib/                        # 库文件目录
│   └── DS18B20/               # DS18B20温度传感器驱动
│       ├── DS18B20.h
│       └── DS18B20.cpp
├── 涡扇控制系统设计文档.md      # 详细设计文档
└── README.md                   # 本文件
```

## 硬件连接

### 引脚定义

| 功能 | CH552G引脚 | 连接对象 | 说明 |
|------|-----------|---------|------|
| PWM输出 | P3.4 | XL4015 FB节点 | 通过20kΩ+0.1µF RC滤波后注入 |
| 电压检测 | P1.1 | 输出电压分压 | 10kΩ/5.1kΩ分压后接入ADC |
| 转速检测 | P3.2 | 风扇FG信号 | 3Pin风扇转速脉冲 |
| 温度检测 | P1.5 | DS18B20数据线 | 单总线，需4.7kΩ上拉 |
| USB通信 | D+/D- | USB接口 | CH552G内部USB外设 |

### 外围电路

**PWM滤波电路：**
```
P3.4 ──[20kΩ]──┬── FB (XL4015)
               │
             [0.1µF]
               │
              GND
```

**电压检测分压：**
```
Vout ──[10kΩ]──┬── P1.1 (ADC)
               │
            [5.1kΩ]
               │
              GND
```


## 快速开始

### 编译方式说明（CH552 推荐）

当前项目建议使用 arduino-cli 进行编译，而不是 PlatformIO。

原因：
- 本项目的 CH55xduino 来源不是 PlatformIO 可直接识别的平台包（缺少 platform.json 平台清单）。
- 继续走 pio 会出现 MissingPackageManifestError。

使用方式：
1. 在项目根目录运行 PowerShell 脚本 [tools/build-arduino-cli.ps1](tools/build-arduino-cli.ps1)
2. 编译产物会输出到 [.arduino-build/ch552](.arduino-build/ch552)

说明：
- [.pio/build/project.checksum](.pio/build/project.checksum) 是 PlatformIO 自动生成的缓存校验文件，不是项目配置文件，可忽略。

### 环境要求

- **PlatformIO IDE** (推荐) 或 Arduino IDE
- **CH55xduino** 项目支持（DeqingSun维护）
- **USBasp** 或兼容的烧录器

### 安装步骤

1. **安装PlatformIO**
   ```bash
   # VSCode中安装PlatformIO插件
   # 或使用命令行：
   pip install platformio
   ```

2. **克隆项目**
   ```bash
   cd "涡扇控制技术验证"
   ```

3. **编译项目**
   ```bash
   pio run
   ```

4. **上传固件**
   ```bash
   pio run --target upload
   ```

5. **串口监控**
   ```bash
   pio device monitor
   ```

### 首次运行

上电后系统会输出启动信息：
```
=================================
CH552G Fan Control System v1.0
=================================
[INIT] Voltage controller...
[INIT] Temperature sensor...
[OK] Temp sensor ready: 25.50 C
[INIT] Fan monitor...
[INFO] Initial voltage: 12.00 V
[READY] System started!
=================================
```

## 使用说明

### 工作模式

#### 1. 自主控制模式（默认）

系统根据温度自动调节电压：
- 温度升高 → 电压升高 → 风扇转速加快
- 温度降低 → 电压降低 → 风扇转速减慢

**温度-电压映射**（可在[config.h](src/config.h)中配置）：

**一次函数模式** (`TEMP_MAPPING_MODE = 0`)：
```
V = 0.127 × T + 4.825
例：25°C → 8.0V, 80°C → 14.9V (截断到12V)
```

**二次函数模式** (`TEMP_MAPPING_MODE = 1`)：
```
归一化：T_norm = (T - 25) / 55
V = 5 + 7 × T_norm²
特点：低温缓慢增加，高温快速提升
```

#### 2. USB控制模式

通过串口发送命令远程控制系统。

**命令格式：**

| 命令 | 功能 | 示例 |
|------|------|------|
| `PING` | 心跳测试 | `PING` → `PONG` |
| `GET:STATUS` | 查询状态 | 返回JSON格式状态 |
| `SET:VOLTAGE=<值>` | 设置电压 | `SET:VOLTAGE=8.5` |
| `SET:MODE=AUTO` | 切换自主模式 | - |
| `SET:MODE=MANUAL` | 切换手动模式 | - |
| `RESET` | 复位系统 | 解除锁定状态，清除错误 |

**状态查询返回示例：**
```json
{
  "temp": 32.50,
  "volt": 8.20,
  "target": 8.50,
  "rpm": 1850,
  "pwm": 128,
  "error": "0x00",
  "mode": "AUTO"
}
```

### 参数配置

所有参数都在[src/config.h](src/config.h)中定义，可根据实际需求修改：

**关键参数：**
```cpp
// 电压范围
#define VOUT_MIN          5.0f     // 最小输出电压
#define VOUT_MAX          12.0f    // 最大输出电压

// 温度阈值
#define TEMP_MIN          25.0f    // 最低温度
#define TEMP_MAX          80.0f    // 最高温度
#define TEMP_OVERHEAT     85.0f    // 超温保护

// 映射参数（一次函数）
#define TEMP_VOLTAGE_K    0.127f   // 斜率
#define TEMP_VOLTAGE_B    4.825f   // 截距

// 映射方式选择
#define TEMP_MAPPING_MODE  0       // 0=一次函数, 1=二次函数
```

## 异常保护机制

### 1. 风扇堵转保护

**检测条件：** 转速突降或为0（RPM < 100）

**处理流程：**
1. 设置PWM = 100%（降低电压，尝试减轻负载）
2. 上报警告
3. 延迟后尝试重启
4. 连续两次失败 → 锁定停转状态
5. 等待上位机指令或人工干预

**说明：** 堵转时降低电压可减少电机损坏风险

### 2. 超温保护

**检测条件：** 温度超过阈值（≥ 85°C）

**处理流程：**
1. 上报超温警告
2. 如果USB连接中，等待上位机响应
3. 上位机无响应时，切换到自主控制模式
4. 温度恢复后允许恢复外部控制

**说明：** 超温由自主控制的温度映射自然提升电压散热

### 3. 输出异常/短路保护

**检测条件：** 输出电压异常下降（实际电压 < 目标电压 - 1V）

**处理流程：**
1. 设置PWM = 100%（降低输出）
2. 锁定输出状态
3. 上报错误
4. 仅允许：
   - 手动断电重启
   - 上位机发送校验通过的复位命令

**说明：** 短路时降低电压可防止XL4015过流损坏

### 4. USB断连处理

**检测条件：** 心跳超时（5秒未收到通信）

**处理流程：**
1. 立即切换至自主控制模式
2. 记录断连事件
3. 恢复连接后上报异常记录

### 5. Fail-Safe机制

**硬件级保护：**
- MCU掉电/复位 → PWM自动恢复到0% → 输出12V满速
- PWM引脚高阻 → FB注入电流为0 → 输出12V满速

**软件级保护：**
- USB断连 → 自动切换回自主控制模式
- 温度传感器失效 → 保持当前电压不变
- 电压检测异常 → 锁定并上报错误

## 校准指南

### PWM-电压映射校准

系统默认使用线性映射，实际电路可能存在非线性。建议实测校准：

1. 修改[voltage_control.cpp](src/voltage_control.cpp)中的`voltageToPWM()`函数
2. 设置不同PWM值，测量实际输出电压
3. 建立查找表或拟合公式

**示例校准数据：**
| PWM占空比 | 理论电压 | 实测电压 | 误差 |
|----------|---------|---------|-----|
| 0% | 12.0V | 12.05V | +0.05V |
| 25% | 10.25V | 10.30V | +0.05V |
| 50% | 8.5V | 8.60V | +0.10V |
| 75% | 6.75V | 6.90V | +0.15V |
| 100% | 5.0V | 5.20V | +0.20V |

### ADC电压检测校准

如果ADC读数与实际电压存在偏差，调整[config.h](src/config.h)中的参数：

```cpp
#define ADC_VOLTAGE_RATIO     2.96f   // 分压比校准
#define ADC_REF_VOLTAGE       5.0f    // 参考电压校准
```

## 开发说明

### 编译环境

- **平台**: CH55xduino (基于Arduino)
- **编译器**: SDCC
- **框架**: Arduino
- **时钟**: 24MHz内部振荡器

### 添加新功能

系统采用模块化设计，每个模块独立封装：

1. **电压控制**：[voltage_control.h/cpp](src/voltage_control.h)
2. **温度控制**：[temp_sensor.h/cpp](src/temp_sensor.h)
3. **风扇监控**：[fan_monitor.h/cpp](src/fan_monitor.h)
4. **USB通信**：[usb_protocol.h/cpp](src/usb_protocol.h)

添加新功能时，建议创建独立模块并在[main.cpp](src/main.cpp)中集成。

### 调试技巧

**1. 串口输出调试**
```cpp
Serial.println("Debug message");
```

**2. 查看系统状态**
```bash
# 串口监控
pio device monitor
```

**3. 测试PWM输出**
```cpp
// 在setup()中添加
voltageCtrl.setVoltage(8.0);  // 测试8V输出
```

**4. 模拟温度变化**
```cpp
// 临时修改映射函数测试
float test_voltage = mapTempToVoltageLinear(50.0);
```

## 常见问题

### Q1: 编译失败，提示找不到CH552相关头文件

**A:** 确保已正确安装ch55xduino平台：
```bash
pio platform install https://github.com/DeqingSun/ch55xduino.git
```

### Q2: 温度读取一直返回-999.0

**A:** 检查：
1. DS18B20是否正确连接到P1.5
2. 是否有4.7kΩ上拉电阻
3. 供电是否正常（3.3V或5V）

### Q3: PWM输出没有效果，电压始终是12V

**A:** 检查：
1. P3.4引脚是否正确连接到FB节点
2. RC滤波电路是否正确（20kΩ + 0.1µF）
3. XL4015的FB反馈网络是否正确

### Q4: 风扇转速检测不准确

**A:** 检查：
1. FG信号是否正确连接到P3.2
2. 是否需要外部上拉电阻（部分风扇需要）
3. 调整`fan_monitor.cpp`中的脉冲计算公式

### Q5: USB通信无响应

**A:** 检查：
1. 串口波特率是否为115200
2. CH552G的USB引脚是否正确连接
3. 是否已发送心跳命令（PING）

## 技术原理

### FB电流注入原理

XL4015通过比较FB引脚电压与内部1.25V基准电压来调节输出：
```
当 V_FB < 1.25V → 提升输出
当 V_FB > 1.25V → 降低输出
```

通过PWM经RC滤波后注入FB节点，可以人为抬高FB电压，从而降低输出电压：
```
V_FB = 1.25V + ΔV_inject
ΔV_inject ∝ PWM占空比
```

**Fail-Safe特性：**
- PWM引脚高阻或0%占空比时，注入电流为0
- FB节点仅受硬件分压网络控制
- 输出自动恢复到硬件设定的12V

## 贡献与反馈

欢迎提交Issue和Pull Request！

## 许可证

MIT License

## 参考资料

- [XL4015数据手册](https://www.xlsemi.com/)
- [DS18B20数据手册](https://www.analog.com/media/en/technical-documentation/data-sheets/DS18B20.pdf)
- [CH552G数据手册](http://www.wch.cn/products/CH552.html)
- [CH55xduino项目](https://github.com/DeqingSun/ch55xduino)

---

**版本**: v1.0  
**日期**: 2026-02-20  
**作者**: CH552G涡扇控制系统开发团队


#define DS_PIN_LOW()    P1_3 = 0
#define DS_PIN_READ()   P1_3

// 微秒延时（24MHz时钟）
static void delay_us(uint16_t us) {
    volatile uint16_t i;
    while(us--) {
        i = 4;  // 根据24MHz调整
        while(i--);
    }
}
```

### 4. ESP32移植示例

```c
#include "driver/gpio.h"

#define DS18B20_PIN GPIO_NUM_13

#define DS_PIN_OUTPUT() gpio_set_direction(DS18B20_PIN, GPIO_MODE_OUTPUT)
#define DS_PIN_INPUT()  gpio_set_direction(DS18B20_PIN, GPIO_MODE_INPUT)
#define DS_PIN_HIGH()   gpio_set_level(DS18B20_PIN, 1)
#define DS_PIN_LOW()    gpio_set_level(DS18B20_PIN, 0)
#define DS_PIN_READ()   gpio_get_level(DS18B20_PIN)

static void delay_us(uint16_t us) {
    ets_delay_us(us);
}
```

## 硬件连接

- DS18B20 VCC → MCU 3.3V/5V
- DS18B20 GND → MCU GND  
- DS18B20 DQ  → MCU GPIO（需要4.7kΩ上拉电阻到VCC）

**重要**：DQ数据线和VCC之间必须接一个4.7kΩ的上拉电阻！

## 使用方法

```c
#include "ds18b20.h"

// 初始化
ds18b20_init_pin();

// 读取温度
float temp = ds18b20_read_temperature();
printf("温度: %.2f °C\n", temp);
```

## OneWire协议时序说明

驱动完全按照OneWire协议实现：

- **复位脉冲**：主机拉低480us，然后释放，等待设备应答
- **写0**：拉低60-120us
- **写1**：拉低后立即释放，保持高电平
- **读位**：拉低2us后释放，12us后读取电平

## 注意事项

1. 延时精度很重要，需要根据MCU主频精确调整
2. 温度转换需要750ms（12位精度）
3. 支持-55°C到+125°C，精度±0.5°C
4. 分辨率为0.0625°C（12位）
