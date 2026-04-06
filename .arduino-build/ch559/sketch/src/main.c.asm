;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13407 (MINGW32)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _serial_println_str
	.globl _serial_print_float
	.globl _serial_print_uint
	.globl _serial_print_int
	.globl _serial_print_str
	.globl _USBController_isOverrideActive
	.globl _USBController_getTargetVoltage
	.globl _USBController_isConnected
	.globl _USBController_sendStatus
	.globl _USBController_update
	.globl _USBController_begin
	.globl _FanMonitor_resetStall
	.globl _FanMonitor_isStalled
	.globl _FanMonitor_getRPM
	.globl _FanMonitor_updateRPM
	.globl _FanMonitor_begin
	.globl _TempController_isOverheat
	.globl _TempController_isReady
	.globl _TempController_getTargetRPM
	.globl _TempController_getTemperature
	.globl _TempController_update
	.globl _TempController_begin
	.globl _DS18B20_init
	.globl _VoltageController_unlockOutput
	.globl _VoltageController_lockOutput
	.globl _VoltageController_isVoltageAbnormal
	.globl _VoltageController_getPWMDuty
	.globl _VoltageController_getCurrentVoltage
	.globl _VoltageController_getTargetVoltage
	.globl _VoltageController_updateVoltage
	.globl _VoltageController_readVoltage
	.globl _VoltageController_setVoltage
	.globl _VoltageController_begin
	.globl _delay
	.globl _millis
	.globl _UIF_BUS_RST
	.globl _UIF_DETECT
	.globl _UIF_TRANSFER
	.globl _UIF_SUSPEND
	.globl _UIF_HST_SOF
	.globl _UIF_FIFO_OV
	.globl _U_SIE_FREE
	.globl _U_TOG_OK
	.globl _U_IS_NAK
	.globl _S0_R_FIFO0
	.globl _S0_R_FIFO1
	.globl _S0_T_FIFO
	.globl _S0_FREE
	.globl _S0_IF_BYTE
	.globl _S0_IF_FIRST
	.globl _S0_IF_OV
	.globl _S0_FST_ACT
	.globl _CP_RL2
	.globl _C_T2
	.globl _TR2
	.globl _EXEN2
	.globl _TCLK
	.globl _RCLK
	.globl _EXF2
	.globl _CAP1F
	.globl _TF2
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _P4_OUT_0
	.globl _P4_OUT_1
	.globl _P4_OUT_2
	.globl _P4_OUT_3
	.globl _P4_OUT_4
	.globl _P4_OUT_5
	.globl _P4_OUT_6
	.globl _P4_OUT_7
	.globl _RXD1_
	.globl _LED2
	.globl _CAP3_
	.globl _PWM3_
	.globl _PWM1_
	.globl _TXD1_
	.globl _TNOW_
	.globl _LED3
	.globl _PWM2_
	.globl _SCS_
	.globl _SCK_
	.globl _P3_0
	.globl _P3_1
	.globl _P3_2
	.globl _P3_3
	.globl _P3_4
	.globl _P3_5
	.globl _P3_6
	.globl _P3_7
	.globl _RXD
	.globl _TXD
	.globl _INT0
	.globl _LED0
	.globl _INT1
	.globl _LED1
	.globl _T0
	.globl _XCS0
	.globl _LEDC
	.globl _T1
	.globl _DA6
	.globl _WR
	.globl _RD
	.globl _P2_0
	.globl _P2_1
	.globl _P2_2
	.globl _P2_3
	.globl _P2_4
	.globl _P2_5
	.globl _P2_6
	.globl _P2_7
	.globl _MOSI1
	.globl _MISO1
	.globl _SCK1
	.globl _PWM1
	.globl _CAP2_
	.globl _T2EX_
	.globl _PWM2
	.globl _TNOW
	.globl _RXD1
	.globl _DA7
	.globl _TXD1
	.globl _P1_0
	.globl _P1_1
	.globl _P1_2
	.globl _P1_3
	.globl _P1_4
	.globl _P1_5
	.globl _P1_6
	.globl _P1_7
	.globl _CAP1
	.globl _T2
	.globl _CAP2
	.globl _T2EX
	.globl _CAP3
	.globl _PWM3
	.globl _SCS
	.globl _MOSI
	.globl _MISO
	.globl _SCK
	.globl _AIN0
	.globl _AIN1
	.globl _AIN2
	.globl _AIN3
	.globl _AIN4
	.globl _AIN5
	.globl _AIN6
	.globl _AIN7
	.globl _P0_0
	.globl _P0_1
	.globl _P0_2
	.globl _P0_3
	.globl _P0_4
	.globl _P0_5
	.globl _P0_6
	.globl _P0_7
	.globl _UDTR
	.globl _URTS
	.globl _RXD_
	.globl _TXD_
	.globl _UCTS
	.globl _UDSR
	.globl _URI
	.globl _UDCD
	.globl _IE_SPI0
	.globl _IE_TMR3
	.globl _IE_USB
	.globl _IE_ADC
	.globl _IE_UART1
	.globl _IE_PWM1
	.globl _IE_GPIO
	.globl _IE_WDOG
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PT2
	.globl _PL_FLAG
	.globl _PH_FLAG
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _ET2
	.globl _E_DIS
	.globl _EA
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _USB_DMA_AH
	.globl _USB_DMA_AL
	.globl _USB_DMA
	.globl _UHUB1_CTRL
	.globl _UDEV_CTRL
	.globl _USB_DEV_AD
	.globl _USB_CTRL
	.globl _USB_INT_EN
	.globl _UEP4_T_LEN
	.globl _UEP4_CTRL
	.globl _UEP0_T_LEN
	.globl _UEP0_CTRL
	.globl _USB_HUB_ST
	.globl _USB_MIS_ST
	.globl _USB_INT_ST
	.globl _USB_INT_FG
	.globl _UEP3_T_LEN
	.globl _UEP3_CTRL
	.globl _UEP2_T_LEN
	.globl _UEP2_CTRL
	.globl _UEP1_T_LEN
	.globl _UEP1_CTRL
	.globl _USB_RX_LEN
	.globl _ADC_EX_SW
	.globl _ADC_SETUP
	.globl _ADC_FIFO_H
	.globl _ADC_FIFO_L
	.globl _ADC_FIFO
	.globl _ADC_CHANN
	.globl _ADC_CTRL
	.globl _ADC_STAT
	.globl _ADC_CK_SE
	.globl _ADC_DMA_CN
	.globl _ADC_DMA_AH
	.globl _ADC_DMA_AL
	.globl _ADC_DMA
	.globl _SER1_ADDR
	.globl _SER1_MSR
	.globl _SER1_LSR
	.globl _SER1_MCR
	.globl _SER1_LCR
	.globl _SER1_IIR
	.globl _SER1_IER
	.globl _SER1_FIFO
	.globl _SPI1_CK_SE
	.globl _SPI1_CTRL
	.globl _SPI1_DATA
	.globl _SPI1_STAT
	.globl _SPI0_SETUP
	.globl _SPI0_CK_SE
	.globl _SPI0_CTRL
	.globl _SPI0_DATA
	.globl _SPI0_STAT
	.globl _PWM_CYCLE
	.globl _PWM_CK_SE
	.globl _PWM_CTRL
	.globl _PWM_DATA
	.globl _PWM_DATA2
	.globl _T3_FIFO_H
	.globl _T3_FIFO_L
	.globl _T3_FIFO
	.globl _T3_DMA_AH
	.globl _T3_DMA_AL
	.globl _T3_DMA
	.globl _T3_DMA_CN
	.globl _T3_CTRL
	.globl _T3_STAT
	.globl _T3_END_H
	.globl _T3_END_L
	.globl _T3_END
	.globl _T3_COUNT_H
	.globl _T3_COUNT_L
	.globl _T3_COUNT
	.globl _T3_SETUP
	.globl _TH2
	.globl _TL2
	.globl _T2COUNT
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _RCAP2
	.globl _T2MOD
	.globl _T2CON
	.globl _SBUF
	.globl _SCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _XBUS_SPEED
	.globl _XBUS_AUX
	.globl _PIN_FUNC
	.globl _PORT_CFG
	.globl _P5_IN
	.globl _P4_PU
	.globl _P4_DIR
	.globl _P4_IN
	.globl _P4_OUT
	.globl _P3_PU
	.globl _P3_DIR
	.globl _P3
	.globl _P2_PU
	.globl _P2_DIR
	.globl _P2
	.globl _P1_PU
	.globl _P1_DIR
	.globl _P1_IE
	.globl _P1
	.globl _P0_PU
	.globl _P0_DIR
	.globl _P0
	.globl _ROM_CTRL
	.globl _ROM_DATA_H
	.globl _ROM_DATA_L
	.globl _ROM_DATA
	.globl _ROM_ADDR_H
	.globl _ROM_ADDR_L
	.globl _ROM_ADDR
	.globl _GPIO_IE
	.globl _IP_EX
	.globl _IE_EX
	.globl _IP
	.globl _IE
	.globl _WDOG_COUNT
	.globl _RESET_KEEP
	.globl _WAKE_CTRL
	.globl _SLEEP_CTRL
	.globl _CLOCK_CFG
	.globl _PLL_CFG
	.globl _PCON
	.globl _GLOBAL_CFG
	.globl _SAFE_MOD
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _usb_was_connected
	.globl _stall_retry_count
	.globl _stall_detect_time
	.globl _last_voltage_check
	.globl _last_status_send
	.globl _last_temp_update
	.globl _sysStatus
	.globl _usbCtrl
	.globl _fanMonitor
	.globl _tempCtrl
	.globl _voltageCtrl
	.globl _tempSensor
	.globl _LED_DMA_XL
	.globl _LED_DMA_XH
	.globl _LED_DMA_CN
	.globl _LED_DMA_AL
	.globl _LED_DMA_AH
	.globl _LED_CK_SE
	.globl _LED_DATA
	.globl _LED_CTRL
	.globl _LED_STAT
	.globl _UEP3_DMA_L
	.globl _UEP3_DMA_H
	.globl _UEP2_DMA_L
	.globl _UEP2_DMA_H
	.globl _UEP1_DMA_L
	.globl _UEP1_DMA_H
	.globl _UEP0_DMA_L
	.globl _UEP0_DMA_H
	.globl _UEP2_3_MOD
	.globl _UEP4_1_MOD
	.globl _pLED_DMA_XL
	.globl _pLED_DMA_XH
	.globl _pLED_DMA_CN
	.globl _pLED_DMA_AL
	.globl _pLED_DMA_AH
	.globl _pLED_CK_SE
	.globl _pLED_DATA
	.globl _pLED_CTRL
	.globl _pLED_STAT
	.globl _pUEP3_DMA_L
	.globl _pUEP3_DMA_H
	.globl _pUEP2_DMA_L
	.globl _pUEP2_DMA_H
	.globl _pUEP1_DMA_L
	.globl _pUEP1_DMA_H
	.globl _pUEP0_DMA_L
	.globl _pUEP0_DMA_H
	.globl _pUEP2_3_MOD
	.globl _pUEP4_1_MOD
	.globl _setup
	.globl _loop
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_SAFE_MOD	=	0x00a1
_GLOBAL_CFG	=	0x00b1
_PCON	=	0x0087
_PLL_CFG	=	0x00b2
_CLOCK_CFG	=	0x00b3
_SLEEP_CTRL	=	0x00ea
_WAKE_CTRL	=	0x00eb
_RESET_KEEP	=	0x00fe
_WDOG_COUNT	=	0x00ff
_IE	=	0x00a8
_IP	=	0x00b8
_IE_EX	=	0x00e8
_IP_EX	=	0x00e9
_GPIO_IE	=	0x00cf
_ROM_ADDR	=	0x8584
_ROM_ADDR_L	=	0x0084
_ROM_ADDR_H	=	0x0085
_ROM_DATA	=	0x8f8e
_ROM_DATA_L	=	0x008e
_ROM_DATA_H	=	0x008f
_ROM_CTRL	=	0x0086
_P0	=	0x0080
_P0_DIR	=	0x00c4
_P0_PU	=	0x00c5
_P1	=	0x0090
_P1_IE	=	0x00b9
_P1_DIR	=	0x00ba
_P1_PU	=	0x00bb
_P2	=	0x00a0
_P2_DIR	=	0x00bc
_P2_PU	=	0x00bd
_P3	=	0x00b0
_P3_DIR	=	0x00be
_P3_PU	=	0x00bf
_P4_OUT	=	0x00c0
_P4_IN	=	0x00c1
_P4_DIR	=	0x00c2
_P4_PU	=	0x00c3
_P5_IN	=	0x00c7
_PORT_CFG	=	0x00c6
_PIN_FUNC	=	0x00ce
_XBUS_AUX	=	0x00a2
_XBUS_SPEED	=	0x00fd
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_SCON	=	0x0098
_SBUF	=	0x0099
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2	=	0xcbca
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_T2COUNT	=	0xcdcc
_TL2	=	0x00cc
_TH2	=	0x00cd
_T3_SETUP	=	0x00a3
_T3_COUNT	=	0xa5a4
_T3_COUNT_L	=	0x00a4
_T3_COUNT_H	=	0x00a5
_T3_END	=	0xa7a6
_T3_END_L	=	0x00a6
_T3_END_H	=	0x00a7
_T3_STAT	=	0x00a9
_T3_CTRL	=	0x00aa
_T3_DMA_CN	=	0x00ab
_T3_DMA	=	0xadac
_T3_DMA_AL	=	0x00ac
_T3_DMA_AH	=	0x00ad
_T3_FIFO	=	0xafae
_T3_FIFO_L	=	0x00ae
_T3_FIFO_H	=	0x00af
_PWM_DATA2	=	0x009b
_PWM_DATA	=	0x009c
_PWM_CTRL	=	0x009d
_PWM_CK_SE	=	0x009e
_PWM_CYCLE	=	0x009f
_SPI0_STAT	=	0x00f8
_SPI0_DATA	=	0x00f9
_SPI0_CTRL	=	0x00fa
_SPI0_CK_SE	=	0x00fb
_SPI0_SETUP	=	0x00fc
_SPI1_STAT	=	0x00b4
_SPI1_DATA	=	0x00b5
_SPI1_CTRL	=	0x00b6
_SPI1_CK_SE	=	0x00b7
_SER1_FIFO	=	0x009a
_SER1_IER	=	0x0091
_SER1_IIR	=	0x0092
_SER1_LCR	=	0x0093
_SER1_MCR	=	0x0094
_SER1_LSR	=	0x0095
_SER1_MSR	=	0x0096
_SER1_ADDR	=	0x0097
_ADC_DMA	=	0xedec
_ADC_DMA_AL	=	0x00ec
_ADC_DMA_AH	=	0x00ed
_ADC_DMA_CN	=	0x00ee
_ADC_CK_SE	=	0x00ef
_ADC_STAT	=	0x00f1
_ADC_CTRL	=	0x00f2
_ADC_CHANN	=	0x00f3
_ADC_FIFO	=	0xf5f4
_ADC_FIFO_L	=	0x00f4
_ADC_FIFO_H	=	0x00f5
_ADC_SETUP	=	0x00f6
_ADC_EX_SW	=	0x00f7
_USB_RX_LEN	=	0x00d1
_UEP1_CTRL	=	0x00d2
_UEP1_T_LEN	=	0x00d3
_UEP2_CTRL	=	0x00d4
_UEP2_T_LEN	=	0x00d5
_UEP3_CTRL	=	0x00d6
_UEP3_T_LEN	=	0x00d7
_USB_INT_FG	=	0x00d8
_USB_INT_ST	=	0x00d9
_USB_MIS_ST	=	0x00da
_USB_HUB_ST	=	0x00db
_UEP0_CTRL	=	0x00dc
_UEP0_T_LEN	=	0x00dd
_UEP4_CTRL	=	0x00de
_UEP4_T_LEN	=	0x00df
_USB_INT_EN	=	0x00e1
_USB_CTRL	=	0x00e2
_USB_DEV_AD	=	0x00e3
_UDEV_CTRL	=	0x00e4
_UHUB1_CTRL	=	0x00e5
_USB_DMA	=	0xe7e6
_USB_DMA_AL	=	0x00e6
_USB_DMA_AH	=	0x00e7
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_EA	=	0x00af
_E_DIS	=	0x00ae
_ET2	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_PH_FLAG	=	0x00bf
_PL_FLAG	=	0x00be
_PT2	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_IE_WDOG	=	0x00ef
_IE_GPIO	=	0x00ee
_IE_PWM1	=	0x00ed
_IE_UART1	=	0x00ec
_IE_ADC	=	0x00eb
_IE_USB	=	0x00ea
_IE_TMR3	=	0x00e9
_IE_SPI0	=	0x00e8
_UDCD	=	0x0087
_URI	=	0x0086
_UDSR	=	0x0085
_UCTS	=	0x0084
_TXD_	=	0x0083
_RXD_	=	0x0082
_URTS	=	0x0081
_UDTR	=	0x0080
_P0_7	=	0x0087
_P0_6	=	0x0086
_P0_5	=	0x0085
_P0_4	=	0x0084
_P0_3	=	0x0083
_P0_2	=	0x0082
_P0_1	=	0x0081
_P0_0	=	0x0080
_AIN7	=	0x0097
_AIN6	=	0x0096
_AIN5	=	0x0095
_AIN4	=	0x0094
_AIN3	=	0x0093
_AIN2	=	0x0092
_AIN1	=	0x0091
_AIN0	=	0x0090
_SCK	=	0x0097
_MISO	=	0x0096
_MOSI	=	0x0095
_SCS	=	0x0094
_PWM3	=	0x0092
_CAP3	=	0x0092
_T2EX	=	0x0091
_CAP2	=	0x0091
_T2	=	0x0090
_CAP1	=	0x0090
_P1_7	=	0x0097
_P1_6	=	0x0096
_P1_5	=	0x0095
_P1_4	=	0x0094
_P1_3	=	0x0093
_P1_2	=	0x0092
_P1_1	=	0x0091
_P1_0	=	0x0090
_TXD1	=	0x00a7
_DA7	=	0x00a7
_RXD1	=	0x00a6
_TNOW	=	0x00a5
_PWM2	=	0x00a5
_T2EX_	=	0x00a5
_CAP2_	=	0x00a5
_PWM1	=	0x00a4
_SCK1	=	0x00a3
_MISO1	=	0x00a2
_MOSI1	=	0x00a1
_P2_7	=	0x00a7
_P2_6	=	0x00a6
_P2_5	=	0x00a5
_P2_4	=	0x00a4
_P2_3	=	0x00a3
_P2_2	=	0x00a2
_P2_1	=	0x00a1
_P2_0	=	0x00a0
_RD	=	0x00b7
_WR	=	0x00b6
_DA6	=	0x00b5
_T1	=	0x00b5
_LEDC	=	0x00b4
_XCS0	=	0x00b4
_T0	=	0x00b4
_LED1	=	0x00b3
_INT1	=	0x00b3
_LED0	=	0x00b2
_INT0	=	0x00b2
_TXD	=	0x00b1
_RXD	=	0x00b0
_P3_7	=	0x00b7
_P3_6	=	0x00b6
_P3_5	=	0x00b5
_P3_4	=	0x00b4
_P3_3	=	0x00b3
_P3_2	=	0x00b2
_P3_1	=	0x00b1
_P3_0	=	0x00b0
_SCK_	=	0x00c7
_SCS_	=	0x00c6
_PWM2_	=	0x00c5
_LED3	=	0x00c4
_TNOW_	=	0x00c4
_TXD1_	=	0x00c4
_PWM1_	=	0x00c3
_PWM3_	=	0x00c2
_CAP3_	=	0x00c2
_LED2	=	0x00c0
_RXD1_	=	0x00c0
_P4_OUT_7	=	0x00c7
_P4_OUT_6	=	0x00c6
_P4_OUT_5	=	0x00c5
_P4_OUT_4	=	0x00c4
_P4_OUT_3	=	0x00c3
_P4_OUT_2	=	0x00c2
_P4_OUT_1	=	0x00c1
_P4_OUT_0	=	0x00c0
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_TF2	=	0x00cf
_CAP1F	=	0x00cf
_EXF2	=	0x00ce
_RCLK	=	0x00cd
_TCLK	=	0x00cc
_EXEN2	=	0x00cb
_TR2	=	0x00ca
_C_T2	=	0x00c9
_CP_RL2	=	0x00c8
_S0_FST_ACT	=	0x00ff
_S0_IF_OV	=	0x00fe
_S0_IF_FIRST	=	0x00fd
_S0_IF_BYTE	=	0x00fc
_S0_FREE	=	0x00fb
_S0_T_FIFO	=	0x00fa
_S0_R_FIFO1	=	0x00f9
_S0_R_FIFO0	=	0x00f8
_U_IS_NAK	=	0x00df
_U_TOG_OK	=	0x00de
_U_SIE_FREE	=	0x00dd
_UIF_FIFO_OV	=	0x00dc
_UIF_HST_SOF	=	0x00db
_UIF_SUSPEND	=	0x00da
_UIF_TRANSFER	=	0x00d9
_UIF_DETECT	=	0x00d8
_UIF_BUS_RST	=	0x00d8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_loop_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
_pUEP4_1_MOD	=	0x2546
_pUEP2_3_MOD	=	0x2547
_pUEP0_DMA_H	=	0x2548
_pUEP0_DMA_L	=	0x2549
_pUEP1_DMA_H	=	0x254a
_pUEP1_DMA_L	=	0x254b
_pUEP2_DMA_H	=	0x254c
_pUEP2_DMA_L	=	0x254d
_pUEP3_DMA_H	=	0x254e
_pUEP3_DMA_L	=	0x254f
_pLED_STAT	=	0x2980
_pLED_CTRL	=	0x2981
_pLED_DATA	=	0x2982
_pLED_CK_SE	=	0x2983
_pLED_DMA_AH	=	0x2984
_pLED_DMA_AL	=	0x2985
_pLED_DMA_CN	=	0x2986
_pLED_DMA_XH	=	0x2988
_pLED_DMA_XL	=	0x2989
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_UEP4_1_MOD	=	0x2446
_UEP2_3_MOD	=	0x2447
_UEP0_DMA_H	=	0x2448
_UEP0_DMA_L	=	0x2449
_UEP1_DMA_H	=	0x244a
_UEP1_DMA_L	=	0x244b
_UEP2_DMA_H	=	0x244c
_UEP2_DMA_L	=	0x244d
_UEP3_DMA_H	=	0x244e
_UEP3_DMA_L	=	0x244f
_LED_STAT	=	0x2880
_LED_CTRL	=	0x2881
_LED_DATA	=	0x2882
_LED_CK_SE	=	0x2883
_LED_DMA_AH	=	0x2884
_LED_DMA_AL	=	0x2885
_LED_DMA_CN	=	0x2886
_LED_DMA_XH	=	0x2888
_LED_DMA_XL	=	0x2889
_tempSensor::
	.ds 1
_voltageCtrl::
	.ds 12
_tempCtrl::
	.ds 15
_fanMonitor::
	.ds 15
_usbCtrl::
	.ds 99
_sysStatus::
	.ds 23
_loop_usb_control_mode_65538_225:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_last_temp_update::
	.ds 4
_last_status_send::
	.ds 4
_last_voltage_check::
	.ds 4
_stall_detect_time::
	.ds 4
_stall_retry_count::
	.ds 1
_usb_was_connected::
	.ds 1
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'setup'
;------------------------------------------------------------
;init_voltage              Allocated with name '_setup_init_voltage_65537_221'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:50: void setup() {
;	-----------------------------------------
;	 function setup
;	-----------------------------------------
_setup:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:52: DS18B20_init(&tempSensor, PIN_TEMP_SENSOR);
	mov	dptr,#_DS18B20_init_PARM_2
	mov	a,#0x0f
	movx	@dptr,a
	mov	dptr,#_tempSensor
	mov	b,#0x00
	lcall	_DS18B20_init
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:56: USBController_begin(&usbCtrl);
	mov	dptr,#_usbCtrl
	mov	b,#0x00
	lcall	_USBController_begin
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:57: delay(500);
	mov	dptr,#0x01f4
	clr	a
	mov	b,a
	lcall	_delay
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:59: LOG_LINE("=================================");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_serial_println_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:60: LOG_LINE("CH552G Fan Control System v1.0");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_serial_println_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:61: LOG_LINE("=================================");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_serial_println_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:64: LOG_LINE("[INIT] Voltage controller...");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_serial_println_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:65: VoltageController_begin(&voltageCtrl, PIN_PWM_OUTPUT, PIN_VOLTAGE_ADC);
	mov	dptr,#_VoltageController_begin_PARM_2
	mov	a,#0x22
	movx	@dptr,a
	mov	dptr,#_VoltageController_begin_PARM_3
	mov	a,#0x0b
	movx	@dptr,a
	mov	dptr,#_voltageCtrl
	mov	b,#0x00
	lcall	_VoltageController_begin
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:66: delay(100);
	mov	dptr,#(0x64&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:70: LOG_LINE("[INIT] Temperature sensor...");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_serial_println_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:71: TempController_begin(&tempCtrl, &tempSensor, &voltageCtrl);
	mov	dptr,#_TempController_begin_PARM_2
	mov	a,#_tempSensor
	movx	@dptr,a
	mov	a,#(_tempSensor >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_TempController_begin_PARM_3
	mov	a,#_voltageCtrl
	movx	@dptr,a
	mov	a,#(_voltageCtrl >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_tempCtrl
	mov	b,#0x00
	lcall	_TempController_begin
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:72: delay(200);
	mov	dptr,#(0xc8&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:74: if (TempController_isReady(&tempCtrl)) {
	mov	dptr,#_tempCtrl
	mov	b,#0x00
	lcall	_TempController_isReady
	mov	a,dpl
	jz	00102$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:76: serial_print_str("[OK] Temp sensor ready: ");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_serial_print_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:77: serial_print_float(TempController_getTemperature(&tempCtrl), 2);
	mov	dptr,#_tempCtrl
	mov	b,#0x00
	lcall	_TempController_getTemperature
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_serial_print_float_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_serial_print_float
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:78: serial_println_str(" C");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_serial_println_str
	sjmp	00103$
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:81: LOG_LINE("[WARN] Temp sensor not ready!");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_serial_println_str
00103$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:90: LOG_LINE("[INIT] Fan monitor...");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_serial_println_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:91: FanMonitor_begin(&fanMonitor, PIN_FAN_TACH);
	mov	dptr,#_FanMonitor_begin_PARM_2
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#_fanMonitor
	mov	b,#0x00
	lcall	_FanMonitor_begin
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:92: delay(100);
	mov	dptr,#(0x64&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:95: float init_voltage = VoltageController_readVoltage(&voltageCtrl);
	mov	dptr,#_voltageCtrl
	mov	b,#0x00
	lcall	_VoltageController_readVoltage
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:97: serial_print_str("[INFO] Initial voltage: ");
	mov	dptr,#___str_8
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_serial_print_str
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:98: serial_print_float(init_voltage, 2);
	mov	dptr,#_serial_print_float_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_serial_print_float
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:99: serial_println_str(" V");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_serial_println_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:103: sysStatus.temperature = TempController_getTemperature(&tempCtrl);
	mov	dptr,#_tempCtrl
	mov	b,#0x00
	lcall	_TempController_getTemperature
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_sysStatus
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:104: sysStatus.voltage = init_voltage;
	mov	dptr,#(_sysStatus + 0x0004)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:105: sysStatus.target_voltage = VOUT_DEFAULT;
	mov	dptr,#(_sysStatus + 0x0008)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	a,#0x40
	inc	dptr
	movx	@dptr,a
	inc	a
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:106: sysStatus.rpm = 0;
	mov	dptr,#(_sysStatus + 0x000c)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:107: sysStatus.target_rpm = RPM_TARGET_MIN;
	mov	dptr,#(_sysStatus + 0x0010)
	mov	a,#0x58
	movx	@dptr,a
	mov	a,#0x02
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:108: sysStatus.pwm_duty = 0;
	mov	dptr,#(_sysStatus + 0x0014)
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:109: sysStatus.error_flags = ERROR_NONE;
	mov	dptr,#(_sysStatus + 0x0015)
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:110: sysStatus.auto_mode = true;
	mov	dptr,#(_sysStatus + 0x0016)
	inc	a
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:112: LOG_LINE("[READY] System started!");
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_serial_println_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:113: LOG_LINE("=================================");
	mov	dptr,#___str_0
	mov	b,#0x80
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:114: }
	ljmp	_serial_println_str
;------------------------------------------------------------
;Allocation info for local variables in function 'loop'
;------------------------------------------------------------
;now                       Allocated with name '_loop_now_65536_222'
;usb_connected             Allocated with name '_loop_usb_connected_65537_223'
;usb_control_mode          Allocated with name '_loop_usb_control_mode_65538_225'
;target_v                  Allocated with name '_loop_target_v_196610_231'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:118: void loop() {
;	-----------------------------------------
;	 function loop
;	-----------------------------------------
_loop:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:119: unsigned long now = millis();
	lcall	_millis
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:123: USBController_update(&usbCtrl);
	mov	dptr,#_usbCtrl
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_USBController_update
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:126: bool usb_connected = USBController_isConnected(&usbCtrl);
	mov	dptr,#_usbCtrl
	mov	b,#0x00
	lcall	_USBController_isConnected
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:127: if (usb_was_connected && !usb_connected) {
	mov	dptr,#_usb_was_connected
	movx	a,@dptr
	jz	00102$
	mov	a,r3
	jnz	00102$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:129: serial_println_str("[WARN] USB disconnected! Switching to AUTO mode");
	mov	dptr,#___str_11
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_serial_println_str
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:130: sysStatus.error_flags |= ERROR_USB_TIMEOUT;
	mov	dptr,#(_sysStatus + 0x0015)
	movx	a,@dptr
	orl	a,#0x10
	mov	r2,a
	movx	@dptr,a
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:133: usb_was_connected = usb_connected;
	mov	dptr,#_usb_was_connected
	mov	a,r3
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:136: bool usb_control_mode = usb_connected && USBController_isOverrideActive(&usbCtrl);
	mov	a,r3
	jz	00147$
	mov	dptr,#_usbCtrl
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_USBController_isOverrideActive
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jnz	00148$
00147$:
;	assignBit
	clr	_loop_sloc0_1_0
	sjmp	00149$
00148$:
;	assignBit
	setb	_loop_sloc0_1_0
00149$:
	mov	dptr,#_loop_usb_control_mode_65538_225
	mov	c,_loop_sloc0_1_0
	clr	a
	rlc	a
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:137: sysStatus.auto_mode = !usb_control_mode;
	mov	dptr,#_loop_usb_control_mode_65538_225
	movx	a,@dptr
	cjne	a,#0x01,00240$
00240$:
	mov	_loop_sloc0_1_0,c
	mov	dptr,#(_sysStatus + 0x0016)
	clr	a
	rlc	a
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:140: if (usbCtrl.reset_requested) {
	mov	dptr,#(_usbCtrl + 0x0061)
	movx	a,@dptr
	jz	00105$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:141: LOG_LINE("[INFO] Reset command received, unlocking output");
	mov	dptr,#___str_12
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_serial_println_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:142: VoltageController_unlockOutput(&voltageCtrl);
	mov	dptr,#_voltageCtrl
	mov	b,#0x00
	lcall	_VoltageController_unlockOutput
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:143: sysStatus.error_flags = ERROR_NONE;  // 清除所有错误标志
	mov	dptr,#(_sysStatus + 0x0015)
	clr	a
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:144: stall_retry_count = 0;
	mov	dptr,#_stall_retry_count
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:145: stall_detect_time = 0;
	mov	dptr,#_stall_detect_time
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:146: usbCtrl.reset_requested = false;
	mov	dptr,#(_usbCtrl + 0x0061)
	movx	@dptr,a
00105$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:153: if (now - last_temp_update >= TEMP_UPDATE_INTERVAL) {
	mov	dptr,#_last_temp_update
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	clr	c
	subb	a,r0
	mov	r0,a
	mov	a,r5
	subb	a,r1
	mov	r1,a
	mov	a,r6
	subb	a,r2
	mov	r2,a
	mov	a,r7
	subb	a,r3
	mov	r3,a
	clr	c
	mov	a,r0
	subb	a,#0xd0
	mov	a,r1
	subb	a,#0x07
	mov	a,r2
	subb	a,#0x00
	mov	a,r3
	subb	a,#0x00
	jnc	00242$
	ljmp	00113$
00242$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:156: if (sysStatus.auto_mode) {
	mov	dptr,#(_sysStatus + 0x0016)
	movx	a,@dptr
	jz	00110$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:158: if (!TempController_update(&tempCtrl)) {
	mov	dptr,#_tempCtrl
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_TempController_update
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jnz	00107$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:159: sysStatus.error_flags |= ERROR_TEMP_SENSOR;
	mov	dptr,#(_sysStatus + 0x0015)
	movx	a,@dptr
	orl	a,#0x01
	mov	r3,a
	movx	@dptr,a
	sjmp	00111$
00107$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:161: sysStatus.error_flags &= ~ERROR_TEMP_SENSOR;
	mov	dptr,#(_sysStatus + 0x0015)
	movx	a,@dptr
	anl	a,#0xfe
	mov	r3,a
	movx	@dptr,a
	sjmp	00111$
00110$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:165: float target_v = USBController_getTargetVoltage(&usbCtrl);
	mov	dptr,#_usbCtrl
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_USBController_getTargetVoltage
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:166: VoltageController_setVoltage(&voltageCtrl, target_v);
	mov	dptr,#_VoltageController_setVoltage_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_voltageCtrl
	mov	b,#0x00
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_VoltageController_setVoltage
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:167: sysStatus.target_voltage = target_v;
	mov	dptr,#(_sysStatus + 0x0008)
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
00111$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:180: last_temp_update = now;
	mov	dptr,#_last_temp_update
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00113$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:184: if (now - last_voltage_check >= VOLTAGE_CHECK_INTERVAL) {
	mov	dptr,#_last_voltage_check
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	clr	c
	subb	a,r0
	mov	r0,a
	mov	a,r5
	subb	a,r1
	mov	r1,a
	mov	a,r6
	subb	a,r2
	mov	r2,a
	mov	a,r7
	subb	a,r3
	mov	r3,a
	clr	c
	mov	a,r0
	subb	a,#0xf4
	mov	a,r1
	subb	a,#0x01
	mov	a,r2
	subb	a,#0x00
	mov	a,r3
	subb	a,#0x00
	jc	00118$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:185: VoltageController_updateVoltage(&voltageCtrl);
	mov	dptr,#_voltageCtrl
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_VoltageController_updateVoltage
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:188: if (VoltageController_isVoltageAbnormal(&voltageCtrl)) {
	mov	dptr,#_voltageCtrl
	mov	b,#0x00
	lcall	_VoltageController_isVoltageAbnormal
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00115$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:189: sysStatus.error_flags |= ERROR_VOLTAGE_ABNORMAL;
	mov	dptr,#(_sysStatus + 0x0015)
	movx	a,@dptr
	orl	a,#0x08
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:191: VoltageController_lockOutput(&voltageCtrl);
	mov	dptr,#_voltageCtrl
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_VoltageController_lockOutput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:192: LOG_LINE("[ERROR] Voltage abnormal! Output locked!");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_serial_println_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:193: LOG_LINE("[ERROR] Please power cycle or send reset command");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_serial_println_str
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00116$
00115$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:195: sysStatus.error_flags &= ~ERROR_VOLTAGE_ABNORMAL;
	mov	dptr,#(_sysStatus + 0x0015)
	movx	a,@dptr
	anl	a,#0xf7
	mov	r3,a
	movx	@dptr,a
00116$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:198: last_voltage_check = now;
	mov	dptr,#_last_voltage_check
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00118$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:202: FanMonitor_updateRPM(&fanMonitor);
	mov	dptr,#_fanMonitor
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_FanMonitor_updateRPM
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:205: if (FanMonitor_isStalled(&fanMonitor)) {
	mov	dptr,#_fanMonitor
	mov	b,#0x00
	lcall	_FanMonitor_isStalled
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jnz	00247$
	ljmp	00129$
00247$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:206: sysStatus.error_flags |= ERROR_FAN_STALLED;
	mov	dptr,#(_sysStatus + 0x0015)
	movx	a,@dptr
	orl	a,#0x02
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:209: if (stall_detect_time == 0) {
	mov	dptr,#_stall_detect_time
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00120$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:210: stall_detect_time = now;
	mov	dptr,#_stall_detect_time
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:211: LOG_LINE("[WARN] Fan stalled detected!");
	mov	dptr,#___str_15
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_serial_println_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:214: VoltageController_setVoltage(&voltageCtrl, VOUT_MIN);
	mov	dptr,#_VoltageController_setVoltage_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	a,#0xa0
	inc	dptr
	movx	@dptr,a
	mov	a,#0x40
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_voltageCtrl
	mov	b,#0x00
	lcall	_VoltageController_setVoltage
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00120$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:218: if (now - stall_detect_time >= STALL_RETRY_DELAY) {
	mov	dptr,#_stall_detect_time
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	clr	c
	subb	a,r0
	mov	r0,a
	mov	a,r5
	subb	a,r1
	mov	r1,a
	mov	a,r6
	subb	a,r2
	mov	r2,a
	mov	a,r7
	subb	a,r3
	mov	r3,a
	clr	c
	mov	a,r0
	subb	a,#0xb8
	mov	a,r1
	subb	a,#0x0b
	mov	a,r2
	subb	a,#0x00
	mov	a,r3
	subb	a,#0x00
	jnc	00249$
	ljmp	00130$
00249$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:219: stall_retry_count++;
	mov	dptr,#_stall_retry_count
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:221: if (stall_retry_count >= STALL_MAX_RETRIES) {
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x02,00250$
00250$:
	jc	00122$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:223: LOG_LINE("[ERROR] Fan stall retry limit reached! Output locked.");
	mov	dptr,#___str_16
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_serial_println_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:224: VoltageController_lockOutput(&voltageCtrl);
	mov	dptr,#_voltageCtrl
	mov	b,#0x00
	lcall	_VoltageController_lockOutput
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00130$
00122$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:228: serial_print_str("[INFO] Fan stall retry ");
	mov	dptr,#___str_17
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_serial_print_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:229: serial_print_int(stall_retry_count);
	mov	dptr,#_stall_retry_count
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	mov	dpl,r3
	mov	dph,r2
	lcall	_serial_print_int
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:230: serial_println_str("...");
	mov	dptr,#___str_18
	mov	b,#0x80
	lcall	_serial_println_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:232: FanMonitor_resetStall(&fanMonitor);
	mov	dptr,#_fanMonitor
	mov	b,#0x00
	lcall	_FanMonitor_resetStall
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:233: stall_detect_time = 0;
	mov	dptr,#_stall_detect_time
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	sjmp	00130$
00129$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:238: if (stall_detect_time != 0) {
	mov	dptr,#_stall_detect_time
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00130$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:239: LOG_LINE("[OK] Fan recovered!");
	mov	dptr,#___str_19
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_serial_println_str
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:240: sysStatus.error_flags &= ~ERROR_FAN_STALLED;
	mov	dptr,#(_sysStatus + 0x0015)
	movx	a,@dptr
	anl	a,#0xfd
	mov	r3,a
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:241: stall_detect_time = 0;
	mov	dptr,#_stall_detect_time
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:242: stall_retry_count = 0;
	mov	dptr,#_stall_retry_count
	movx	@dptr,a
00130$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:248: if (TempController_isOverheat(&tempCtrl)) {
	mov	dptr,#_tempCtrl
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_TempController_isOverheat
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00136$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:249: sysStatus.error_flags |= ERROR_OVERHEAT;
	mov	dptr,#(_sysStatus + 0x0015)
	movx	a,@dptr
	orl	a,#0x04
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:250: LOG_LINE("[WARN] Overheating detected!");
	mov	dptr,#___str_20
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_serial_println_str
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:255: if (usb_control_mode) {
	mov	dptr,#_loop_usb_control_mode_65538_225
	movx	a,@dptr
	jz	00137$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:256: usbCtrl.override_active = false;
	mov	dptr,#(_usbCtrl + 0x005d)
	clr	a
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:257: LOG_LINE("[INFO] Overheat: forced AUTO mode");
	mov	dptr,#___str_21
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_serial_println_str
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00137$
00136$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:262: if (sysStatus.error_flags & ERROR_OVERHEAT) {
	mov	dptr,#(_sysStatus + 0x0015)
	movx	a,@dptr
	mov	r3,a
	jnb	acc.2,00137$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:263: sysStatus.error_flags &= ~ERROR_OVERHEAT;
	anl	ar3,#0xfb
	mov	dptr,#(_sysStatus + 0x0015)
	mov	a,r3
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:264: LOG_LINE("[OK] Temperature recovered, external control allowed again");
	mov	dptr,#___str_22
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_serial_println_str
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00137$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:270: sysStatus.temperature = TempController_getTemperature(&tempCtrl);
	mov	dptr,#_tempCtrl
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_TempController_getTemperature
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	dptr,#_sysStatus
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:271: sysStatus.voltage = VoltageController_getCurrentVoltage(&voltageCtrl);
	mov	dptr,#_voltageCtrl
	mov	b,#0x00
	lcall	_VoltageController_getCurrentVoltage
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	dptr,#(_sysStatus + 0x0004)
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:272: sysStatus.target_voltage = VoltageController_getTargetVoltage(&voltageCtrl);
	mov	dptr,#_voltageCtrl
	mov	b,#0x00
	lcall	_VoltageController_getTargetVoltage
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	dptr,#(_sysStatus + 0x0008)
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:273: sysStatus.rpm = FanMonitor_getRPM(&fanMonitor);
	mov	dptr,#_fanMonitor
	mov	b,#0x00
	lcall	_FanMonitor_getRPM
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	dptr,#(_sysStatus + 0x000c)
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:274: sysStatus.target_rpm = TempController_getTargetRPM(&tempCtrl);
	mov	dptr,#_tempCtrl
	mov	b,#0x00
	lcall	_TempController_getTargetRPM
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	dptr,#(_sysStatus + 0x0010)
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:275: sysStatus.pwm_duty = VoltageController_getPWMDuty(&voltageCtrl);
	mov	dptr,#_voltageCtrl
	mov	b,#0x00
	lcall	_VoltageController_getPWMDuty
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#(_sysStatus + 0x0014)
	mov	a,r3
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:280: if (usbCtrl.status_requested) {
	mov	dptr,#(_usbCtrl + 0x0062)
	movx	a,@dptr
	jz	00139$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:281: USBController_sendStatus(&usbCtrl, &sysStatus);
	mov	dptr,#_USBController_sendStatus_PARM_2
	mov	a,#_sysStatus
	movx	@dptr,a
	mov	a,#(_sysStatus >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_usbCtrl
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_USBController_sendStatus
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:282: usbCtrl.status_requested = false;
	mov	dptr,#(_usbCtrl + 0x0062)
	clr	a
	movx	@dptr,a
00139$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:285: if (now - last_status_send >= STATUS_SEND_INTERVAL) {
	mov	dptr,#_last_status_send
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	clr	c
	subb	a,r0
	mov	r0,a
	mov	a,r5
	subb	a,r1
	mov	r1,a
	mov	a,r6
	subb	a,r2
	mov	r2,a
	mov	a,r7
	subb	a,r3
	mov	r3,a
	clr	c
	mov	a,r0
	subb	a,#0xe8
	mov	a,r1
	subb	a,#0x03
	mov	a,r2
	subb	a,#0x00
	mov	a,r3
	subb	a,#0x00
	jnc	00257$
	ljmp	00144$
00257$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:286: if (USBController_isConnected(&usbCtrl)) {
	mov	dptr,#_usbCtrl
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_USBController_isConnected
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00141$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:287: USBController_sendStatus(&usbCtrl, &sysStatus);
	mov	dptr,#_USBController_sendStatus_PARM_2
	mov	a,#_sysStatus
	movx	@dptr,a
	mov	a,#(_sysStatus >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_usbCtrl
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_USBController_sendStatus
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00142$
00141$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:291: serial_print_str("Temp:");
	mov	dptr,#___str_23
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_serial_print_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:292: serial_print_float(sysStatus.temperature, 2);
	mov	dptr,#_sysStatus
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_serial_print_float_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	_serial_print_float
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:293: serial_print_str("C | Volt:");
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_serial_print_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:294: serial_print_float(sysStatus.voltage, 2);
	mov	dptr,#(_sysStatus + 0x0004)
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_serial_print_float_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	_serial_print_float
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:295: serial_print_str("V | RPM:");
	mov	dptr,#___str_25
	mov	b,#0x80
	lcall	_serial_print_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:296: serial_print_uint(sysStatus.rpm);
	mov	dptr,#(_sysStatus + 0x000c)
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	_serial_print_uint
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:297: serial_print_str(" | Mode:");
	mov	dptr,#___str_26
	mov	b,#0x80
	lcall	_serial_print_str
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:298: serial_println_str(sysStatus.auto_mode ? "AUTO" : "USB");
	mov	dptr,#(_sysStatus + 0x0016)
	movx	a,@dptr
	jz	00150$
	mov	r2,#___str_27
	mov	r3,#(___str_27 >> 8)
	sjmp	00151$
00150$:
	mov	r2,#___str_28
	mov	r3,#(___str_28 >> 8)
00151$:
	mov	ar1,r3
	mov	r3,#0x80
	mov	dpl,r2
	mov	dph,r1
	mov	b,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_serial_println_str
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00142$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:302: last_status_send = now;
	mov	dptr,#_last_status_send
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00144$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:307: delay(50);
	mov	dptr,#(0x32&0x00ff)
	clr	a
	mov	b,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:308: }
	ljmp	_delay
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "================================="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "CH552G Fan Control System v1.0"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "[INIT] Voltage controller..."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "[INIT] Temperature sensor..."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "[OK] Temp sensor ready: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii " C"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "[WARN] Temp sensor not ready!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "[INIT] Fan monitor..."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "[INFO] Initial voltage: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii " V"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "[READY] System started!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "[WARN] USB disconnected! Switching to AUTO mode"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "[INFO] Reset command received, unlocking output"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "[ERROR] Voltage abnormal! Output locked!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "[ERROR] Please power cycle or send reset command"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "[WARN] Fan stalled detected!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "[ERROR] Fan stall retry limit reached! Output locked."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "[INFO] Fan stall retry "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "..."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "[OK] Fan recovered!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "[WARN] Overheating detected!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "[INFO] Overheat: forced AUTO mode"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "[OK] Temperature recovered, external control allowed again"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "Temp:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "C | Volt:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "V | RPM:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii " | Mode:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii "AUTO"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.ascii "USB"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__last_temp_update:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
__xinit__last_status_send:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
__xinit__last_voltage_check:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
__xinit__stall_detect_time:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
__xinit__stall_retry_count:
	.db #0x00	; 0
__xinit__usb_was_connected:
	.db #0x00	;  0
	.area CABS    (ABS,CODE)
