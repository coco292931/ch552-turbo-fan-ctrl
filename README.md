# ESP8266 涡扇控制系统

基于 **ESP8266（NodeMCU v2）** + **XL4015** 的风扇调速控制固件：通过对 XL4015 的 FB 节点进行“电流注入/反馈偏置”，实现输出电压可控下调，并提供串口文本协议用于上位机联调。

- 协议文档：见 [上位机通信协议.md](上位机通信协议.md)

## 构建与刷写（PlatformIO）

### 1) 编译生成 bin

- `pio run -e esp8266`
- 产物：`.pio/build/esp8266/firmware.bin`

### 2) 上传（可选）

- `pio run -e esp8266 -t upload`

若自动上传握手不稳定，推荐使用手动刷写。

### 3) 手动刷写（推荐兜底）

1. 进入下载模式（常见做法：按住 FLASH/BOOT，再点一下 RST）。
2. 执行：
   - `python -m esptool --port COM12 --baud 115200 write_flash 0x0 .pio/build/esp8266/firmware.bin`

### 4) 串口监控

- `pio device monitor -b 115200`

## 硬件引脚（默认）

实际以 [src/config.h](src/config.h) 为准。

| 功能 | 引脚 | 说明 |
|---|---|---|
| PWM 输出 | GPIO13 | 经 RC 滤波后注入 XL4015 FB（Fail-Safe：默认 12V） |
| 电压检测 | A0 | ADC 满量程 1.0V，请确保分压正确 |
| 转速检测 | GPIO4 | 风扇 FG 脉冲输入（通常需要上拉） |
| 温度检测 | GPIO5 | DS18B20 单总线（建议 4.7kΩ 上拉） |
| 串口通信 | UART0 | USB 转串口，115200 8N1 |

## 固件开关（常用）

- 回显：`FEATURE_USB_ECHO`（默认 1；如上位机需要“纯响应”，可在构建参数里 `-DFEATURE_USB_ECHO=0`）
- 协议：`FEATURE_USB_PROTOCOL`（默认 1）

## 目录结构（关键）

- [src/](src/)：共享 C 逻辑
- [src/esp8266/](src/esp8266/)：ESP8266 C++ wrapper（确保共享 C 文件按 C++ 编译）
