;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13407 (MINGW32)
;--------------------------------------------------------
	.module wiring
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Timer0Interrupt
	.globl _USBDeviceEndPointCfg
	.globl _USBDeviceIntCfg
	.globl _USBDeviceCfg
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
	.globl _micros
	.globl _millis
	.globl _delay
	.globl _delayMicroseconds
	.globl _init
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
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_delay_ms_65536_175:
	.ds 4
_delay_start_65536_176:
	.ds 4
_delay_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'Timer0Interrupt'
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:23: void Timer0Interrupt(void) __interrupt(INT_NO_TMR0) __using(1) {
;	-----------------------------------------
;	 function Timer0Interrupt
;	-----------------------------------------
_Timer0Interrupt:
	ar7 = 0x0f
	ar6 = 0x0e
	ar5 = 0x0d
	ar4 = 0x0c
	ar3 = 0x0b
	ar2 = 0x0a
	ar1 = 0x09
	ar0 = 0x08
	push	psw
	mov	psw,#0x08
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:36: "incTimer0_overflow_countOver$:                  \n");
;Increase	timer0_overflow_count on R0~R4(5bytes)
	inc	r0                                      
	cjne	r0,#0,incTimer0_overflow_countOver$    
	inc	r1                                      
	cjne	r1,#0,incTimer0_overflow_countOver$    
	inc	r2                                      
	cjne	r2,#0,incTimer0_overflow_countOver$    
	inc	r3                                      
	cjne	r3,#0,incTimer0_overflow_countOver$    
	inc	r4                                      
incTimer0_overflow_countOver$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:37: }
	pop	psw
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'micros'
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:39: uint32_t micros() {
;	-----------------------------------------
;	 function micros
;	-----------------------------------------
_micros:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:85: "incTimer0_overf_cntCopyOver$:                \n");
;uint8_t	interruptOn = EA; //to c            
;clr	and mov won't affect c                  
	mov	c,_EA                                
;EA	= 0;                                     
	clr	_EA                                  
;Copy	_timer0_overflow_count to local R0~R3,m
	mov	r0, (_timer0_overflow_count)         
	mov	r1, (_timer0_overflow_count)+1       
	mov	r2, (_timer0_overflow_count)+2       
	mov	r3, (_timer0_overflow_count)+3       
;Copy	TL0 to local R4, t                     
	mov	r4, _TL0                             
;Copy	TCON (TF0) to local R5                 
	mov	b, _TCON                             
;if	(interruptOn) EA = 1;                    
	mov	_EA,c                                
;if	((TF0 in b) && (R4 != 255)){             
	jnb	b.5,incTimer0_overf_cntCopyOver$     
	mov	a,#1     
	add	a,r4     
	jz	incTimer0_overf_cntCopyOver$
;m++	                                        
	inc	r0                                   
	cjne	r0,#0,incTimer0_overf_cntCopyOver$  
	inc	r1                                   
	cjne	r1,#0,incTimer0_overf_cntCopyOver$  
	inc	r2                                   
	cjne	r2,#0,incTimer0_overf_cntCopyOver$  
	inc	r3                                   
incTimer0_overf_cntCopyOver$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:94: "    mov r4, a                                \n");
	clr	c                                    
	mov	a, r4                                
	subb	a,#6                                
	mov	r4, a                                
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:287: );
;1m	= 250t 1t=0.5us (m*250+t)/2  t is 0~249  
;we	need to return m*125+t/2                 
;t=(t>>1);	                                  
	mov	a,r4                                 
	clr	c                                    
	rrc	a                                    
	mov	r4,a                                 
;m=m*125;	                                   
	mov	b, #125                              
	mov	a, r0                                
	mul	ab                                   
	mov	r0, a                                
	mov	r5, b                                
	mov	b, #125                              
	mov	a, r1                                
	mul	ab                                   
	add	a, r5                                
	mov	r1, a                                
	clr	a                                    
	addc	a, b                                
	mov	r5, a                                
	mov	b, #125                              
	mov	a, r2                                
	mul	ab                                   
	add	a, r5                                
	mov	r2, a                                
	clr	a                                    
	addc	a, b                                
	mov	r5, a                                
	mov	b, #125                              
	mov	a, r3                                
	mul	ab                                   
	add	a, r5                                
	mov	r3, a                                
;return	m+t                                  
	mov	r5, #0                               
	mov	a, r4                                
	add	a, r0                                
	mov	dpl, a                               
	mov	a, r1                                
	addc	a, r5                               
	mov	dph, a                               
	mov	a, r2                                
	addc	a, r5                               
	mov	b, a                                 
	mov	a, r3                                
	addc	a, r5                               
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:583: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'millis'
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:585: uint32_t millis() {
;	-----------------------------------------
;	 function millis
;	-----------------------------------------
_millis:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:605: "    mov _EA,c                                \n");
;uint8_t	interruptOn = EA; //to c            
;clr	and mov won't affect c                  
	mov	c,_EA                                
;EA	= 0;                                     
	clr	_EA                                  
;Copy	_timer0_overflow_count to local R0~R4  
	mov	r0, (_timer0_overflow_count)         
	mov	r1, (_timer0_overflow_count)+1       
	mov	r2, (_timer0_overflow_count)+2       
	mov	r3, (_timer0_overflow_count)+3       
	mov	r4, (_timer0_overflow_count)+4       
;if	(interruptOn) EA = 1;                    
	mov	_EA,c                                
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:690: "    mov b, r1                                \n");
;return	timer0_overflow_count>>3             
;Or:	return (timer0_overflow_count<<5)>>8    
;Or:	return (timer0_overflow_count*32)>>8    
	mov	b, #32                               
	mov	a, r0                                
	mul	ab                                   
	mov	r0, b                                
;lowest	8 bit not used (a), r0 free to use   
	mov	b, #32                               
	mov	a, r1                                
	mul	ab                                   
	add	a, r0                                
;carry	won't be set, if I calculated right   
	mov	dpl, a                               
	mov	r0, b                                
	mov	b, #32                               
	mov	a, r2                                
	mul	ab                                   
	add	a, r0                                
;carry	won't be set, if I calculated right   
	mov	dph, a                               
	mov	r0, b                                
	mov	b, #32                               
	mov	a, r3                                
	mul	ab                                   
	add	a, r0                                
;carry	won't be set, if I calculated right   
	mov	r1, a                                
	mov	r0, b                                
	mov	b, #32                               
	mov	a, r4                                
	mul	ab                                   
	add	a, r0                                
;carry	won't be set, if I calculated right   
;calculation	finished, a already in place    
	mov	b, r1                                
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:881: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;ms                        Allocated with name '_delay_ms_65536_175'
;start                     Allocated with name '_delay_start_65536_176'
;sloc0                     Allocated with name '_delay_sloc0_1_0'
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:883: void delay(__data uint32_t ms) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	_delay_ms_65536_175,dpl
	mov	(_delay_ms_65536_175 + 1),dph
	mov	(_delay_ms_65536_175 + 2),b
	mov	(_delay_ms_65536_175 + 3),a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:884: __data uint32_t start = micros();
	lcall	_micros
	mov	_delay_start_65536_176,dpl
	mov	(_delay_start_65536_176 + 1),dph
	mov	(_delay_start_65536_176 + 2),b
	mov	(_delay_start_65536_176 + 3),a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:886: while (ms > 0) {
00105$:
	mov	a,_delay_ms_65536_175
	orl	a,(_delay_ms_65536_175 + 1)
	orl	a,(_delay_ms_65536_175 + 2)
	orl	a,(_delay_ms_65536_175 + 3)
	jnz	00129$
	ret
00129$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:888: while (ms > 0 && (micros() - start) >= 1000) {
	mov	r0,_delay_ms_65536_175
	mov	r1,(_delay_ms_65536_175 + 1)
	mov	r2,(_delay_ms_65536_175 + 2)
	mov	r3,(_delay_ms_65536_175 + 3)
	mov	_delay_sloc0_1_0,_delay_start_65536_176
	mov	(_delay_sloc0_1_0 + 1),(_delay_start_65536_176 + 1)
	mov	(_delay_sloc0_1_0 + 2),(_delay_start_65536_176 + 2)
	mov	(_delay_sloc0_1_0 + 3),(_delay_start_65536_176 + 3)
00102$:
	mov	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r3
	jz	00105$
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_micros
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	mov	a,r4
	clr	c
	subb	a,_delay_sloc0_1_0
	mov	r4,a
	mov	a,r5
	subb	a,(_delay_sloc0_1_0 + 1)
	mov	r5,a
	mov	a,r6
	subb	a,(_delay_sloc0_1_0 + 2)
	mov	r6,a
	mov	a,r7
	subb	a,(_delay_sloc0_1_0 + 3)
	mov	r7,a
	clr	c
	mov	a,r4
	subb	a,#0xe8
	mov	a,r5
	subb	a,#0x03
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jc	00105$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:889: ms--;
	dec	r0
	cjne	r0,#0xff,00132$
	dec	r1
	cjne	r1,#0xff,00132$
	dec	r2
	cjne	r2,#0xff,00132$
	dec	r3
00132$:
	mov	_delay_ms_65536_175,r0
	mov	(_delay_ms_65536_175 + 1),r1
	mov	(_delay_ms_65536_175 + 2),r2
	mov	(_delay_ms_65536_175 + 3),r3
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:890: start += 1000;
	mov	a,#0xe8
	add	a,_delay_sloc0_1_0
	mov	_delay_sloc0_1_0,a
	mov	a,#0x03
	addc	a,(_delay_sloc0_1_0 + 1)
	mov	(_delay_sloc0_1_0 + 1),a
	clr	a
	addc	a,(_delay_sloc0_1_0 + 2)
	mov	(_delay_sloc0_1_0 + 2),a
	clr	a
	addc	a,(_delay_sloc0_1_0 + 3)
	mov	(_delay_sloc0_1_0 + 3),a
	mov	_delay_start_65536_176,_delay_sloc0_1_0
	mov	(_delay_start_65536_176 + 1),(_delay_sloc0_1_0 + 1)
	mov	(_delay_start_65536_176 + 2),(_delay_sloc0_1_0 + 2)
	mov	(_delay_start_65536_176 + 3),(_delay_sloc0_1_0 + 3)
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:893: }
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'delayMicroseconds'
;------------------------------------------------------------
;us                        Allocated to registers 
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:895: void delayMicroseconds(__data uint16_t us) {
;	-----------------------------------------
;	 function delayMicroseconds
;	-----------------------------------------
_delayMicroseconds:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:1040: "    nop                                  \n");
	.even	                                   
	mov	 r6, dpl                         
	mov	 r7, dph                         
	clr	 c                               
	mov	 a,#0x01                         
	subb	a, r6                           
	clr	 a                               
	subb	a, r7                           
	jc	skip_0us$                         
	ret	                                 
	nop	                                 
skip_0us$:
	clr	 c                               
	mov	 a, #0x02                        
	subb	a, r6                           
	mov	 r6, a                           
	mov	 a, #0x00                        
	subb	a, r7                           
	mov	 r7, a                           
	nop	                                 
	cjne	r6,#0x00,loop24m_us$            
	cjne	r7,#0x00,loop24m_us$            
	nop	                                 
	ret	                                 
loop24m_us$:
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
loop24m_us_2$:
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	nop	
	inc	 r6                              
	cjne	r6, #0,loop24m_us$              
	inc	 r7                              
	cjne	r7, #0,loop24m_us_2$            
	nop	                                 
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:1139: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init'
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:1141: void init() {
;	-----------------------------------------
;	 function init
;	-----------------------------------------
_init:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:1156: SAFE_MOD = 0x55;
	mov	_SAFE_MOD,#0x55
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:1157: SAFE_MOD = 0xAA;
	mov	_SAFE_MOD,#0xaa
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:1204: CLOCK_CFG & ~MASK_SYS_CK_DIV | 12; // 24MHz, 12M*(24 default PLL)/12=24M
	mov	a,#0xe0
	anl	a,_CLOCK_CFG
	orl	a,#0x0c
	mov	_CLOCK_CFG,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:1216: SAFE_MOD = 0x00;
	mov	_SAFE_MOD,#0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:1218: delayMicroseconds(5000); // needed to stablize internal RC
	mov	dptr,#0x1388
	lcall	_delayMicroseconds
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:1222: USBDeviceCfg();
	lcall	_USBDeviceCfg
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:1223: USBDeviceEndPointCfg(); //????
	lcall	_USBDeviceEndPointCfg
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:1224: USBDeviceIntCfg();      //?????
	lcall	_USBDeviceIntCfg
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:1225: UEP0_T_LEN = 0;
	mov	_UEP0_T_LEN,#0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:1226: UEP1_T_LEN = 0; //????????????
	mov	_UEP1_T_LEN,#0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:1227: UEP2_T_LEN = 0; //????????????
	mov	_UEP2_T_LEN,#0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:1231: PWM_CK_SE = 93; // DIV by 94 for 1K freq on 24M clk
	mov	_PWM_CK_SE,#0x5d
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:1232: PWM_CTRL = 0;
	mov	_PWM_CTRL,#0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:1235: TMOD = (TMOD & ~0x0F) | (bT0_M1); // mode 2 for autoreload
	mov	a,#0xf0
	anl	a,_TMOD
	orl	a,#0x02
	mov	_TMOD,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:1236: T2MOD = T2MOD & ~bT0_CLK;         // bT0_CLK=0;clk Div by 12
	anl	_T2MOD,#0xef
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:1237: TH0 = 255 - T0_CYCLE + 1;
	mov	_TH0,#0x06
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:1238: TF0 = 0;
;	assignBit
	clr	_TF0
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:1239: ET0 = 1;
;	assignBit
	setb	_ET0
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:1240: TR0 = 1;
;	assignBit
	setb	_TR0
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:1242: EA = 1; // millis and delay needs interrupt
;	assignBit
	setb	_EA
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring.c:1243: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
