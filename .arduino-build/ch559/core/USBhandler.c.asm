;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13407 (MINGW32)
;--------------------------------------------------------
	.module USBhandler
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _USBDeviceEndPointCfg
	.globl _USBDeviceIntCfg
	.globl _USBDeviceCfg
	.globl _USB_EP1_IN
	.globl _USB_EP0_OUT
	.globl _USB_EP0_IN
	.globl _USB_EP0_SETUP
	.globl _USB_EP2_OUT
	.globl _USB_EP2_IN
	.globl _setControlLineStateHandler
	.globl _getLineCodingHandler
	.globl _setLineCodingHandler
	.globl _resetCDCParameters
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
	.globl _UsbConfig
	.globl _Ep2Buffer
	.globl _Ep1Buffer
	.globl _Ep0Buffer
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
	.globl _pDescr
	.globl _SetupReq
	.globl _SetupLen
	.globl _USBInterrupt
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
_SetupLen::
	.ds 2
_SetupReq::
	.ds 1
_pDescr::
	.ds 2
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
_USB_EP0_SETUP_sloc0_1_0:
	.ds 1
_USB_EP0_IN_sloc0_1_0:
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
_Ep0Buffer	=	0x0000
_Ep1Buffer	=	0x000a
_Ep2Buffer	=	0x0014
_UsbConfig::
	.ds 1
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
;Allocation info for local variables in function 'USB_EP0_SETUP'
;------------------------------------------------------------
;len                       Allocated to registers r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:33: void USB_EP0_SETUP() {
;	-----------------------------------------
;	 function USB_EP0_SETUP
;	-----------------------------------------
_USB_EP0_SETUP:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:34: __data uint8_t len = USB_RX_LEN;
	mov	r7,_USB_RX_LEN
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:35: if (len == (sizeof(USB_SETUP_REQ))) {
	cjne	r7,#0x08,00442$
	sjmp	00443$
00442$:
	ljmp	00196$
00443$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:36: SetupLen = ((uint16_t)UsbSetupBuf->wLengthH << 8) | (UsbSetupBuf->wLengthL);
	mov	dptr,#(_Ep0Buffer + 0x0007)
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_Ep0Buffer + 0x0006)
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	orl	a,r7
	mov	_SetupLen,a
	mov	a,r4
	orl	a,r6
	mov	(_SetupLen + 1),a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:37: len = 0; // Default is success and upload 0 length
	mov	r7,#0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:38: SetupReq = UsbSetupBuf->bRequest;
	mov	dptr,#(_Ep0Buffer + 0x0001)
	movx	a,@dptr
	mov	_SetupReq,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:39: if ((UsbSetupBuf->bRequestType & USB_REQ_TYP_MASK) !=
	mov	dptr,#_Ep0Buffer
	movx	a,@dptr
	mov	r6,a
	anl	a,#0x60
	jz	00193$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:46: switch ((UsbSetupBuf->bRequestType & USB_REQ_TYP_MASK)) {
	mov	dptr,#_Ep0Buffer
	movx	a,@dptr
	mov	r6,a
	anl	ar6,#0x60
	mov	r5,#0x00
	cjne	r6,#0x20,00445$
	cjne	r5,#0x00,00445$
	sjmp	00104$
00445$:
	cjne	r6,#0x40,00110$
	cjne	r5,#0x00,00110$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:50: len = 0xFF; // command not supported
	mov	r7,#0xff
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:53: break;
	ljmp	00197$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:55: case USB_REQ_TYP_CLASS: {
00104$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:56: switch (SetupReq) {
	mov	a,#0x20
	cjne	a,_SetupReq,00448$
	ljmp	00197$
00448$:
	mov	a,#0x21
	cjne	a,_SetupReq,00449$
	sjmp	00105$
00449$:
	mov	a,#0x22
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:57: case GET_LINE_CODING: // 0x21  currently configured
	cjne	a,_SetupReq,00108$
	sjmp	00106$
00105$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:58: len = getLineCodingHandler();
	lcall	_getLineCodingHandler
	mov	r5,dpl
	mov	r6,dph
	mov	ar7,r5
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:59: break;
	ljmp	00197$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:60: case SET_CONTROL_LINE_STATE: // 0x22  generates RS-232/V.24 style
00106$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:62: setControlLineStateHandler();
	push	ar7
	lcall	_setControlLineStateHandler
	pop	ar7
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:63: break;
	ljmp	00197$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:67: default:
00108$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:68: len = 0xFF; // command not supported
	mov	r7,#0xff
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:71: break;
	ljmp	00197$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:73: default:
00110$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:74: len = 0xFF; // command not supported
	mov	r7,#0xff
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:76: }
	ljmp	00197$
00193$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:80: switch (SetupReq) // Request ccfType
	mov	a,_SetupReq
	add	a,#0xff - 0x0b
	jnc	00451$
	ljmp	00190$
00451$:
	mov	a,_SetupReq
	add	a,#(00452$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,_SetupReq
	add	a,#(00453$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00452$:
	.db	00186$
	.db	00137$
	.db	00190$
	.db	00160$
	.db	00190$
	.db	00130$
	.db	00112$
	.db	00190$
	.db	00131$
	.db	00134$
	.db	00197$
	.db	00197$
00453$:
	.db	00186$>>8
	.db	00137$>>8
	.db	00190$>>8
	.db	00160$>>8
	.db	00190$>>8
	.db	00130$>>8
	.db	00112$>>8
	.db	00190$>>8
	.db	00131$>>8
	.db	00134$>>8
	.db	00197$>>8
	.db	00197$>>8
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:82: case USB_GET_DESCRIPTOR:
00112$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:83: switch (UsbSetupBuf->wValueH) {
	mov	dptr,#(_Ep0Buffer + 0x0003)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x01,00454$
	sjmp	00113$
00454$:
	cjne	r6,#0x02,00455$
	sjmp	00114$
00455$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:84: case 1: // Device Descriptor
	cjne	r6,#0x03,00123$
	sjmp	00115$
00113$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:86: DeviceDescriptor; // Put Device Descriptor into outgoing buffer
	mov	_pDescr,#_DeviceDescriptor
	mov	(_pDescr + 1),#(_DeviceDescriptor >> 8)
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:87: len = sizeof(USB_Descriptor_Device_t);
	mov	r7,#0x12
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:88: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:89: case 2: // Configure Descriptor
	sjmp	00124$
00114$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:90: pDescr = (__code uint8_t *)ConfigurationDescriptor;
	mov	_pDescr,#_ConfigurationDescriptor
	mov	(_pDescr + 1),#(_ConfigurationDescriptor >> 8)
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:91: len = sizeof(USB_Descriptor_Configuration_t);
	mov	r7,#0x46
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:92: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:93: case 3:
	sjmp	00124$
00115$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:94: switch (UsbSetupBuf->wValueL) {
	mov	dptr,#(_Ep0Buffer + 0x0002)
	movx	a,@dptr
	mov  r6,a
	add	a,#0xff - 0x04
	jc	00122$
	mov	a,r6
	add	a,r6
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:95: case 0:
	mov	dptr,#00458$
	jmp	@a+dptr
00458$:
	sjmp	00116$
	sjmp	00117$
	sjmp	00118$
	sjmp	00119$
	sjmp	00120$
00116$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:96: pDescr = (__code uint8_t *)LanguageDescriptor;
	mov	_pDescr,#_LanguageDescriptor
	mov	(_pDescr + 1),#(_LanguageDescriptor >> 8)
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:97: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:98: case 1:
	sjmp	00122$
00117$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:99: pDescr = (__code uint8_t *)ManufacturerDescriptor;
	mov	_pDescr,#_ManufacturerDescriptor
	mov	(_pDescr + 1),#(_ManufacturerDescriptor >> 8)
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:100: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:101: case 2:
	sjmp	00122$
00118$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:102: pDescr = (__code uint8_t *)ProductDescriptor;
	mov	_pDescr,#_ProductDescriptor
	mov	(_pDescr + 1),#(_ProductDescriptor >> 8)
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:103: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:104: case 3:
	sjmp	00122$
00119$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:105: pDescr = (__code uint8_t *)SerialDescriptor;
	mov	_pDescr,#_SerialDescriptor
	mov	(_pDescr + 1),#(_SerialDescriptor >> 8)
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:106: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:107: case 4:
	sjmp	00122$
00120$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:108: pDescr = (__code uint8_t *)CDCDescriptor;
	mov	_pDescr,#_CDCDescriptor
	mov	(_pDescr + 1),#(_CDCDescriptor >> 8)
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:113: }
00122$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:114: len = pDescr[0];
	mov	dpl,_pDescr
	mov	dph,(_pDescr + 1)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:115: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:116: default:
	sjmp	00124$
00123$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:117: len = 0xff; // Unsupported descriptors or error
	mov	r7,#0xff
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:119: }
00124$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:120: if (len != 0xff) {
	cjne	r7,#0xff,00459$
	ljmp	00197$
00459$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:121: if (SetupLen > len) {
	mov	ar5,r7
	mov	r6,#0x00
	clr	c
	mov	a,r5
	subb	a,_SetupLen
	mov	a,r6
	subb	a,(_SetupLen + 1)
	jnc	00126$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:122: SetupLen = len; // Limit length
	mov	_SetupLen,r5
	mov	(_SetupLen + 1),r6
00126$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:125: ? DEFAULT_ENDP0_SIZE
	mov	r5,_SetupLen
	mov	r6,(_SetupLen + 1)
	clr	c
	mov	a,r5
	subb	a,#0x08
	mov	a,r6
	subb	a,#0x00
	mov	_USB_EP0_SETUP_sloc0_1_0,c
	jc	00209$
	mov	r3,#0x08
	mov	r4,#0x00
	sjmp	00210$
00209$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:126: : SetupLen; // transmit length for this packet
	mov	r3,_SetupLen
	mov	r4,(_SetupLen + 1)
00210$:
	mov	ar7,r3
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:127: for (__data uint8_t i = 0; i < len; i++) {
	mov	r4,#0x00
00205$:
	clr	c
	mov	a,r4
	subb	a,r7
	jnc	00127$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:128: Ep0Buffer[i] = pDescr[i];
	mov	ar2,r4
	mov	r3,#(_Ep0Buffer >> 8)
	mov	a,r4
	add	a,_pDescr
	mov	dpl,a
	clr	a
	addc	a,(_pDescr + 1)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r1,a
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:127: for (__data uint8_t i = 0; i < len; i++) {
	inc	r4
	sjmp	00205$
00127$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:130: SetupLen -= len;
	mov	ar3,r7
	mov	r4,#0x00
	mov	a,r5
	clr	c
	subb	a,r3
	mov	r5,a
	mov	a,r6
	subb	a,r4
	mov	r6,a
	mov	_SetupLen,r5
	mov	(_SetupLen + 1),r6
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:131: pDescr += len;
	mov	a,r7
	add	a,_pDescr
	mov	_pDescr,a
	clr	a
	addc	a,(_pDescr + 1)
	mov	(_pDescr + 1),a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:133: break;
	ljmp	00197$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:134: case USB_SET_ADDRESS:
00130$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:135: SetupLen = UsbSetupBuf->wValueL; // Save the assigned address
	mov	dptr,#(_Ep0Buffer + 0x0002)
	movx	a,@dptr
	mov	r6,a
	mov	_SetupLen,r6
	mov	(_SetupLen + 1),#0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:136: break;
	ljmp	00197$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:137: case USB_GET_CONFIGURATION:
00131$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:138: Ep0Buffer[0] = UsbConfig;
	mov	dptr,#_UsbConfig
	movx	a,@dptr
	mov	dptr,#_Ep0Buffer
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:139: if (SetupLen >= 1) {
	mov	r5,_SetupLen
	mov	r6,(_SetupLen + 1)
	clr	c
	mov	a,r5
	subb	a,#0x01
	mov	a,r6
	subb	a,#0x00
	jnc	00463$
	ljmp	00197$
00463$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:140: len = 1;
	mov	r7,#0x01
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:142: break;
	ljmp	00197$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:143: case USB_SET_CONFIGURATION:
00134$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:144: UsbConfig = UsbSetupBuf->wValueL;
	mov	dptr,#(_Ep0Buffer + 0x0002)
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_UsbConfig
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:145: break;
	ljmp	00197$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:150: case USB_CLEAR_FEATURE: // Clear Feature
00137$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:151: if ((UsbSetupBuf->bRequestType & 0x1F) ==
	mov	dptr,#_Ep0Buffer
	movx	a,@dptr
	anl	a,#0x1f
	jnz	00158$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:154: if ((((uint16_t)UsbSetupBuf->wValueH << 8) | UsbSetupBuf->wValueL) ==
	mov	dptr,#(_Ep0Buffer + 0x0003)
	movx	a,@dptr
	mov	r5,a
	mov	r6,#0x00
	mov	dptr,#(_Ep0Buffer + 0x0002)
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	orl	ar6,a
	mov	a,r3
	orl	ar5,a
	cjne	r6,#0x01,00142$
	cjne	r5,#0x00,00142$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:156: if (ConfigurationDescriptor.Config.ConfigAttributes & 0x20) {
	mov	dptr,#(_ConfigurationDescriptor + 0x0007)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	jnb	acc.5,00468$
	ljmp	00197$
00468$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:159: len = 0xFF; // Failed
	mov	r7,#0xff
	ljmp	00197$
00142$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:162: len = 0xFF; // Failed
	mov	r7,#0xff
	ljmp	00197$
00158$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:164: } else if ((UsbSetupBuf->bRequestType & USB_REQ_RECIP_MASK) ==
	mov	dptr,#_Ep0Buffer
	movx	a,@dptr
	mov	r6,a
	anl	ar6,#0x1f
	mov	r5,#0x00
	cjne	r6,#0x02,00155$
	cjne	r5,#0x00,00155$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:167: switch (UsbSetupBuf->wIndexL) {
	mov	dptr,#(_Ep0Buffer + 0x0004)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x01,00471$
	sjmp	00151$
00471$:
	cjne	r6,#0x02,00472$
	sjmp	00149$
00472$:
	cjne	r6,#0x03,00473$
	sjmp	00147$
00473$:
	cjne	r6,#0x04,00474$
	sjmp	00145$
00474$:
	cjne	r6,#0x81,00475$
	sjmp	00150$
00475$:
	cjne	r6,#0x82,00476$
	sjmp	00148$
00476$:
	cjne	r6,#0x83,00477$
	sjmp	00146$
00477$:
	cjne	r6,#0x84,00152$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:170: UEP4_CTRL & ~(bUEP_T_TOG | MASK_UEP_T_RES) | UEP_T_RES_NAK;
	mov	a,#0xbc
	anl	a,_UEP4_CTRL
	orl	a,#0x02
	mov	_UEP4_CTRL,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:171: break;
	ljmp	00197$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:172: case 0x04:
00145$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:174: UEP4_CTRL & ~(bUEP_R_TOG | MASK_UEP_R_RES) | UEP_R_RES_ACK;
	anl	_UEP4_CTRL,#0x73
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:175: break;
	ljmp	00197$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:176: case 0x83:
00146$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:178: UEP3_CTRL & ~(bUEP_T_TOG | MASK_UEP_T_RES) | UEP_T_RES_NAK;
	mov	a,#0xbc
	anl	a,_UEP3_CTRL
	orl	a,#0x02
	mov	_UEP3_CTRL,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:179: break;
	ljmp	00197$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:180: case 0x03:
00147$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:182: UEP3_CTRL & ~(bUEP_R_TOG | MASK_UEP_R_RES) | UEP_R_RES_ACK;
	anl	_UEP3_CTRL,#0x73
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:183: break;
	ljmp	00197$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:184: case 0x82:
00148$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:186: UEP2_CTRL & ~(bUEP_T_TOG | MASK_UEP_T_RES) | UEP_T_RES_NAK;
	mov	a,#0xbc
	anl	a,_UEP2_CTRL
	orl	a,#0x02
	mov	_UEP2_CTRL,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:187: break;
	ljmp	00197$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:188: case 0x02:
00149$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:190: UEP2_CTRL & ~(bUEP_R_TOG | MASK_UEP_R_RES) | UEP_R_RES_ACK;
	anl	_UEP2_CTRL,#0x73
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:191: break;
	ljmp	00197$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:192: case 0x81:
00150$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:194: UEP1_CTRL & ~(bUEP_T_TOG | MASK_UEP_T_RES) | UEP_T_RES_NAK;
	mov	a,#0xbc
	anl	a,_UEP1_CTRL
	orl	a,#0x02
	mov	_UEP1_CTRL,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:195: break;
	ljmp	00197$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:196: case 0x01:
00151$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:198: UEP1_CTRL & ~(bUEP_R_TOG | MASK_UEP_R_RES) | UEP_R_RES_ACK;
	anl	_UEP1_CTRL,#0x73
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:199: break;
	ljmp	00197$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:200: default:
00152$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:201: len = 0xFF; // Unsupported endpoint
	mov	r7,#0xff
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:203: }
	ljmp	00197$
00155$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:205: len = 0xFF; // Unsupported for non-endpoint
	mov	r7,#0xff
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:207: break;
	ljmp	00197$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:208: case USB_SET_FEATURE: // Set Feature
00160$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:209: if ((UsbSetupBuf->bRequestType & 0x1F) ==
	mov	dptr,#_Ep0Buffer
	movx	a,@dptr
	anl	a,#0x1f
	jnz	00184$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:212: if ((((uint16_t)UsbSetupBuf->wValueH << 8) | UsbSetupBuf->wValueL) ==
	mov	dptr,#(_Ep0Buffer + 0x0003)
	movx	a,@dptr
	mov	r5,a
	mov	r6,#0x00
	mov	dptr,#(_Ep0Buffer + 0x0002)
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	orl	ar6,a
	mov	a,r3
	orl	ar5,a
	cjne	r6,#0x01,00165$
	cjne	r5,#0x00,00165$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:214: if (ConfigurationDescriptor.Config.ConfigAttributes & 0x20) {
	mov	dptr,#(_ConfigurationDescriptor + 0x0007)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	jnb	acc.5,00484$
	ljmp	00197$
00484$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:223: len = 0xFF; // Failed
	mov	r7,#0xff
	ljmp	00197$
00165$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:226: len = 0xFF; // Failed
	mov	r7,#0xff
	ljmp	00197$
00184$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:228: } else if ((UsbSetupBuf->bRequestType & 0x1F) ==
	mov	dptr,#_Ep0Buffer
	movx	a,@dptr
	mov	r6,a
	anl	ar6,#0x1f
	mov	r5,#0x00
	cjne	r6,#0x02,00485$
	cjne	r5,#0x00,00485$
	sjmp	00486$
00485$:
	ljmp	00181$
00486$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:231: if ((((uint16_t)UsbSetupBuf->wValueH << 8) | UsbSetupBuf->wValueL) ==
	mov	dptr,#(_Ep0Buffer + 0x0003)
	movx	a,@dptr
	mov	r5,a
	mov	r6,#0x00
	mov	dptr,#(_Ep0Buffer + 0x0002)
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	orl	ar6,a
	mov	a,r3
	orl	ar5,a
	mov	a,r6
	orl	a,r5
	jz	00487$
	ljmp	00178$
00487$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:233: switch (((uint16_t)UsbSetupBuf->wIndexH << 8) |
	mov	dptr,#(_Ep0Buffer + 0x0005)
	movx	a,@dptr
	mov	r5,a
	mov	r6,#0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:234: UsbSetupBuf->wIndexL) {
	mov	dptr,#(_Ep0Buffer + 0x0004)
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	orl	ar6,a
	mov	a,r3
	orl	ar5,a
	cjne	r6,#0x01,00488$
	cjne	r5,#0x00,00488$
	ljmp	00174$
00488$:
	cjne	r6,#0x02,00489$
	cjne	r5,#0x00,00489$
	sjmp	00172$
00489$:
	cjne	r6,#0x03,00490$
	cjne	r5,#0x00,00490$
	sjmp	00170$
00490$:
	cjne	r6,#0x04,00491$
	cjne	r5,#0x00,00491$
	sjmp	00168$
00491$:
	cjne	r6,#0x81,00492$
	cjne	r5,#0x00,00492$
	sjmp	00173$
00492$:
	cjne	r6,#0x82,00493$
	cjne	r5,#0x00,00493$
	sjmp	00171$
00493$:
	cjne	r6,#0x83,00494$
	cjne	r5,#0x00,00494$
	sjmp	00169$
00494$:
	cjne	r6,#0x84,00175$
	cjne	r5,#0x00,00175$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:236: UEP4_CTRL = UEP4_CTRL & (~bUEP_T_TOG) |
	mov	a,#0xbf
	anl	a,_UEP4_CTRL
	orl	a,#0x03
	mov	_UEP4_CTRL,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:238: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:239: case 0x04:
	sjmp	00197$
00168$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:240: UEP4_CTRL = UEP4_CTRL & (~bUEP_R_TOG) |
	mov	a,#0x7f
	anl	a,_UEP4_CTRL
	orl	a,#0x0c
	mov	_UEP4_CTRL,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:242: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:243: case 0x83:
	sjmp	00197$
00169$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:244: UEP3_CTRL = UEP3_CTRL & (~bUEP_T_TOG) |
	mov	a,#0xbf
	anl	a,_UEP3_CTRL
	orl	a,#0x03
	mov	_UEP3_CTRL,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:246: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:247: case 0x03:
	sjmp	00197$
00170$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:248: UEP3_CTRL = UEP3_CTRL & (~bUEP_R_TOG) |
	mov	a,#0x7f
	anl	a,_UEP3_CTRL
	orl	a,#0x0c
	mov	_UEP3_CTRL,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:250: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:251: case 0x82:
	sjmp	00197$
00171$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:252: UEP2_CTRL = UEP2_CTRL & (~bUEP_T_TOG) |
	mov	a,#0xbf
	anl	a,_UEP2_CTRL
	orl	a,#0x03
	mov	_UEP2_CTRL,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:254: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:255: case 0x02:
	sjmp	00197$
00172$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:256: UEP2_CTRL = UEP2_CTRL & (~bUEP_R_TOG) |
	mov	a,#0x7f
	anl	a,_UEP2_CTRL
	orl	a,#0x0c
	mov	_UEP2_CTRL,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:258: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:259: case 0x81:
	sjmp	00197$
00173$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:260: UEP1_CTRL = UEP1_CTRL & (~bUEP_T_TOG) |
	mov	a,#0xbf
	anl	a,_UEP1_CTRL
	orl	a,#0x03
	mov	_UEP1_CTRL,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:262: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:263: case 0x01:
	sjmp	00197$
00174$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:264: UEP1_CTRL = UEP1_CTRL & (~bUEP_R_TOG) |
	mov	a,#0x7f
	anl	a,_UEP1_CTRL
	orl	a,#0x0c
	mov	_UEP1_CTRL,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:266: default:
00175$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:267: len = 0xFF; // Failed
	mov	r7,#0xff
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:269: }
	sjmp	00197$
00178$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:271: len = 0xFF; // Failed
	mov	r7,#0xff
	sjmp	00197$
00181$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:274: len = 0xFF; // Failed
	mov	r7,#0xff
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:276: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:277: case USB_GET_STATUS:
	sjmp	00197$
00186$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:278: Ep0Buffer[0] = 0x00;
	mov	dptr,#_Ep0Buffer
	clr	a
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:279: Ep0Buffer[1] = 0x00;
	mov	dptr,#(_Ep0Buffer + 0x0001)
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:280: if (SetupLen >= 2) {
	mov	r5,_SetupLen
	mov	r6,(_SetupLen + 1)
	clr	c
	mov	a,r5
	subb	a,#0x02
	mov	a,r6
	subb	a,#0x00
	jc	00188$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:281: len = 2;
	mov	r7,#0x02
	sjmp	00197$
00188$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:283: len = SetupLen;
	mov	r7,_SetupLen
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:285: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:286: default:
	sjmp	00197$
00190$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:287: len = 0xff; // Failed
	mov	r7,#0xff
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:289: }
	sjmp	00197$
00196$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:292: len = 0xff; // Wrong packet length
	mov	r7,#0xff
00197$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:294: if (len == 0xff) {
	cjne	r7,#0xff,00202$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:295: SetupReq = 0xFF;
	mov	_SetupReq,#0xff
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:297: bUEP_R_TOG | bUEP_T_TOG | UEP_R_RES_STALL | UEP_T_RES_STALL; // STALL
	mov	_UEP0_CTRL,#0xcf
	ret
00202$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:299: DEFAULT_ENDP0_SIZE) // Tx data to host or send 0-length packet
	mov	a,r7
	add	a,#0xff - 0x08
	jc	00199$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:301: UEP0_T_LEN = len;
	mov	_UEP0_T_LEN,r7
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:303: UEP_T_RES_ACK; // Expect DATA1, Answer ACK
	mov	_UEP0_CTRL,#0xc0
	ret
00199$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:305: UEP0_T_LEN = 0; // Tx data to host or send 0-length packet
	mov	_UEP0_T_LEN,#0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:307: UEP_T_RES_ACK; // Expect DATA1, Answer ACK
	mov	_UEP0_CTRL,#0xc0
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:309: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_EP0_IN'
;------------------------------------------------------------
;len                       Allocated to registers r4 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:311: void USB_EP0_IN() {
;	-----------------------------------------
;	 function USB_EP0_IN
;	-----------------------------------------
_USB_EP0_IN:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:312: switch (SetupReq) {
	mov	a,#0x05
	cjne	a,_SetupReq,00134$
	sjmp	00103$
00134$:
	mov	a,#0x06
	cjne	a,_SetupReq,00104$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:314: __data uint8_t len = SetupLen >= DEFAULT_ENDP0_SIZE
	mov	r6,_SetupLen
	mov	r7,(_SetupLen + 1)
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	subb	a,#0x00
	mov	_USB_EP0_IN_sloc0_1_0,c
	jc	00111$
	mov	r4,#0x08
	mov	r5,#0x00
	sjmp	00112$
00111$:
	mov	r4,_SetupLen
	mov	r5,(_SetupLen + 1)
00112$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:317: for (__data uint8_t i = 0; i < len; i++) {
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r5
	subb	a,r4
	jnc	00102$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:318: Ep0Buffer[i] = pDescr[i];
	mov	ar2,r5
	mov	r3,#(_Ep0Buffer >> 8)
	mov	a,r5
	add	a,_pDescr
	mov	dpl,a
	clr	a
	addc	a,(_pDescr + 1)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r1,a
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:317: for (__data uint8_t i = 0; i < len; i++) {
	inc	r5
	sjmp	00107$
00102$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:321: SetupLen -= len;
	mov	ar3,r4
	mov	r5,#0x00
	mov	a,r6
	clr	c
	subb	a,r3
	mov	r6,a
	mov	a,r7
	subb	a,r5
	mov	r7,a
	mov	_SetupLen,r6
	mov	(_SetupLen + 1),r7
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:322: pDescr += len;
	mov	a,r4
	add	a,_pDescr
	mov	_pDescr,a
	clr	a
	addc	a,(_pDescr + 1)
	mov	(_pDescr + 1),a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:323: UEP0_T_LEN = len;
	mov	_UEP0_T_LEN,r4
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:324: UEP0_CTRL ^= bUEP_T_TOG; // Switch between DATA0 and DATA1
	xrl	_UEP0_CTRL,#0x40
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:325: } break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:326: case USB_SET_ADDRESS:
	ret
00103$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:327: USB_DEV_AD = USB_DEV_AD & bUDA_GP_BIT | SetupLen;
	mov	a,_USB_DEV_AD
	anl	a,#0x80
	mov	r7,a
	mov	a,_SetupLen
	orl	a,r7
	mov	_USB_DEV_AD,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:328: UEP0_CTRL = UEP_R_RES_ACK | UEP_T_RES_NAK;
	mov	_UEP0_CTRL,#0x02
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:329: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:330: default:
	ret
00104$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:331: UEP0_T_LEN = 0; // End of transaction
	mov	_UEP0_T_LEN,#0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:332: UEP0_CTRL = UEP_R_RES_ACK | UEP_T_RES_NAK;
	mov	_UEP0_CTRL,#0x02
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:334: }
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:335: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_EP0_OUT'
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:337: void USB_EP0_OUT() {
;	-----------------------------------------
;	 function USB_EP0_OUT
;	-----------------------------------------
_USB_EP0_OUT:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:338: if (SetupReq == SET_LINE_CODING) // Set line coding
	mov	a,#0x20
	cjne	a,_SetupReq,00104$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:340: if (U_TOG_OK) {
	jnb	_U_TOG_OK,00106$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:341: setLineCodingHandler();
	lcall	_setLineCodingHandler
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:342: UEP0_T_LEN = 0;
	mov	_UEP0_T_LEN,#0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:343: UEP0_CTRL |= UEP_R_RES_ACK | UEP_T_RES_ACK; // send 0-length packet
	mov	_UEP0_CTRL,_UEP0_CTRL
	ret
00104$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:346: UEP0_T_LEN = 0;
	mov	_UEP0_T_LEN,#0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:347: UEP0_CTRL |= UEP_R_RES_ACK | UEP_T_RES_NAK; // Respond Nak
	orl	_UEP0_CTRL,#0x02
00106$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:349: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_EP1_IN'
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:351: void USB_EP1_IN() {
;	-----------------------------------------
;	 function USB_EP1_IN
;	-----------------------------------------
_USB_EP1_IN:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:352: UEP1_T_LEN = 0;
	mov	_UEP1_T_LEN,#0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:353: UEP1_CTRL = UEP1_CTRL & ~MASK_UEP_T_RES | UEP_T_RES_NAK; // Default NAK
	mov	a,#0xfc
	anl	a,_UEP1_CTRL
	orl	a,#0x02
	mov	_UEP1_CTRL,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:354: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBInterrupt'
;------------------------------------------------------------
;callIndex                 Allocated to registers r7 
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:358: void USBInterrupt(void) { // inline not really working in multiple files in SDCC
;	-----------------------------------------
;	 function USBInterrupt
;	-----------------------------------------
_USBInterrupt:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:359: if (UIF_TRANSFER) {
	jb	_UIF_TRANSFER,00208$
	ljmp	00135$
00208$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:361: __data uint8_t callIndex = USB_INT_ST & MASK_UIS_ENDP;
	mov	a,_USB_INT_ST
	anl	a,#0x0f
	mov	r7,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:362: switch (USB_INT_ST & MASK_UIS_TOKEN) {
	mov	r5,_USB_INT_ST
	anl	ar5,#0x30
	mov	r6,#0x00
	cjne	r5,#0x00,00209$
	cjne	r6,#0x00,00209$
	sjmp	00101$
00209$:
	cjne	r5,#0x10,00210$
	cjne	r6,#0x00,00210$
	sjmp	00109$
00210$:
	cjne	r5,#0x20,00211$
	cjne	r6,#0x00,00211$
	sjmp	00117$
00211$:
	cjne	r5,#0x30,00212$
	cjne	r6,#0x00,00212$
	ljmp	00125$
00212$:
	ljmp	00133$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:363: case UIS_TOKEN_OUT: { // SDCC will take IRAM if array of function pointer is
00101$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:365: switch (callIndex) {
	mov	a,r7
	add	a,#0xff - 0x04
	jnc	00213$
	ljmp	00133$
00213$:
	mov	a,r7
	add	a,r7
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:366: case 0:
	mov	dptr,#00214$
	jmp	@a+dptr
00214$:
	sjmp	00102$
	sjmp	00133$
	sjmp	00104$
	sjmp	00133$
	sjmp	00133$
00102$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:367: EP0_OUT_Callback();
	lcall	_USB_EP0_OUT
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:368: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:372: case 2:
	sjmp	00133$
00104$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:373: EP2_OUT_Callback();
	lcall	_USB_EP2_OUT
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:374: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:385: case UIS_TOKEN_SOF: { // SDCC will take IRAM if array of function pointer is
	sjmp	00133$
00109$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:387: switch (callIndex) {
	mov	a,r7
	add	a,#0xff - 0x04
	jc	00133$
	mov	a,r7
	add	a,r7
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:407: case UIS_TOKEN_IN: { // SDCC will take IRAM if array of function pointer is
	mov	dptr,#00216$
	jmp	@a+dptr
00216$:
	sjmp	00133$
	sjmp	00133$
	sjmp	00133$
	sjmp	00133$
	sjmp	00133$
00117$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:409: switch (callIndex) {
	mov	a,r7
	add	a,#0xff - 0x04
	jc	00133$
	mov	a,r7
	add	a,r7
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:410: case 0:
	mov	dptr,#00218$
	jmp	@a+dptr
00218$:
	sjmp	00118$
	sjmp	00119$
	sjmp	00120$
	sjmp	00133$
	sjmp	00133$
00118$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:411: EP0_IN_Callback();
	lcall	_USB_EP0_IN
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:412: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:413: case 1:
	sjmp	00133$
00119$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:414: EP1_IN_Callback();
	lcall	_USB_EP1_IN
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:415: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:416: case 2:
	sjmp	00133$
00120$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:417: EP2_IN_Callback();
	lcall	_USB_EP2_IN
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:418: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:429: case UIS_TOKEN_SETUP: { // SDCC will take IRAM if array of function pointer
	sjmp	00133$
00125$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:431: switch (callIndex) {
	mov	a,r7
	add	a,#0xff - 0x04
	jc	00133$
	mov	a,r7
	add	a,r7
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:432: case 0:
	mov	dptr,#00220$
	jmp	@a+dptr
00220$:
	sjmp	00126$
	sjmp	00133$
	sjmp	00133$
	sjmp	00133$
	sjmp	00133$
00126$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:433: EP0_SETUP_Callback();
	lcall	_USB_EP0_SETUP
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:451: }
00133$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:453: UIF_TRANSFER = 0; // Clear interrupt flag
;	assignBit
	clr	_UIF_TRANSFER
00135$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:457: if (UIF_BUS_RST) {
	jnb	_UIF_BUS_RST,00137$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:458: UEP0_CTRL = UEP_R_RES_ACK | UEP_T_RES_NAK;
	mov	_UEP0_CTRL,#0x02
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:460: UEP_T_RES_NAK; // Endpoint 1 automatically flips the sync flag,
	mov	_UEP1_CTRL,#0x12
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:463: UEP_R_RES_ACK; // Endpoint 2 automatically flips the sync flag,
	mov	_UEP2_CTRL,#0x12
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:468: USB_DEV_AD = 0x00;
	mov	_USB_DEV_AD,#0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:469: UIF_SUSPEND = 0;
;	assignBit
	clr	_UIF_SUSPEND
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:470: UIF_TRANSFER = 0;
;	assignBit
	clr	_UIF_TRANSFER
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:471: UIF_BUS_RST = 0; // Clear interrupt flag
;	assignBit
	clr	_UIF_BUS_RST
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:473: UsbConfig = 0;
	mov	dptr,#_UsbConfig
	clr	a
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:475: resetCDCParameters();
	lcall	_resetCDCParameters
00137$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:479: if (UIF_SUSPEND) {
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:480: UIF_SUSPEND = 0;
;	assignBit
	jbc	_UIF_SUSPEND,00222$
	ret
00222$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:481: if (USB_MIS_ST & bUMS_SUSPEND) { // Suspend
	mov	a,_USB_MIS_ST
	jb	acc.2,00157$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:491: USB_INT_FG = 0xFF; // Clear interrupt flag
	mov	_USB_INT_FG,#0xff
00157$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:494: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBDeviceCfg'
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:497: void USBDeviceCfg() {
;	-----------------------------------------
;	 function USBDeviceCfg
;	-----------------------------------------
_USBDeviceCfg:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:498: USB_CTRL = 0x00;            // Clear USB control register
	mov	_USB_CTRL,#0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:499: USB_CTRL &= ~bUC_HOST_MODE; // This bit is the device selection mode
	anl	_USB_CTRL,#0x7f
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:501: bUC_DMA_EN; // USB device and internal pull-up enable,
	orl	_USB_CTRL,#0x29
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:504: USB_DEV_AD = 0x00;      // Device address initialization
	mov	_USB_DEV_AD,#0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:507: USB_CTRL &= ~bUC_LOW_SPEED;
	anl	_USB_CTRL,#0xbf
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:508: UDEV_CTRL &= ~bUD_LOW_SPEED; // Select full speed 12M mode, default mode
	anl	_UDEV_CTRL,#0xfb
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:514: UDEV_CTRL = bUD_DP_PD_DIS; // Disable DP/DM pull-down resistor
	mov	_UDEV_CTRL,#0x20
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:516: UDEV_CTRL |= bUD_PORT_EN; // Enable physical port
	orl	_UDEV_CTRL,#0x01
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:517: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBDeviceIntCfg'
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:519: void USBDeviceIntCfg() {
;	-----------------------------------------
;	 function USBDeviceIntCfg
;	-----------------------------------------
_USBDeviceIntCfg:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:520: USB_INT_EN |= bUIE_SUSPEND;  // Enable device hang interrupt
	orl	_USB_INT_EN,#0x04
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:521: USB_INT_EN |= bUIE_TRANSFER; // Enable USB transfer completion interrupt
	orl	_USB_INT_EN,#0x02
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:522: USB_INT_EN |= bUIE_BUS_RST;  // Enable device mode USB bus reset interrupt
	orl	_USB_INT_EN,#0x01
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:523: USB_INT_FG |= 0x1F;          // Clear interrupt flag
	orl	_USB_INT_FG,#0x1f
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:524: IE_USB = 1;                  // Enable USB interrupt
;	assignBit
	setb	_IE_USB
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:525: EA = 1;                      // Enable global interrupts
;	assignBit
	setb	_EA
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:526: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBDeviceEndPointCfg'
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:528: void USBDeviceEndPointCfg() {
;	-----------------------------------------
;	 function USBDeviceEndPointCfg
;	-----------------------------------------
_USBDeviceEndPointCfg:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:531: UEP0_DMA_H = ((uint16_t)Ep0Buffer >> 8); // Endpoint 0 data transfer address
	mov	r6,#_Ep0Buffer
	mov	r7,#(_Ep0Buffer >> 8)
	mov	dptr,#_UEP0_DMA_H
	mov	a,r7
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:532: UEP0_DMA_L = ((uint16_t)Ep0Buffer >> 0); // Endpoint 0 data transfer address
	mov	r6,#_Ep0Buffer
	mov	r7,#(_Ep0Buffer >> 8)
	mov	dptr,#_UEP0_DMA_L
	mov	a,r6
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:533: UEP1_DMA_H = ((uint16_t)Ep1Buffer >> 8); // Endpoint 1 data transfer address
	mov	r6,#_Ep1Buffer
	mov	r7,#(_Ep1Buffer >> 8)
	mov	dptr,#_UEP1_DMA_H
	mov	a,r7
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:534: UEP1_DMA_L = ((uint16_t)Ep1Buffer >> 0); // Endpoint 1 data transfer address
	mov	r6,#_Ep1Buffer
	mov	r7,#(_Ep1Buffer >> 8)
	mov	dptr,#_UEP1_DMA_L
	mov	a,r6
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:535: UEP2_DMA_H = ((uint16_t)Ep2Buffer >> 8); // Endpoint 2 data transfer address
	mov	r6,#_Ep2Buffer
	mov	r7,#(_Ep2Buffer >> 8)
	mov	dptr,#_UEP2_DMA_H
	mov	a,r7
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:536: UEP2_DMA_L = ((uint16_t)Ep2Buffer >> 0); // Endpoint 2 data transfer address
	mov	r6,#_Ep2Buffer
	mov	r7,#(_Ep2Buffer >> 8)
	mov	dptr,#_UEP2_DMA_L
	mov	a,r6
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:543: UEP2_3_MOD = 0x0C; // Endpoint2 double buffer
	mov	dptr,#_UEP2_3_MOD
	mov	a,#0x0c
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:545: bUEP_AUTO_TOG | UEP_T_RES_NAK; // Endpoint 1 automatically flips the sync
	mov	_UEP1_CTRL,#0x12
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:548: UEP_R_RES_ACK; // Endpoint 2 automatically flips the sync flag, IN
	mov	_UEP2_CTRL,#0x12
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:551: UEP4_1_MOD = 0X40; // endpoint1 TX enable
	mov	dptr,#_UEP4_1_MOD
	mov	a,#0x40
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:553: UEP_R_RES_ACK | UEP_T_RES_NAK; // Manual flip, OUT transaction returns
	mov	_UEP0_CTRL,#0x02
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBhandler.c:555: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
