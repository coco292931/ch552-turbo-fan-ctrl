;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13407 (MINGW32)
;--------------------------------------------------------
	.module ds18b20_port
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _delayMicroseconds
	.globl _delay
	.globl _digitalRead
	.globl _digitalWrite
	.globl _pinMode
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
	.globl _DS18B20_setAlarmTemperature_PARM_3
	.globl _DS18B20_setAlarmTemperature_PARM_2
	.globl _DS18B20_setResolution_PARM_2
	.globl _DS18B20_init_PARM_2
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
	.globl _DS18B20_init
	.globl _DS18B20_begin
	.globl _DS18B20_readTemperature
	.globl _DS18B20_readTemperatureFast
	.globl _DS18B20_setResolution
	.globl _DS18B20_setAlarmTemperature
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
_ds18b20_pinOutput_dev_65536_175:
	.ds 3
_ds18b20_pinInput_dev_65536_177:
	.ds 3
_ds18b20_pinHigh_dev_65536_179:
	.ds 3
_ds18b20_pinLow_dev_65536_181:
	.ds 3
_ds18b20_pinRead_dev_65536_183:
	.ds 3
_ds18b20_delayUs_us_65536_185:
	.ds 2
_ds18b20_reset_dev_65536_187:
	.ds 3
_ds18b20_writeByte_PARM_2:
	.ds 1
_ds18b20_writeByte_dev_65536_189:
	.ds 3
_ds18b20_readByte_dev_65536_195:
	.ds 3
_ds18b20_readByte_byte_65536_196:
	.ds 1
_ds18b20_readScratchpad_PARM_2:
	.ds 3
_ds18b20_readScratchpad_dev_65536_200:
	.ds 3
_DS18B20_init_PARM_2:
	.ds 1
_DS18B20_init_dev_65536_205:
	.ds 3
_DS18B20_begin_dev_65536_207:
	.ds 3
_DS18B20_readTemperature_dev_65536_209:
	.ds 3
_DS18B20_readTemperatureFast_dev_65536_213:
	.ds 3
_DS18B20_readTemperatureFast_scratchpad_65536_214:
	.ds 9
_DS18B20_readTemperatureFast_wait_time_65536_214:
	.ds 4
_DS18B20_setResolution_PARM_2:
	.ds 1
_DS18B20_setResolution_dev_65536_219:
	.ds 3
_DS18B20_setResolution_scratchpad_65536_220:
	.ds 9
_DS18B20_setAlarmTemperature_PARM_2:
	.ds 1
_DS18B20_setAlarmTemperature_PARM_3:
	.ds 1
_DS18B20_setAlarmTemperature_dev_65536_222:
	.ds 3
_DS18B20_setAlarmTemperature_scratchpad_65536_223:
	.ds 9
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
;Allocation info for local variables in function 'ds18b20_pinOutput'
;------------------------------------------------------------
;dev                       Allocated with name '_ds18b20_pinOutput_dev_65536_175'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:8: static void ds18b20_pinOutput(DS18B20* dev) {
;	-----------------------------------------
;	 function ds18b20_pinOutput
;	-----------------------------------------
_ds18b20_pinOutput:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ds18b20_pinOutput_dev_65536_175
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:9: pinMode(dev->pin, OUTPUT);
	mov	dptr,#_ds18b20_pinOutput_dev_65536_175
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r5
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:10: }
	ljmp	_pinMode
;------------------------------------------------------------
;Allocation info for local variables in function 'ds18b20_pinInput'
;------------------------------------------------------------
;dev                       Allocated with name '_ds18b20_pinInput_dev_65536_177'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:12: static void ds18b20_pinInput(DS18B20* dev) {
;	-----------------------------------------
;	 function ds18b20_pinInput
;	-----------------------------------------
_ds18b20_pinInput:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ds18b20_pinInput_dev_65536_177
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:13: pinMode(dev->pin, INPUT);
	mov	dptr,#_ds18b20_pinInput_dev_65536_177
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#_pinMode_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,r5
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:14: }
	ljmp	_pinMode
;------------------------------------------------------------
;Allocation info for local variables in function 'ds18b20_pinHigh'
;------------------------------------------------------------
;dev                       Allocated with name '_ds18b20_pinHigh_dev_65536_179'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:16: static void ds18b20_pinHigh(DS18B20* dev) {
;	-----------------------------------------
;	 function ds18b20_pinHigh
;	-----------------------------------------
_ds18b20_pinHigh:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ds18b20_pinHigh_dev_65536_179
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:17: digitalWrite(dev->pin, HIGH);
	mov	dptr,#_ds18b20_pinHigh_dev_65536_179
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#_digitalWrite_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r5
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:18: }
	ljmp	_digitalWrite
;------------------------------------------------------------
;Allocation info for local variables in function 'ds18b20_pinLow'
;------------------------------------------------------------
;dev                       Allocated with name '_ds18b20_pinLow_dev_65536_181'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:20: static void ds18b20_pinLow(DS18B20* dev) {
;	-----------------------------------------
;	 function ds18b20_pinLow
;	-----------------------------------------
_ds18b20_pinLow:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ds18b20_pinLow_dev_65536_181
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:21: digitalWrite(dev->pin, LOW);
	mov	dptr,#_ds18b20_pinLow_dev_65536_181
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#_digitalWrite_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,r5
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:22: }
	ljmp	_digitalWrite
;------------------------------------------------------------
;Allocation info for local variables in function 'ds18b20_pinRead'
;------------------------------------------------------------
;dev                       Allocated with name '_ds18b20_pinRead_dev_65536_183'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:24: static uint8_t ds18b20_pinRead(DS18B20* dev) {
;	-----------------------------------------
;	 function ds18b20_pinRead
;	-----------------------------------------
_ds18b20_pinRead:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ds18b20_pinRead_dev_65536_183
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:25: return digitalRead(dev->pin);
	mov	dptr,#_ds18b20_pinRead_dev_65536_183
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:26: }
	ljmp	_digitalRead
;------------------------------------------------------------
;Allocation info for local variables in function 'ds18b20_delayUs'
;------------------------------------------------------------
;us                        Allocated with name '_ds18b20_delayUs_us_65536_185'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:28: static void ds18b20_delayUs(uint16_t us) {
;	-----------------------------------------
;	 function ds18b20_delayUs
;	-----------------------------------------
_ds18b20_delayUs:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_ds18b20_delayUs_us_65536_185
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:29: delayMicroseconds(us);
	mov	dptr,#_ds18b20_delayUs_us_65536_185
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:30: }
	ljmp	_delayMicroseconds
;------------------------------------------------------------
;Allocation info for local variables in function 'ds18b20_reset'
;------------------------------------------------------------
;dev                       Allocated with name '_ds18b20_reset_dev_65536_187'
;response                  Allocated with name '_ds18b20_reset_response_65536_188'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:32: static uint8_t ds18b20_reset(DS18B20* dev) {
;	-----------------------------------------
;	 function ds18b20_reset
;	-----------------------------------------
_ds18b20_reset:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ds18b20_reset_dev_65536_187
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:35: ds18b20_pinOutput(dev);
	mov	dptr,#_ds18b20_reset_dev_65536_187
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_pinOutput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:36: ds18b20_pinLow(dev);
	mov	dptr,#_ds18b20_reset_dev_65536_187
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_pinLow
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:37: ds18b20_delayUs(480);
	mov	dptr,#0x01e0
	lcall	_ds18b20_delayUs
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:39: ds18b20_pinHigh(dev);
	mov	dptr,#_ds18b20_reset_dev_65536_187
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_pinHigh
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:40: ds18b20_pinInput(dev);
	mov	dptr,#_ds18b20_reset_dev_65536_187
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_pinInput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:41: ds18b20_delayUs(70);
	mov	dptr,#0x0046
	lcall	_ds18b20_delayUs
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:43: response = ds18b20_pinRead(dev);
	mov	dptr,#_ds18b20_reset_dev_65536_187
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_pinRead
	mov	r7,dpl
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:44: ds18b20_delayUs(410);
	mov	dptr,#0x019a
	push	ar7
	lcall	_ds18b20_delayUs
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:46: return response;
	mov	dpl,r7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:47: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds18b20_writeByte'
;------------------------------------------------------------
;byte                      Allocated with name '_ds18b20_writeByte_PARM_2'
;dev                       Allocated with name '_ds18b20_writeByte_dev_65536_189'
;i                         Allocated with name '_ds18b20_writeByte_i_65536_190'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:49: static void ds18b20_writeByte(DS18B20* dev, uint8_t byte) {
;	-----------------------------------------
;	 function ds18b20_writeByte
;	-----------------------------------------
_ds18b20_writeByte:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ds18b20_writeByte_dev_65536_189
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:52: for (i = 0; i < 8; i++) {
	mov	r7,#0x00
00105$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:53: ds18b20_pinOutput(dev);
	mov	dptr,#_ds18b20_writeByte_dev_65536_189
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	push	ar7
	lcall	_ds18b20_pinOutput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:54: ds18b20_pinLow(dev);
	mov	dptr,#_ds18b20_writeByte_dev_65536_189
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_ds18b20_pinLow
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:55: ds18b20_delayUs(2);
	mov	dptr,#0x0002
	lcall	_ds18b20_delayUs
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:57: if (byte & 0x01) {
	mov	dptr,#_ds18b20_writeByte_PARM_2
	movx	a,@dptr
	jnb	acc.0,00102$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:58: ds18b20_pinHigh(dev);
	mov	dptr,#_ds18b20_writeByte_dev_65536_189
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	push	ar7
	lcall	_ds18b20_pinHigh
	pop	ar7
	sjmp	00103$
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:60: ds18b20_pinLow(dev);
	mov	dptr,#_ds18b20_writeByte_dev_65536_189
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	push	ar7
	lcall	_ds18b20_pinLow
	pop	ar7
00103$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:63: ds18b20_delayUs(60);
	mov	dptr,#0x003c
	push	ar7
	lcall	_ds18b20_delayUs
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:64: ds18b20_pinHigh(dev);
	mov	dptr,#_ds18b20_writeByte_dev_65536_189
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_ds18b20_pinHigh
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:65: ds18b20_delayUs(2);
	mov	dptr,#0x0002
	lcall	_ds18b20_delayUs
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:67: byte >>= 1;
	mov	dptr,#_ds18b20_writeByte_PARM_2
	movx	a,@dptr
	clr	c
	rrc	a
	mov	r6,a
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:52: for (i = 0; i < 8; i++) {
	inc	r7
	cjne	r7,#0x08,00119$
00119$:
	jnc	00120$
	ljmp	00105$
00120$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:69: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds18b20_readByte'
;------------------------------------------------------------
;dev                       Allocated with name '_ds18b20_readByte_dev_65536_195'
;i                         Allocated with name '_ds18b20_readByte_i_65536_196'
;byte                      Allocated with name '_ds18b20_readByte_byte_65536_196'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:71: static uint8_t ds18b20_readByte(DS18B20* dev) {
;	-----------------------------------------
;	 function ds18b20_readByte
;	-----------------------------------------
_ds18b20_readByte:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ds18b20_readByte_dev_65536_195
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:72: uint8_t i, byte = 0;
	mov	dptr,#_ds18b20_readByte_byte_65536_196
	clr	a
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:74: for (i = 0; i < 8; i++) {
	mov	r7,#0x00
00104$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:75: ds18b20_pinOutput(dev);
	mov	dptr,#_ds18b20_readByte_dev_65536_195
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	push	ar7
	lcall	_ds18b20_pinOutput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:76: ds18b20_pinLow(dev);
	mov	dptr,#_ds18b20_readByte_dev_65536_195
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_ds18b20_pinLow
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:77: ds18b20_delayUs(2);
	mov	dptr,#0x0002
	lcall	_ds18b20_delayUs
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:79: ds18b20_pinHigh(dev);
	mov	dptr,#_ds18b20_readByte_dev_65536_195
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_ds18b20_pinHigh
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:80: ds18b20_pinInput(dev);
	mov	dptr,#_ds18b20_readByte_dev_65536_195
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_ds18b20_pinInput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:81: ds18b20_delayUs(12);
	mov	dptr,#0x000c
	lcall	_ds18b20_delayUs
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:83: if (ds18b20_pinRead(dev)) {
	mov	dptr,#_ds18b20_readByte_dev_65536_195
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_ds18b20_pinRead
	mov	a,dpl
	pop	ar7
	jz	00102$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:84: byte |= (1 << i);
	mov	ar6,r7
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00124$
00122$:
	add	a,acc
00124$:
	djnz	b,00122$
	mov	r6,a
	mov	dptr,#_ds18b20_readByte_byte_65536_196
	movx	a,@dptr
	orl	a,r6
	movx	@dptr,a
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:87: ds18b20_delayUs(50);
	mov	dptr,#0x0032
	push	ar7
	lcall	_ds18b20_delayUs
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:74: for (i = 0; i < 8; i++) {
	inc	r7
	cjne	r7,#0x08,00125$
00125$:
	jnc	00126$
	ljmp	00104$
00126$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:90: return byte;
	mov	dptr,#_ds18b20_readByte_byte_65536_196
	movx	a,@dptr
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:91: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds18b20_readScratchpad'
;------------------------------------------------------------
;data                      Allocated with name '_ds18b20_readScratchpad_PARM_2'
;dev                       Allocated with name '_ds18b20_readScratchpad_dev_65536_200'
;i                         Allocated with name '_ds18b20_readScratchpad_i_65536_201'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:93: static uint8_t ds18b20_readScratchpad(DS18B20* dev, uint8_t *data) {
;	-----------------------------------------
;	 function ds18b20_readScratchpad
;	-----------------------------------------
_ds18b20_readScratchpad:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ds18b20_readScratchpad_dev_65536_200
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:96: if (ds18b20_reset(dev)) {
	mov	dptr,#_ds18b20_readScratchpad_dev_65536_200
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_reset
	mov	a,dpl
	jz	00102$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:97: return 1;
	mov	dpl,#0x01
	ret
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:100: ds18b20_writeByte(dev, DS18B20_CMD_SKIP_ROM);
	mov	dptr,#_ds18b20_readScratchpad_dev_65536_200
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ds18b20_writeByte_PARM_2
	mov	a,#0xcc
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_writeByte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:101: ds18b20_writeByte(dev, DS18B20_CMD_READ_SCRATCHPAD);
	mov	dptr,#_ds18b20_readScratchpad_dev_65536_200
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ds18b20_writeByte_PARM_2
	mov	a,#0xbe
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_writeByte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:103: for (i = 0; i < 9; i++) {
	mov	dptr,#_ds18b20_readScratchpad_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x00
00104$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:104: data[i] = ds18b20_readByte(dev);
	mov	a,r4
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_ds18b20_readScratchpad_dev_65536_200
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_ds18b20_readByte
	mov	r7,dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r7
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:103: for (i = 0; i < 9; i++) {
	inc	r4
	cjne	r4,#0x09,00122$
00122$:
	pop	ar7
	pop	ar6
	pop	ar5
	jc	00104$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:107: return 0;
	mov	dpl,#0x00
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:108: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DS18B20_init'
;------------------------------------------------------------
;data_pin                  Allocated with name '_DS18B20_init_PARM_2'
;dev                       Allocated with name '_DS18B20_init_dev_65536_205'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:110: void DS18B20_init(DS18B20* dev, uint8_t data_pin) {
;	-----------------------------------------
;	 function DS18B20_init
;	-----------------------------------------
_DS18B20_init:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_DS18B20_init_dev_65536_205
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:111: dev->pin = data_pin;
	mov	dptr,#_DS18B20_init_dev_65536_205
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_DS18B20_init_PARM_2
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:112: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'DS18B20_begin'
;------------------------------------------------------------
;dev                       Allocated with name '_DS18B20_begin_dev_65536_207'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:114: void DS18B20_begin(DS18B20* dev) {
;	-----------------------------------------
;	 function DS18B20_begin
;	-----------------------------------------
_DS18B20_begin:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_DS18B20_begin_dev_65536_207
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:115: pinMode(dev->pin, OUTPUT);
	mov	dptr,#_DS18B20_begin_dev_65536_207
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_pinMode
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:116: digitalWrite(dev->pin, HIGH);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#_digitalWrite_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r5
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:117: }
	ljmp	_digitalWrite
;------------------------------------------------------------
;Allocation info for local variables in function 'DS18B20_readTemperature'
;------------------------------------------------------------
;dev                       Allocated with name '_DS18B20_readTemperature_dev_65536_209'
;temp_low                  Allocated with name '_DS18B20_readTemperature_temp_low_65536_210'
;temp_high                 Allocated with name '_DS18B20_readTemperature_temp_high_65536_210'
;temp_raw                  Allocated with name '_DS18B20_readTemperature_temp_raw_65536_210'
;temperature               Allocated with name '_DS18B20_readTemperature_temperature_65536_210'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:119: float DS18B20_readTemperature(DS18B20* dev) {
;	-----------------------------------------
;	 function DS18B20_readTemperature
;	-----------------------------------------
_DS18B20_readTemperature:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_DS18B20_readTemperature_dev_65536_209
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:124: if (ds18b20_reset(dev)) {
	mov	dptr,#_DS18B20_readTemperature_dev_65536_209
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_reset
	mov	a,dpl
	jz	00102$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:125: return -999.0;
	mov	dptr,#0xc000
	mov	b,#0x79
	mov	a,#0xc4
	ret
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:128: ds18b20_writeByte(dev, DS18B20_CMD_SKIP_ROM);
	mov	dptr,#_DS18B20_readTemperature_dev_65536_209
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ds18b20_writeByte_PARM_2
	mov	a,#0xcc
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_writeByte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:129: ds18b20_writeByte(dev, DS18B20_CMD_CONVERT);
	mov	dptr,#_DS18B20_readTemperature_dev_65536_209
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ds18b20_writeByte_PARM_2
	mov	a,#0x44
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_writeByte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:131: delay(750);
	mov	dptr,#0x02ee
	clr	a
	mov	b,a
	lcall	_delay
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:133: if (ds18b20_reset(dev)) {
	mov	dptr,#_DS18B20_readTemperature_dev_65536_209
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_reset
	mov	a,dpl
	jz	00104$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:134: return -999.0;
	mov	dptr,#0xc000
	mov	b,#0x79
	mov	a,#0xc4
	ret
00104$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:137: ds18b20_writeByte(dev, DS18B20_CMD_SKIP_ROM);
	mov	dptr,#_DS18B20_readTemperature_dev_65536_209
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ds18b20_writeByte_PARM_2
	mov	a,#0xcc
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_writeByte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:138: ds18b20_writeByte(dev, DS18B20_CMD_READ_SCRATCHPAD);
	mov	dptr,#_DS18B20_readTemperature_dev_65536_209
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ds18b20_writeByte_PARM_2
	mov	a,#0xbe
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_writeByte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:140: temp_low = ds18b20_readByte(dev);
	mov	dptr,#_DS18B20_readTemperature_dev_65536_209
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_readByte
	mov	r7,dpl
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:141: temp_high = ds18b20_readByte(dev);
	mov	dptr,#_DS18B20_readTemperature_dev_65536_209
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	push	ar7
	lcall	_ds18b20_readByte
	mov	r6,dpl
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:143: temp_raw = (temp_high << 8) | temp_low;
	mov	ar5,r6
	clr	a
	mov	r6,a
	mov	r4,a
	mov	a,r7
	orl	ar6,a
	mov	a,r4
	orl	ar5,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:145: temperature = temp_raw * 0.0625;
	mov	dpl,r6
	mov	dph,r5
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:147: return temperature;
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3d
	lcall	___fsmul
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:148: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DS18B20_readTemperatureFast'
;------------------------------------------------------------
;dev                       Allocated with name '_DS18B20_readTemperatureFast_dev_65536_213'
;temp_low                  Allocated with name '_DS18B20_readTemperatureFast_temp_low_65536_214'
;temp_high                 Allocated with name '_DS18B20_readTemperatureFast_temp_high_65536_214'
;config                    Allocated with name '_DS18B20_readTemperatureFast_config_65536_214'
;scratchpad                Allocated with name '_DS18B20_readTemperatureFast_scratchpad_65536_214'
;temp_raw                  Allocated with name '_DS18B20_readTemperatureFast_temp_raw_65536_214'
;temperature               Allocated with name '_DS18B20_readTemperatureFast_temperature_65536_214'
;wait_time                 Allocated with name '_DS18B20_readTemperatureFast_wait_time_65536_214'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:150: float DS18B20_readTemperatureFast(DS18B20* dev) {
;	-----------------------------------------
;	 function DS18B20_readTemperatureFast
;	-----------------------------------------
_DS18B20_readTemperatureFast:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_213
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:157: if (ds18b20_readScratchpad(dev, scratchpad)) {
	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_213
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ds18b20_readScratchpad_PARM_2
	mov	a,#_DS18B20_readTemperatureFast_scratchpad_65536_214
	movx	@dptr,a
	mov	a,#(_DS18B20_readTemperatureFast_scratchpad_65536_214 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_readScratchpad
	mov	a,dpl
	jz	00102$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:158: return -999.0;
	mov	dptr,#0xc000
	mov	b,#0x79
	mov	a,#0xc4
	ret
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:160: config = scratchpad[4];
	mov	dptr,#(_DS18B20_readTemperatureFast_scratchpad_65536_214 + 0x0004)
	movx	a,@dptr
	mov	r7,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:162: switch (config) {
	cjne	r7,#0x1f,00140$
	sjmp	00103$
00140$:
	cjne	r7,#0x3f,00141$
	sjmp	00104$
00141$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:163: case DS18B20_RESOLUTION_9BIT:
	cjne	r7,#0x5f,00107$
	sjmp	00105$
00103$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:164: wait_time = 94;
	mov	dptr,#_DS18B20_readTemperatureFast_wait_time_65536_214
	mov	a,#0x5e
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:165: break;
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:166: case DS18B20_RESOLUTION_10BIT:
	sjmp	00108$
00104$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:167: wait_time = 188;
	mov	dptr,#_DS18B20_readTemperatureFast_wait_time_65536_214
	mov	a,#0xbc
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:168: break;
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:169: case DS18B20_RESOLUTION_11BIT:
	sjmp	00108$
00105$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:170: wait_time = 375;
	mov	dptr,#_DS18B20_readTemperatureFast_wait_time_65536_214
	mov	a,#0x77
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:171: break;
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:173: default:
	sjmp	00108$
00107$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:174: wait_time = 750;
	mov	dptr,#_DS18B20_readTemperatureFast_wait_time_65536_214
	mov	a,#0xee
	movx	@dptr,a
	mov	a,#0x02
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:176: }
00108$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:178: if (ds18b20_reset(dev)) {
	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_213
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_reset
	mov	a,dpl
	jz	00110$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:179: return -999.0;
	mov	dptr,#0xc000
	mov	b,#0x79
	mov	a,#0xc4
	ret
00110$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:182: ds18b20_writeByte(dev, DS18B20_CMD_SKIP_ROM);
	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_213
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ds18b20_writeByte_PARM_2
	mov	a,#0xcc
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_writeByte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:183: ds18b20_writeByte(dev, DS18B20_CMD_CONVERT);
	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_213
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ds18b20_writeByte_PARM_2
	mov	a,#0x44
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_writeByte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:185: delay(wait_time);
	mov	dptr,#_DS18B20_readTemperatureFast_wait_time_65536_214
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
	lcall	_delay
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:187: if (ds18b20_reset(dev)) {
	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_213
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_reset
	mov	a,dpl
	jz	00112$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:188: return -999.0;
	mov	dptr,#0xc000
	mov	b,#0x79
	mov	a,#0xc4
	ret
00112$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:191: ds18b20_writeByte(dev, DS18B20_CMD_SKIP_ROM);
	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_213
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ds18b20_writeByte_PARM_2
	mov	a,#0xcc
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_writeByte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:192: ds18b20_writeByte(dev, DS18B20_CMD_READ_SCRATCHPAD);
	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_213
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ds18b20_writeByte_PARM_2
	mov	a,#0xbe
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_writeByte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:194: temp_low = ds18b20_readByte(dev);
	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_213
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_readByte
	mov	r7,dpl
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:195: temp_high = ds18b20_readByte(dev);
	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_213
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	push	ar7
	lcall	_ds18b20_readByte
	mov	r6,dpl
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:197: temp_raw = (temp_high << 8) | temp_low;
	mov	ar5,r6
	clr	a
	mov	r6,a
	mov	r4,a
	mov	a,r7
	orl	ar6,a
	mov	a,r4
	orl	ar5,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:199: temperature = temp_raw * 0.0625;
	mov	dpl,r6
	mov	dph,r5
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:201: return temperature;
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3d
	lcall	___fsmul
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:202: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DS18B20_setResolution'
;------------------------------------------------------------
;resolution                Allocated with name '_DS18B20_setResolution_PARM_2'
;dev                       Allocated with name '_DS18B20_setResolution_dev_65536_219'
;scratchpad                Allocated with name '_DS18B20_setResolution_scratchpad_65536_220'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:204: void DS18B20_setResolution(DS18B20* dev, ds18b20_resolution_t resolution) {
;	-----------------------------------------
;	 function DS18B20_setResolution
;	-----------------------------------------
_DS18B20_setResolution:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_DS18B20_setResolution_dev_65536_219
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:207: if (ds18b20_readScratchpad(dev, scratchpad)) {
	mov	dptr,#_DS18B20_setResolution_dev_65536_219
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ds18b20_readScratchpad_PARM_2
	mov	a,#_DS18B20_setResolution_scratchpad_65536_220
	movx	@dptr,a
	mov	a,#(_DS18B20_setResolution_scratchpad_65536_220 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_readScratchpad
	mov	a,dpl
	jz	00102$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:208: return;
	ret
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:211: ds18b20_reset(dev);
	mov	dptr,#_DS18B20_setResolution_dev_65536_219
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_reset
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:212: ds18b20_writeByte(dev, DS18B20_CMD_SKIP_ROM);
	mov	dptr,#_DS18B20_setResolution_dev_65536_219
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ds18b20_writeByte_PARM_2
	mov	a,#0xcc
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_writeByte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:213: ds18b20_writeByte(dev, DS18B20_CMD_WRITE_SCRATCHPAD);
	mov	dptr,#_DS18B20_setResolution_dev_65536_219
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ds18b20_writeByte_PARM_2
	mov	a,#0x4e
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_writeByte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:214: ds18b20_writeByte(dev, scratchpad[2]);
	mov	dptr,#_DS18B20_setResolution_dev_65536_219
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_DS18B20_setResolution_scratchpad_65536_220 + 0x0002)
	movx	a,@dptr
	mov	dptr,#_ds18b20_writeByte_PARM_2
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_writeByte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:215: ds18b20_writeByte(dev, scratchpad[3]);
	mov	dptr,#_DS18B20_setResolution_dev_65536_219
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_DS18B20_setResolution_scratchpad_65536_220 + 0x0003)
	movx	a,@dptr
	mov	dptr,#_ds18b20_writeByte_PARM_2
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_writeByte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:216: ds18b20_writeByte(dev, resolution);
	mov	dptr,#_DS18B20_setResolution_dev_65536_219
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_DS18B20_setResolution_PARM_2
	movx	a,@dptr
	mov	dptr,#_ds18b20_writeByte_PARM_2
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_writeByte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:218: ds18b20_reset(dev);
	mov	dptr,#_DS18B20_setResolution_dev_65536_219
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_reset
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:219: ds18b20_writeByte(dev, DS18B20_CMD_SKIP_ROM);
	mov	dptr,#_DS18B20_setResolution_dev_65536_219
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ds18b20_writeByte_PARM_2
	mov	a,#0xcc
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_writeByte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:220: ds18b20_writeByte(dev, DS18B20_CMD_COPY_SCRATCHPAD);
	mov	dptr,#_DS18B20_setResolution_dev_65536_219
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ds18b20_writeByte_PARM_2
	mov	a,#0x48
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_writeByte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:221: delay(10);
	mov	dptr,#(0x0a&0x00ff)
	clr	a
	mov	b,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:222: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'DS18B20_setAlarmTemperature'
;------------------------------------------------------------
;temp_high                 Allocated with name '_DS18B20_setAlarmTemperature_PARM_2'
;temp_low                  Allocated with name '_DS18B20_setAlarmTemperature_PARM_3'
;dev                       Allocated with name '_DS18B20_setAlarmTemperature_dev_65536_222'
;scratchpad                Allocated with name '_DS18B20_setAlarmTemperature_scratchpad_65536_223'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:224: void DS18B20_setAlarmTemperature(DS18B20* dev, int8_t temp_high, int8_t temp_low) {
;	-----------------------------------------
;	 function DS18B20_setAlarmTemperature
;	-----------------------------------------
_DS18B20_setAlarmTemperature:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_DS18B20_setAlarmTemperature_dev_65536_222
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:227: if (ds18b20_readScratchpad(dev, scratchpad)) {
	mov	dptr,#_DS18B20_setAlarmTemperature_dev_65536_222
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ds18b20_readScratchpad_PARM_2
	mov	a,#_DS18B20_setAlarmTemperature_scratchpad_65536_223
	movx	@dptr,a
	mov	a,#(_DS18B20_setAlarmTemperature_scratchpad_65536_223 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_readScratchpad
	mov	a,dpl
	jz	00102$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:228: return;
	ret
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:231: ds18b20_reset(dev);
	mov	dptr,#_DS18B20_setAlarmTemperature_dev_65536_222
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_reset
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:232: ds18b20_writeByte(dev, DS18B20_CMD_SKIP_ROM);
	mov	dptr,#_DS18B20_setAlarmTemperature_dev_65536_222
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ds18b20_writeByte_PARM_2
	mov	a,#0xcc
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_writeByte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:233: ds18b20_writeByte(dev, DS18B20_CMD_WRITE_SCRATCHPAD);
	mov	dptr,#_DS18B20_setAlarmTemperature_dev_65536_222
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ds18b20_writeByte_PARM_2
	mov	a,#0x4e
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_writeByte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:234: ds18b20_writeByte(dev, (uint8_t)temp_high);
	mov	dptr,#_DS18B20_setAlarmTemperature_dev_65536_222
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_DS18B20_setAlarmTemperature_PARM_2
	movx	a,@dptr
	mov	dptr,#_ds18b20_writeByte_PARM_2
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_writeByte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:235: ds18b20_writeByte(dev, (uint8_t)temp_low);
	mov	dptr,#_DS18B20_setAlarmTemperature_dev_65536_222
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_DS18B20_setAlarmTemperature_PARM_3
	movx	a,@dptr
	mov	dptr,#_ds18b20_writeByte_PARM_2
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_writeByte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:236: ds18b20_writeByte(dev, scratchpad[4]);
	mov	dptr,#_DS18B20_setAlarmTemperature_dev_65536_222
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_DS18B20_setAlarmTemperature_scratchpad_65536_223 + 0x0004)
	movx	a,@dptr
	mov	dptr,#_ds18b20_writeByte_PARM_2
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_writeByte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:238: ds18b20_reset(dev);
	mov	dptr,#_DS18B20_setAlarmTemperature_dev_65536_222
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_reset
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:239: ds18b20_writeByte(dev, DS18B20_CMD_SKIP_ROM);
	mov	dptr,#_DS18B20_setAlarmTemperature_dev_65536_222
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ds18b20_writeByte_PARM_2
	mov	a,#0xcc
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_writeByte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:240: ds18b20_writeByte(dev, DS18B20_CMD_COPY_SCRATCHPAD);
	mov	dptr,#_DS18B20_setAlarmTemperature_dev_65536_222
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ds18b20_writeByte_PARM_2
	mov	a,#0x48
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ds18b20_writeByte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:241: delay(10);
	mov	dptr,#(0x0a&0x00ff)
	clr	a
	mov	b,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:242: }
	ljmp	_delay
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
