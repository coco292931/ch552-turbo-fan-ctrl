;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13407 (MINGW32)
;--------------------------------------------------------
	.module USBCDC
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _USB_EP2_OUT
	.globl _USB_EP2_IN
	.globl _USBSerial_read
	.globl _USBSerial_available
	.globl _USBSerial_print_n
	.globl _USBSerial_write
	.globl _USBSerial_flush
	.globl _USBSerial
	.globl _USBSerial_wait_UpPoint2BusyFlag_clear
	.globl _setControlLineStateHandler
	.globl _getLineCodingHandler
	.globl _setLineCodingHandler
	.globl _resetCDCParameters
	.globl _delayMicroseconds
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
	.globl _usbWritePointer
	.globl _controlLineState
	.globl _USBBufOutPointEP2
	.globl _USBByteCountEP2
	.globl _LineCoding
	.globl _USBSerial_print_n_PARM_2
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
	.globl _UpPoint2BusyFlag
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
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_USBSerial_result_65536_13:
	.ds 1
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
_UpPoint2BusyFlag::
	.ds 1
_setLineCodingHandler_sloc0_1_0:
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
_USBSerial_print_n_PARM_2:
	.ds 2
_USBSerial_print_n_buf_65536_25:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_LineCoding::
	.ds 7
_USBByteCountEP2::
	.ds 1
_USBBufOutPointEP2::
	.ds 1
_controlLineState::
	.ds 1
_usbWritePointer::
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
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:27: volatile __bit UpPoint2BusyFlag = 0; // Flag of whether upload pointer is busy
;	assignBit
	clr	_UpPoint2BusyFlag
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
;Allocation info for local variables in function 'resetCDCParameters'
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:34: void resetCDCParameters() {
;	-----------------------------------------
;	 function resetCDCParameters
;	-----------------------------------------
_resetCDCParameters:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:36: USBByteCountEP2 = 0; // Bytes of received data on USB endpoint
	mov	dptr,#_USBByteCountEP2
	clr	a
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:37: UpPoint2BusyFlag = 0;
;	assignBit
	clr	_UpPoint2BusyFlag
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:38: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setLineCodingHandler'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:40: void setLineCodingHandler() {
;	-----------------------------------------
;	 function setLineCodingHandler
;	-----------------------------------------
_setLineCodingHandler:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:41: for (__data uint8_t i = 0;
	mov	r7,#0x00
00103$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:42: i < ((LINE_CODEING_SIZE <= USB_RX_LEN) ? LINE_CODEING_SIZE : USB_RX_LEN);
	clr	c
	mov	a,_USB_RX_LEN
	subb	a,#0x07
	mov	_setLineCodingHandler_sloc0_1_0,c
	jc	00107$
	mov	r5,#0x07
	mov	r6,#0x00
	sjmp	00108$
00107$:
	mov	r5,_USB_RX_LEN
	mov	r6,#0x00
00108$:
	mov	ar3,r7
	mov	r4,#0x00
	clr	c
	mov	a,r3
	subb	a,r5
	mov	a,r4
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:44: LineCoding[i] = Ep0Buffer[i];
	mov	a,r7
	add	a,#_LineCoding
	mov	r5,a
	clr	a
	addc	a,#(_LineCoding >> 8)
	mov	r6,a
	mov	a,r7
	add	a,#_Ep0Buffer
	mov	dpl,a
	clr	a
	addc	a,#(_Ep0Buffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:43: i++) {
	inc	r7
	sjmp	00103$
00105$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:48: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getLineCodingHandler'
;------------------------------------------------------------
;returnLen                 Allocated to registers 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:50: uint16_t getLineCodingHandler() {
;	-----------------------------------------
;	 function getLineCodingHandler
;	-----------------------------------------
_getLineCodingHandler:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:54: for (__data uint8_t i = 0; i < returnLen; i++) {
	mov	r7,#0x00
00103$:
	mov	ar5,r7
	mov	r6,#0x00
	clr	c
	mov	a,r5
	subb	a,#0x07
	mov	a,r6
	subb	a,#0x00
	jnc	00101$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:55: Ep0Buffer[i] = LineCoding[i];
	mov	a,r7
	add	a,#_Ep0Buffer
	mov	r5,a
	clr	a
	addc	a,#(_Ep0Buffer >> 8)
	mov	r6,a
	mov	a,r7
	add	a,#_LineCoding
	mov	dpl,a
	clr	a
	addc	a,#(_LineCoding >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:54: for (__data uint8_t i = 0; i < returnLen; i++) {
	inc	r7
	sjmp	00103$
00101$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:58: return returnLen;
	mov	dptr,#0x0007
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:59: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setControlLineStateHandler'
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:61: void setControlLineStateHandler() {
;	-----------------------------------------
;	 function setControlLineStateHandler
;	-----------------------------------------
_setControlLineStateHandler:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:62: controlLineState = Ep0Buffer[2];
	mov	dptr,#(_Ep0Buffer + 0x0002)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_controlLineState
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:65: if (((controlLineState & 0x01) == 0) &&
	movx	a,@dptr
	jb	acc.0,00107$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:66: (*((__xdata uint32_t *)LineCoding) ==
	mov	dptr,#_LineCoding
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
	cjne	r4,#0xb0,00107$
	cjne	r5,#0x04,00107$
	cjne	r6,#0x00,00107$
	cjne	r7,#0x00,00107$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:81: USB_CTRL = 0;
	mov	_USB_CTRL,#0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:82: EA = 0; // Disabling all interrupts is required.
;	assignBit
	clr	_EA
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:83: delayMicroseconds(50000);
	mov	dptr,#0xc350
	lcall	_delayMicroseconds
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:84: delayMicroseconds(50000);
	mov	dptr,#0xc350
	lcall	_delayMicroseconds
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:86: __asm__("lcall #0xF400"); // Jump to bootloader code
	lcall	#0xF400
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:88: while (1)
00102$:
	sjmp	00102$
00107$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:94: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBSerial_wait_UpPoint2BusyFlag_clear'
;------------------------------------------------------------
;waitWriteCount            Allocated to registers r6 r7 
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:96: uint8_t USBSerial_wait_UpPoint2BusyFlag_clear() {
;	-----------------------------------------
;	 function USBSerial_wait_UpPoint2BusyFlag_clear
;	-----------------------------------------
_USBSerial_wait_UpPoint2BusyFlag_clear:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:98: while (UpPoint2BusyFlag) { // wait for 250ms or give up, on my mac it takes
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	jnb	_UpPoint2BusyFlag,00105$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:100: waitWriteCount++;
	inc	r6
	cjne	r6,#0x00,00121$
	inc	r7
00121$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:101: delayMicroseconds(5);
	mov	dptr,#0x0005
	push	ar7
	push	ar6
	lcall	_delayMicroseconds
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:102: if (waitWriteCount >= 50000)
	clr	c
	mov	a,r6
	subb	a,#0x50
	mov	a,r7
	subb	a,#0xc3
	jc	00103$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:103: return 0;
	mov	dpl,#0x00
	ret
00105$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:105: return 1;
	mov	dpl,#0x01
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:106: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBSerial'
;------------------------------------------------------------
;result                    Allocated with name '_USBSerial_result_65536_13'
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:108: bool USBSerial() {
;	-----------------------------------------
;	 function USBSerial
;	-----------------------------------------
_USBSerial:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:109: __data bool result = false;
	mov	_USBSerial_result_65536_13,#0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:110: if (controlLineState > 0)
	mov	dptr,#_controlLineState
	movx	a,@dptr
	jz	00102$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:111: result = true;
	mov	_USBSerial_result_65536_13,#0x01
00102$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:113: return result;
	mov	dpl,_USBSerial_result_65536_13
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:114: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBSerial_flush'
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:116: void USBSerial_flush(void) {
;	-----------------------------------------
;	 function USBSerial_flush
;	-----------------------------------------
_USBSerial_flush:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:117: if (!UpPoint2BusyFlag && usbWritePointer > 0) {
	jb	_UpPoint2BusyFlag,00108$
	mov	dptr,#_usbWritePointer
	movx	a,@dptr
	mov	r7,a
	jz	00108$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:118: UEP2_T_LEN = usbWritePointer;
	mov	_UEP2_T_LEN,r7
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:119: UEP2_CTRL = UEP2_CTRL & ~MASK_UEP_T_RES | UEP_T_RES_ACK; // Respond ACK
	anl	_UEP2_CTRL,#0xfc
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:120: UpPoint2BusyFlag = 1;
;	assignBit
	setb	_UpPoint2BusyFlag
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:123: MAX_PACKET_SIZE) { // write empty packet for end transmission. Needed
	cjne	r7,#0x40,00104$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:125: if (USBSerial_wait_UpPoint2BusyFlag_clear()) {
	lcall	_USBSerial_wait_UpPoint2BusyFlag_clear
	mov	a,dpl
	jz	00104$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:126: UEP2_T_LEN = 0;
	mov	_UEP2_T_LEN,#0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:127: UEP2_CTRL = UEP2_CTRL & ~MASK_UEP_T_RES | UEP_T_RES_ACK; // Respond ACK
	anl	_UEP2_CTRL,#0xfc
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:128: UpPoint2BusyFlag = 1;
;	assignBit
	setb	_UpPoint2BusyFlag
00104$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:131: usbWritePointer = 0;
	mov	dptr,#_usbWritePointer
	clr	a
	movx	@dptr,a
00108$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:133: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBSerial_write'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:135: uint8_t USBSerial_write(__data char c) { // 3 bytes generic pointer
;	-----------------------------------------
;	 function USBSerial_write
;	-----------------------------------------
_USBSerial_write:
	mov	r7,dpl
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:136: if (controlLineState > 0) {
	mov	dptr,#_controlLineState
	movx	a,@dptr
	jz	00110$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:137: while (true) {
00107$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:138: if (USBSerial_wait_UpPoint2BusyFlag_clear() == 0)
	push	ar7
	lcall	_USBSerial_wait_UpPoint2BusyFlag_clear
	mov	a,dpl
	pop	ar7
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:139: return 0;
	jnz	00102$
	mov	dpl,a
	ret
00102$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:140: if (usbWritePointer < MAX_PACKET_SIZE) {
	mov	dptr,#_usbWritePointer
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x40,00127$
00127$:
	jnc	00104$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:141: Ep2Buffer[MAX_PACKET_SIZE + usbWritePointer] = c;
	mov	r5,#0x00
	mov	a,#0x40
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	a,r6
	add	a,#_Ep2Buffer
	mov	dpl,a
	mov	a,r5
	addc	a,#(_Ep2Buffer >> 8)
	mov	dph,a
	mov	a,r7
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:142: usbWritePointer++;
	mov	dptr,#_usbWritePointer
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:143: return 1;
	mov	dpl,#0x01
	ret
00104$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:145: USBSerial_flush(); // go back to first while
	push	ar7
	lcall	_USBSerial_flush
	pop	ar7
	sjmp	00107$
00110$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:149: return 0;
	mov	dpl,#0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:150: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBSerial_print_n'
;------------------------------------------------------------
;len                       Allocated with name '_USBSerial_print_n_PARM_2'
;buf                       Allocated with name '_USBSerial_print_n_buf_65536_25'
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:153: USBSerial_print_n(uint8_t *__xdata buf,
;	-----------------------------------------
;	 function USBSerial_print_n
;	-----------------------------------------
_USBSerial_print_n:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_USBSerial_print_n_buf_65536_25
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:156: if (controlLineState > 0) {
	mov	dptr,#_controlLineState
	movx	a,@dptr
	jnz	00143$
	ljmp	00113$
00143$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:157: while (len > 0) {
00109$:
	mov	dptr,#_USBSerial_print_n_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00144$
	ljmp	00113$
00144$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:158: if (USBSerial_wait_UpPoint2BusyFlag_clear() == 0)
	push	ar7
	push	ar6
	lcall	_USBSerial_wait_UpPoint2BusyFlag_clear
	mov	a,dpl
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:159: return 0;
	jnz	00121$
	mov	dpl,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:160: while (len > 0) {
	ret
00121$:
	mov	dptr,#_USBSerial_print_n_buf_65536_25
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
00106$:
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:161: if (usbWritePointer < MAX_PACKET_SIZE) {
	mov	dptr,#_usbWritePointer
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x40,00147$
00147$:
	jnc	00104$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:162: Ep2Buffer[MAX_PACKET_SIZE + usbWritePointer] = *buf++;
	mov	ar1,r2
	mov	r2,#0x00
	mov	a,#0x40
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	a,r1
	add	a,#_Ep2Buffer
	mov	r1,a
	mov	a,r2
	addc	a,#(_Ep2Buffer >> 8)
	mov	r2,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	mov	r3,dpl
	mov	r4,dph
	mov	dptr,#_USBSerial_print_n_buf_65536_25
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	mov	a,r0
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:163: usbWritePointer++;
	mov	dptr,#_usbWritePointer
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:164: len--;
	dec	r6
	cjne	r6,#0xff,00149$
	dec	r7
00149$:
	mov	dptr,#_USBSerial_print_n_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00106$
00104$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:166: USBSerial_flush(); // go back to first while
	lcall	_USBSerial_flush
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:167: break;
	ljmp	00109$
00113$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:172: return 0;
	mov	dpl,#0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:173: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBSerial_available'
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:175: uint8_t USBSerial_available() { return USBByteCountEP2; }
;	-----------------------------------------
;	 function USBSerial_available
;	-----------------------------------------
_USBSerial_available:
	mov	dptr,#_USBByteCountEP2
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBSerial_read'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:177: char USBSerial_read() {
;	-----------------------------------------
;	 function USBSerial_read
;	-----------------------------------------
_USBSerial_read:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:178: if (USBByteCountEP2 == 0)
	mov	dptr,#_USBByteCountEP2
	movx	a,@dptr
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:179: return 0;
	jnz	00102$
	mov	dpl,a
	ret
00102$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:180: __data char data = Ep2Buffer[USBBufOutPointEP2];
	mov	dptr,#_USBBufOutPointEP2
	movx	a,@dptr
	add	a,#_Ep2Buffer
	mov	dpl,a
	clr	a
	addc	a,#(_Ep2Buffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:181: USBBufOutPointEP2++;
	mov	dptr,#_USBBufOutPointEP2
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:182: USBByteCountEP2--;
	mov	dptr,#_USBByteCountEP2
	movx	a,@dptr
	dec	a
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:183: if (USBByteCountEP2 == 0) {
	movx	a,@dptr
	jnz	00104$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:184: UEP2_CTRL = UEP2_CTRL & ~MASK_UEP_R_RES | UEP_R_RES_ACK;
	anl	_UEP2_CTRL,#0xf3
00104$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:186: return data;
	mov	dpl,r7
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:187: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_EP2_IN'
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:189: void USB_EP2_IN() {
;	-----------------------------------------
;	 function USB_EP2_IN
;	-----------------------------------------
_USB_EP2_IN:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:190: UEP2_T_LEN = 0; // No data to send anymore
	mov	_UEP2_T_LEN,#0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:192: UEP2_CTRL & ~MASK_UEP_T_RES | UEP_T_RES_NAK; // Respond NAK by default
	mov	a,#0xfc
	anl	a,_UEP2_CTRL
	orl	a,#0x02
	mov	_UEP2_CTRL,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:193: UpPoint2BusyFlag = 0;                            // Clear busy flag
;	assignBit
	clr	_UpPoint2BusyFlag
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:194: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_EP2_OUT'
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:196: void USB_EP2_OUT() {
;	-----------------------------------------
;	 function USB_EP2_OUT
;	-----------------------------------------
_USB_EP2_OUT:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:197: if (U_TOG_OK) // Discard unsynchronized packets
	jnb	_U_TOG_OK,00105$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:199: USBByteCountEP2 = USB_RX_LEN;
	mov	dptr,#_USBByteCountEP2
	mov	a,_USB_RX_LEN
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:200: USBBufOutPointEP2 = 0; // Reset Data pointer for fetching
	mov	dptr,#_USBBufOutPointEP2
	clr	a
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:201: if (USBByteCountEP2)
	mov	dptr,#_USBByteCountEP2
	movx	a,@dptr
	jz	00105$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:202: UEP2_CTRL = UEP2_CTRL & ~MASK_UEP_R_RES |
	mov	a,#0xf3
	anl	a,_UEP2_CTRL
	orl	a,#0x08
	mov	_UEP2_CTRL,a
00105$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\USBCDC.c:206: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__LineCoding:
	.db #0x00	; 0
	.db #0xe1	; 225
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
__xinit__USBByteCountEP2:
	.db #0x00	; 0
__xinit__USBBufOutPointEP2:
	.db #0x00	; 0
__xinit__controlLineState:
	.db #0x00	; 0
__xinit__usbWritePointer:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
