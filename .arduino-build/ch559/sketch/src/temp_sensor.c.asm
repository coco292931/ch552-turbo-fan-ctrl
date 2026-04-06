;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13407 (MINGW32)
;--------------------------------------------------------
	.module temp_sensor
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _DS18B20_setAlarmTemperature
	.globl _DS18B20_setResolution
	.globl _DS18B20_readTemperatureFast
	.globl _DS18B20_begin
	.globl _VoltageController_setVoltage
	.globl _delay
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
	.globl _TempController_begin_PARM_3
	.globl _TempController_begin_PARM_2
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
	.globl _TempController_begin
	.globl _TempController_update
	.globl _TempController_isOverheat
	.globl _TempController_getTemperature
	.globl _TempController_getTargetRPM
	.globl _TempController_isReady
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
_TempController_mapTempToRPM_sloc0_1_0:
	.ds 4
_TempController_begin_sloc0_1_0:
	.ds 3
_TempController_begin_sloc1_1_0:
	.ds 3
_TempController_begin_sloc2_1_0:
	.ds 3
_TempController_update_sloc0_1_0:
	.ds 4
_TempController_update_sloc1_1_0:
	.ds 4
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
_TempController_begin_sloc3_1_0:
	.ds 1
_TempController_isOverheat_sloc0_1_0:
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
_TempController_mapTempToVoltageLinear_temp_65536_192:
	.ds 4
_TempController_mapTempToVoltageLinear_voltage_65536_193:
	.ds 4
_TempController_mapTempToVoltageQuadratic_temp_65536_194:
	.ds 4
_TempController_mapTempToVoltageQuadratic_norm_temp_65536_195:
	.ds 4
_TempController_mapTempToVoltageQuadratic_voltage_65536_195:
	.ds 4
_TempController_mapTempToRPM_temp_65536_196:
	.ds 4
_TempController_begin_PARM_2:
	.ds 3
_TempController_begin_PARM_3:
	.ds 3
_TempController_begin_tc_65536_198:
	.ds 3
_TempController_update_tc_65536_202:
	.ds 3
_TempController_isOverheat_tc_65536_208:
	.ds 3
_TempController_getTemperature_tc_65536_210:
	.ds 3
_TempController_getTargetRPM_tc_65536_212:
	.ds 3
_TempController_isReady_tc_65536_214:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
;Allocation info for local variables in function 'TempController_mapTempToVoltageLinear'
;------------------------------------------------------------
;temp                      Allocated with name '_TempController_mapTempToVoltageLinear_temp_65536_192'
;voltage                   Allocated with name '_TempController_mapTempToVoltageLinear_voltage_65536_193'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:10: static float TempController_mapTempToVoltageLinear(float temp) {
;	-----------------------------------------
;	 function TempController_mapTempToVoltageLinear
;	-----------------------------------------
_TempController_mapTempToVoltageLinear:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_TempController_mapTempToVoltageLinear_temp_65536_192
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:11: float voltage = TEMP_VOLTAGE_K * temp + TEMP_VOLTAGE_B;
	mov	dptr,#_TempController_mapTempToVoltageLinear_temp_65536_192
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	mov	a,#0x3f
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x20
	push	acc
	mov	a,#0x41
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_TempController_mapTempToVoltageLinear_voltage_65536_193
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:12: if (voltage < VOUT_MIN) voltage = VOUT_MIN;
	clr	a
	push	acc
	push	acc
	mov	a,#0xa0
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00102$
	mov	dptr,#_TempController_mapTempToVoltageLinear_voltage_65536_193
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
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:13: if (voltage > VOUT_MAX) voltage = VOUT_MAX;
	mov	dptr,#_TempController_mapTempToVoltageLinear_voltage_65536_193
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x40
	mov	a,#0x41
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00104$
	mov	dptr,#_TempController_mapTempToVoltageLinear_voltage_65536_193
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
00104$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:14: return voltage;
	mov	dptr,#_TempController_mapTempToVoltageLinear_voltage_65536_193
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:15: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TempController_mapTempToVoltageQuadratic'
;------------------------------------------------------------
;temp                      Allocated with name '_TempController_mapTempToVoltageQuadratic_temp_65536_194'
;norm_temp                 Allocated with name '_TempController_mapTempToVoltageQuadratic_norm_temp_65536_195'
;voltage                   Allocated with name '_TempController_mapTempToVoltageQuadratic_voltage_65536_195'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:17: static float TempController_mapTempToVoltageQuadratic(float temp) {
;	-----------------------------------------
;	 function TempController_mapTempToVoltageQuadratic
;	-----------------------------------------
_TempController_mapTempToVoltageQuadratic:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_TempController_mapTempToVoltageQuadratic_temp_65536_194
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:18: float norm_temp = (temp - TEMP_MIN) / (TEMP_MAX - TEMP_MIN);
	mov	dptr,#_TempController_mapTempToVoltageQuadratic_temp_65536_194
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	a
	push	acc
	push	acc
	mov	a,#0xf0
	push	acc
	mov	a,#0x41
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x70
	push	acc
	mov	a,#0x41
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_TempController_mapTempToVoltageQuadratic_norm_temp_65536_195
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:21: if (norm_temp < 0.0f) norm_temp = 0.0f;
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00102$
	mov	dptr,#_TempController_mapTempToVoltageQuadratic_norm_temp_65536_195
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:22: if (norm_temp > 1.0f) norm_temp = 1.0f;
	mov	dptr,#_TempController_mapTempToVoltageQuadratic_norm_temp_65536_195
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3f
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00104$
	mov	dptr,#_TempController_mapTempToVoltageQuadratic_norm_temp_65536_195
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	a,#0x3f
	inc	dptr
	movx	@dptr,a
00104$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:24: voltage = VOUT_MIN + (VOUT_MAX - VOUT_MIN) * norm_temp * norm_temp;
	mov	dptr,#_TempController_mapTempToVoltageQuadratic_norm_temp_65536_195
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b,#0xe0
	mov	a,#0x40
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	mov	a,#0xa0
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_TempController_mapTempToVoltageQuadratic_voltage_65536_195
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:25: if (voltage < VOUT_MIN) voltage = VOUT_MIN;
	clr	a
	push	acc
	push	acc
	mov	a,#0xa0
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00106$
	mov	dptr,#_TempController_mapTempToVoltageQuadratic_voltage_65536_195
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
00106$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:26: if (voltage > VOUT_MAX) voltage = VOUT_MAX;
	mov	dptr,#_TempController_mapTempToVoltageQuadratic_voltage_65536_195
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x40
	mov	a,#0x41
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00108$
	mov	dptr,#_TempController_mapTempToVoltageQuadratic_voltage_65536_195
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
00108$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:27: return voltage;
	mov	dptr,#_TempController_mapTempToVoltageQuadratic_voltage_65536_195
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:28: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TempController_mapTempToRPM'
;------------------------------------------------------------
;sloc0                     Allocated with name '_TempController_mapTempToRPM_sloc0_1_0'
;temp                      Allocated with name '_TempController_mapTempToRPM_temp_65536_196'
;norm                      Allocated with name '_TempController_mapTempToRPM_norm_65536_197'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:30: static uint32_t TempController_mapTempToRPM(float temp) {
;	-----------------------------------------
;	 function TempController_mapTempToRPM
;	-----------------------------------------
_TempController_mapTempToRPM:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_TempController_mapTempToRPM_temp_65536_196
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:31: float norm = (temp - TEMP_MIN) / (TEMP_MAX - TEMP_MIN);
	mov	dptr,#_TempController_mapTempToRPM_temp_65536_196
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	a
	push	acc
	push	acc
	mov	a,#0xf0
	push	acc
	mov	a,#0x41
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x70
	push	acc
	mov	a,#0x41
	push	acc
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:32: norm = (norm < 0.0f) ? 0.0f : (norm > 1.0f) ? 1.0f : norm;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	_TempController_mapTempToRPM_sloc0_1_0,dpl
	mov	(_TempController_mapTempToRPM_sloc0_1_0 + 1),dph
	mov	(_TempController_mapTempToRPM_sloc0_1_0 + 2),b
	mov	(_TempController_mapTempToRPM_sloc0_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,_TempController_mapTempToRPM_sloc0_1_0
	mov	dph,(_TempController_mapTempToRPM_sloc0_1_0 + 1)
	mov	b,(_TempController_mapTempToRPM_sloc0_1_0 + 2)
	mov	a,(_TempController_mapTempToRPM_sloc0_1_0 + 3)
	lcall	___fslt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	jz	00103$
	mov	r0,#0x00
	mov	r1,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
	sjmp	00104$
00103$:
	push	_TempController_mapTempToRPM_sloc0_1_0
	push	(_TempController_mapTempToRPM_sloc0_1_0 + 1)
	push	(_TempController_mapTempToRPM_sloc0_1_0 + 2)
	push	(_TempController_mapTempToRPM_sloc0_1_0 + 3)
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3f
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00105$
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x80
	mov	r7,#0x3f
	sjmp	00106$
00105$:
	mov	r4,_TempController_mapTempToRPM_sloc0_1_0
	mov	r5,(_TempController_mapTempToRPM_sloc0_1_0 + 1)
	mov	r6,(_TempController_mapTempToRPM_sloc0_1_0 + 2)
	mov	r7,(_TempController_mapTempToRPM_sloc0_1_0 + 3)
00106$:
	mov	ar0,r4
	mov	ar1,r5
	mov	ar2,r6
	mov	ar3,r7
00104$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:33: return (uint32_t)(RPM_TARGET_MIN + (RPM_TARGET_MAX - RPM_TARGET_MIN) * norm);
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dptr,#0x0000
	mov	b,#0x16
	mov	a,#0x45
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x16
	push	acc
	mov	a,#0x44
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:34: }
	ljmp	___fs2ulong
;------------------------------------------------------------
;Allocation info for local variables in function 'TempController_begin'
;------------------------------------------------------------
;sloc0                     Allocated with name '_TempController_begin_sloc0_1_0'
;sloc1                     Allocated with name '_TempController_begin_sloc1_1_0'
;sloc2                     Allocated with name '_TempController_begin_sloc2_1_0'
;sensor                    Allocated with name '_TempController_begin_PARM_2'
;vc                        Allocated with name '_TempController_begin_PARM_3'
;tc                        Allocated with name '_TempController_begin_tc_65536_198'
;test_temp                 Allocated with name '_TempController_begin_test_temp_65537_200'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:36: void TempController_begin(TempController* tc, DS18B20* sensor, VoltageController* vc) {
;	-----------------------------------------
;	 function TempController_begin
;	-----------------------------------------
_TempController_begin:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_TempController_begin_tc_65536_198
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:37: tc->tempSensor = sensor;
	mov	dptr,#_TempController_begin_tc_65536_198
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_TempController_begin_PARM_2
	movx	a,@dptr
	mov	_TempController_begin_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_TempController_begin_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_TempController_begin_sloc0_1_0 + 2),a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_TempController_begin_sloc0_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_TempController_begin_sloc0_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_TempController_begin_sloc0_1_0 + 2)
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:38: tc->voltCtrl = vc;
	mov	a,#0x03
	add	a,r5
	mov	_TempController_begin_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_TempController_begin_sloc1_1_0 + 1),a
	mov	(_TempController_begin_sloc1_1_0 + 2),r7
	mov	dptr,#_TempController_begin_PARM_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,_TempController_begin_sloc1_1_0
	mov	dph,(_TempController_begin_sloc1_1_0 + 1)
	mov	b,(_TempController_begin_sloc1_1_0 + 2)
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:39: tc->current_temp = 25.0f;
	mov	a,#0x06
	add	a,r5
	mov	_TempController_begin_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_TempController_begin_sloc1_1_0 + 1),a
	mov	(_TempController_begin_sloc1_1_0 + 2),r7
	mov	dpl,_TempController_begin_sloc1_1_0
	mov	dph,(_TempController_begin_sloc1_1_0 + 1)
	mov	b,(_TempController_begin_sloc1_1_0 + 2)
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	mov	a,#0xc8
	lcall	__gptrput
	inc	dptr
	mov	a,#0x41
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:40: tc->target_rpm = RPM_TARGET_MIN;
	mov	a,#0x0a
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	mov	a,#0x58
	lcall	__gptrput
	inc	dptr
	mov	a,#0x02
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:41: tc->sensor_ready = false;
	mov	a,#0x0e
	add	a,r5
	mov	_TempController_begin_sloc2_1_0,a
	clr	a
	addc	a,r6
	mov	(_TempController_begin_sloc2_1_0 + 1),a
	mov	(_TempController_begin_sloc2_1_0 + 2),r7
	mov	dpl,_TempController_begin_sloc2_1_0
	mov	dph,(_TempController_begin_sloc2_1_0 + 1)
	mov	b,(_TempController_begin_sloc2_1_0 + 2)
	clr	a
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:44: DS18B20_begin(tc->tempSensor);
	mov	dpl,_TempController_begin_sloc0_1_0
	mov	dph,(_TempController_begin_sloc0_1_0 + 1)
	mov	b,(_TempController_begin_sloc0_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	lcall	_DS18B20_begin
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:47: DS18B20_setResolution(tc->tempSensor, DS18B20_RESOLUTION_10BIT);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_DS18B20_setResolution_PARM_2
	mov	a,#0x3f
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_DS18B20_setResolution
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:50: DS18B20_setAlarmTemperature(tc->tempSensor, TEMP_MAX, TEMP_MIN);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_DS18B20_setAlarmTemperature_PARM_2
	mov	a,#0x2d
	movx	@dptr,a
	mov	dptr,#_DS18B20_setAlarmTemperature_PARM_3
	mov	a,#0x1e
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_DS18B20_setAlarmTemperature
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:53: delay(200);
	mov	dptr,#(0xc8&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:54: float test_temp = DS18B20_readTemperatureFast(tc->tempSensor);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_DS18B20_readTemperatureFast
	mov	r6,dpl
	mov	r5,dph
	mov	r4,b
	mov	r7,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:55: if (test_temp != -999.0) {
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	clr	a
	push	acc
	mov	a,#0xc0
	push	acc
	mov	a,#0x79
	push	acc
	mov	a,#0xc4
	push	acc
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	mov	a,r7
	lcall	___fseq
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,dpl
	add	a,#0xff
	mov	_TempController_begin_sloc3_1_0,c
	jc	00103$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:56: tc->sensor_ready = true;
	mov	dpl,_TempController_begin_sloc2_1_0
	mov	dph,(_TempController_begin_sloc2_1_0 + 1)
	mov	b,(_TempController_begin_sloc2_1_0 + 2)
	mov	a,#0x01
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:57: tc->current_temp = test_temp;
	mov	dpl,_TempController_begin_sloc1_1_0
	mov	dph,(_TempController_begin_sloc1_1_0 + 1)
	mov	b,(_TempController_begin_sloc1_1_0 + 2)
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:59: }
	ljmp	__gptrput
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TempController_update'
;------------------------------------------------------------
;sloc0                     Allocated with name '_TempController_update_sloc0_1_0'
;sloc1                     Allocated with name '_TempController_update_sloc1_1_0'
;tc                        Allocated with name '_TempController_update_tc_65536_202'
;temp                      Allocated with name '_TempController_update_temp_65537_205'
;target_voltage            Allocated with name '_TempController_update_target_voltage_65538_207'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:61: bool TempController_update(TempController* tc) {
;	-----------------------------------------
;	 function TempController_update
;	-----------------------------------------
_TempController_update:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_TempController_update_tc_65536_202
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:62: if (!tc->sensor_ready) {
	mov	dptr,#_TempController_update_tc_65536_202
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0e
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:63: return false;
	jnz	00102$
	mov	dpl,a
	ret
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:66: float temp = DS18B20_readTemperatureFast(tc->tempSensor);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_DS18B20_readTemperatureFast
	mov	_TempController_update_sloc0_1_0,dpl
	mov	(_TempController_update_sloc0_1_0 + 1),dph
	mov	(_TempController_update_sloc0_1_0 + 2),b
	mov	(_TempController_update_sloc0_1_0 + 3),a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:68: if (temp == -999.0) {
	clr	a
	push	acc
	mov	a,#0xc0
	push	acc
	mov	a,#0x79
	push	acc
	mov	a,#0xc4
	push	acc
	mov	dpl,_TempController_update_sloc0_1_0
	mov	dph,(_TempController_update_sloc0_1_0 + 1)
	mov	b,(_TempController_update_sloc0_1_0 + 2)
	mov	a,(_TempController_update_sloc0_1_0 + 3)
	lcall	___fseq
	mov	r0,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r0
	jz	00104$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:69: return false;
	mov	dpl,#0x00
	ret
00104$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:72: tc->current_temp = temp;
	mov	a,#0x06
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	mov	a,_TempController_update_sloc0_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_TempController_update_sloc0_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_TempController_update_sloc0_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_TempController_update_sloc0_1_0 + 3)
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:77: target_voltage = TempController_mapTempToVoltageLinear(temp);
	mov	dpl,_TempController_update_sloc0_1_0
	mov	dph,(_TempController_update_sloc0_1_0 + 1)
	mov	b,(_TempController_update_sloc0_1_0 + 2)
	mov	a,(_TempController_update_sloc0_1_0 + 3)
	push	ar7
	push	ar6
	push	ar5
	lcall	_TempController_mapTempToVoltageLinear
	mov	_TempController_update_sloc1_1_0,dpl
	mov	(_TempController_update_sloc1_1_0 + 1),dph
	mov	(_TempController_update_sloc1_1_0 + 2),b
	mov	(_TempController_update_sloc1_1_0 + 3),a
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:82: VoltageController_setVoltage(tc->voltCtrl, target_voltage);
	mov	a,#0x03
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_VoltageController_setVoltage_PARM_2
	mov	a,_TempController_update_sloc1_1_0
	movx	@dptr,a
	mov	a,(_TempController_update_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_TempController_update_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_TempController_update_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_VoltageController_setVoltage
	pop	ar5
	pop	ar6
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:84: tc->target_rpm = TempController_mapTempToRPM(temp);
	mov	a,#0x0a
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,_TempController_update_sloc0_1_0
	mov	dph,(_TempController_update_sloc0_1_0 + 1)
	mov	b,(_TempController_update_sloc0_1_0 + 2)
	mov	a,(_TempController_update_sloc0_1_0 + 3)
	push	ar6
	push	ar5
	lcall	_TempController_mapTempToRPM
	mov	r1,dpl
	mov	r2,dph
	mov	r3,b
	mov	r4,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:86: return true;
	mov	dpl,#0x01
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:87: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TempController_isOverheat'
;------------------------------------------------------------
;tc                        Allocated with name '_TempController_isOverheat_tc_65536_208'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:89: bool TempController_isOverheat(const TempController* tc) {
;	-----------------------------------------
;	 function TempController_isOverheat
;	-----------------------------------------
_TempController_isOverheat:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_TempController_isOverheat_tc_65536_208
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:90: return (tc->current_temp >= TEMP_OVERHEAT);
	mov	dptr,#_TempController_isOverheat_tc_65536_208
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x06
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x48
	push	acc
	mov	a,#0x42
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	___fslt
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,dpl
	add	a,#0xff
	cpl	c
	mov	_TempController_isOverheat_sloc0_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:91: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TempController_getTemperature'
;------------------------------------------------------------
;tc                        Allocated with name '_TempController_getTemperature_tc_65536_210'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:93: float TempController_getTemperature(const TempController* tc) {
;	-----------------------------------------
;	 function TempController_getTemperature
;	-----------------------------------------
_TempController_getTemperature:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_TempController_getTemperature_tc_65536_210
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:94: return tc->current_temp;
	mov	dptr,#_TempController_getTemperature_tc_65536_210
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x06
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:95: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TempController_getTargetRPM'
;------------------------------------------------------------
;tc                        Allocated with name '_TempController_getTargetRPM_tc_65536_212'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:97: uint32_t TempController_getTargetRPM(const TempController* tc) {
;	-----------------------------------------
;	 function TempController_getTargetRPM
;	-----------------------------------------
_TempController_getTargetRPM:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_TempController_getTargetRPM_tc_65536_212
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:98: return tc->target_rpm;
	mov	dptr,#_TempController_getTargetRPM_tc_65536_212
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0a
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:99: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TempController_isReady'
;------------------------------------------------------------
;tc                        Allocated with name '_TempController_isReady_tc_65536_214'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:101: bool TempController_isReady(const TempController* tc) {
;	-----------------------------------------
;	 function TempController_isReady
;	-----------------------------------------
_TempController_isReady:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_TempController_isReady_tc_65536_214
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:102: return tc->sensor_ready;
	mov	dptr,#_TempController_isReady_tc_65536_214
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0e
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:103: }
	mov	dpl,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
