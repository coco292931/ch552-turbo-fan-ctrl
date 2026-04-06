;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13407 (MINGW32)
;--------------------------------------------------------
	.module usb_protocol
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _serial_println_float
	.globl _serial_println_uint
	.globl _serial_println_int
	.globl _serial_println_str
	.globl _serial_println
	.globl _serial_print_float
	.globl _serial_print_uint_base
	.globl _serial_print_uint
	.globl _serial_print_str
	.globl _serial_write
	.globl _serial_read
	.globl _serial_available
	.globl _serial_begin
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
	.globl _USBController_sendStatus_PARM_2
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
	.globl _USBController_begin
	.globl _USBController_update
	.globl _USBController_sendStatus
	.globl _USBController_isConnected
	.globl _USBController_getTargetVoltage
	.globl _USBController_isOverrideActive
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_usb_handleCommand_sloc0_1_0:
	.ds 3
_USBController_update_sloc0_1_0:
	.ds 3
_USBController_update_sloc1_1_0:
	.ds 3
_USBController_update_sloc2_1_0:
	.ds 3
_USBController_update_sloc3_1_0:
	.ds 3
_USBController_update_sloc4_1_0:
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
_usb_set_connected_uc_65536_216:
	.ds 3
_usb_reply_ok_key_value_PARM_2:
	.ds 3
_usb_reply_ok_key_value_key_65536_218:
	.ds 3
_usb_reply_ok_key_uint_PARM_2:
	.ds 4
_usb_reply_ok_key_uint_key_65536_221:
	.ds 3
_usb_reply_ok_key_float1_PARM_2:
	.ds 4
_usb_reply_ok_key_float1_key_65536_223:
	.ds 3
_usb_reply_ok_key_float2_PARM_2:
	.ds 4
_usb_reply_ok_key_float2_key_65536_225:
	.ds 3
_usb_print_key_segment_PARM_2:
	.ds 1
_usb_print_key_segment_key_65536_232:
	.ds 3
_usb_handleCommand_PARM_2:
	.ds 3
_usb_handleCommand_uc_65536_253:
	.ds 3
_USBController_begin_uc_65536_265:
	.ds 3
_USBController_update_uc_65536_267:
	.ds 3
_USBController_sendStatus_PARM_2:
	.ds 3
_USBController_isConnected_uc_65536_278:
	.ds 3
_USBController_getTargetVoltage_uc_65536_280:
	.ds 3
_USBController_isOverrideActive_uc_65536_282:
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
;Allocation info for local variables in function 'usb_str_eq'
;------------------------------------------------------------
;b                         Allocated to stack - _bp -5
;a                         Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +4
;sloc2                     Allocated to stack - _bp +5
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:17: static bool usb_str_eq(const char* a, const char* b) SDCC_REENTRANT {
;	-----------------------------------------
;	 function usb_str_eq
;	-----------------------------------------
_usb_str_eq:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x05
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:18: while (*a && *b) {
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
00104$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	jz	00106$
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	jz	00106$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:19: if (*a != *b) {
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	b,@r0
	mov	a,@r1
	cjne	a,b,00134$
	sjmp	00102$
00134$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:20: return false;
	mov	dpl,#0x00
	sjmp	00107$
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:22: a++;
	inc	r2
	cjne	r2,#0x00,00135$
	inc	r3
00135$:
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:23: b++;
	mov	r0,_bp
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00136$
	inc	r0
	inc	@r0
00136$:
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	sjmp	00104$
00106$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:25: return (*a == '\0') && (*b == '\0');
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jnz	00109$
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jz	00110$
00109$:
;	assignBit
	clr	b0
	sjmp	00111$
00110$:
;	assignBit
	setb	b0
00111$:
	mov	c,b0
	clr	a
	rlc	a
	mov	dpl,a
00107$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:26: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_starts_with'
;------------------------------------------------------------
;prefix                    Allocated to stack - _bp -5
;s                         Allocated to registers 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:28: static bool usb_starts_with(const char* s, const char* prefix) SDCC_REENTRANT {
;	-----------------------------------------
;	 function usb_starts_with
;	-----------------------------------------
_usb_starts_with:
	push	_bp
	mov	_bp,sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:29: while (*prefix) {
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
00103$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,_bp
	inc	r0
	lcall	__gptrget
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	jz	00105$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:30: if (*s != *prefix) {
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	cjne	a,ar4,00121$
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00102$
00121$:
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:31: return false;
	mov	dpl,#0x00
	sjmp	00106$
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:33: s++;
	inc	r5
	cjne	r5,#0x00,00122$
	inc	r6
00122$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:34: prefix++;
	inc	r2
	cjne	r2,#0x00,00103$
	inc	r3
	sjmp	00103$
00105$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:36: return true;
	mov	dpl,#0x01
00106$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:37: }
	dec	sp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_find_char'
;------------------------------------------------------------
;c                         Allocated to stack - _bp -3
;s                         Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:39: static const char* usb_find_char(const char* s, char c) SDCC_REENTRANT {
;	-----------------------------------------
;	 function usb_find_char
;	-----------------------------------------
_usb_find_char:
	push	_bp
	mov	_bp,sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:40: while (*s) {
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
00103$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,_bp
	inc	r0
	lcall	__gptrget
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	jz	00105$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:41: if (*s == c) {
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0xfd
	mov	r1,a
	mov	b,@r0
	mov	a,@r1
	cjne	a,b,00102$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:42: return s;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	sjmp	00106$
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:44: s++;
	inc	r2
	cjne	r2,#0x00,00123$
	inc	r3
00123$:
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	sjmp	00103$
00105$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:46: return (const char*)0;
	mov	dptr,#0x0000
	mov	b,#0x00
00106$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:47: }
	dec	sp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_parse_u32'
;------------------------------------------------------------
;s                         Allocated to registers 
;v                         Allocated to stack - _bp +8
;sloc0                     Allocated to stack - _bp +5
;sloc1                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:49: static uint32_t usb_parse_u32(const char* s) SDCC_REENTRANT {
;	-----------------------------------------
;	 function usb_parse_u32
;	-----------------------------------------
_usb_parse_u32:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0b
	mov	sp,a
	xch	a,r0
	mov	a,_bp
	add	a,#0x05
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:50: uint32_t v = 0;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:51: while (*s >= '0' && *s <= '9') {
00102$:
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x30,00120$
00120$:
	jc	00104$
	mov	a,r4
	add	a,#0xff - 0x39
	jc	00104$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:52: v = v * 10u + (uint32_t)(*s - '0');
	push	ar4
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dptr,#(0x0a&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r0,_bp
	inc	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	mov	r5,#0x00
	mov	a,r4
	add	a,#0xd0
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:53: s++;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00123$
	inc	r0
	inc	@r0
00123$:
	ljmp	00102$
00104$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:55: return v;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:56: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_parse_i32'
;------------------------------------------------------------
;s                         Allocated to registers r5 r6 r7 
;sign                      Allocated to stack - _bp +4
;v                         Allocated to registers r2 r4 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:58: static int usb_parse_i32(const char* s) SDCC_REENTRANT {
;	-----------------------------------------
;	 function usb_parse_i32
;	-----------------------------------------
_usb_parse_i32:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x05
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:59: int sign = 1;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:60: int v = 0;
	mov	r2,#0x00
	mov	r4,#0x00
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:61: if (*s == '-') {
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	cjne	r3,#0x2d,00104$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:62: sign = -1;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,#0xff
	inc	r0
	mov	@r0,#0xff
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:63: s++;
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
	sjmp	00116$
00104$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:64: } else if (*s == '+') {
	cjne	r3,#0x2b,00116$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:65: s++;
	inc	r5
	cjne	r5,#0x00,00138$
	inc	r6
00138$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:67: while (*s >= '0' && *s <= '9') {
00116$:
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00107$:
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	cjne	r3,#0x30,00139$
00139$:
	jc	00109$
	mov	a,r3
	add	a,#0xff - 0x39
	jc	00109$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:68: v = v * 10 + (*s - '0');
	push	ar3
	push	ar2
	push	ar4
	mov	dptr,#0x000a
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar3
	mov	r5,#0x00
	mov	a,r3
	add	a,#0xd0
	mov	r3,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r3
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	ar2,r6
	mov	ar4,r7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:69: s++;
	mov	r0,_bp
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00142$
	inc	r0
	inc	@r0
00142$:
	sjmp	00107$
00109$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:71: return sign * v;
	push	ar2
	push	ar4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	dpl,r6
	mov	dph,r7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:72: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_parse_float'
;------------------------------------------------------------
;s                         Allocated to registers 
;sign                      Allocated to registers r3 r2 
;int_part                  Allocated to stack - _bp +12
;frac_part                 Allocated to stack - _bp +16
;frac_scale                Allocated to stack - _bp +20
;sloc0                     Allocated to stack - _bp +5
;sloc1                     Allocated to stack - _bp +8
;sloc2                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:74: static float usb_parse_float(const char* s) SDCC_REENTRANT {
;	-----------------------------------------
;	 function usb_parse_float
;	-----------------------------------------
_usb_parse_float:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x17
	mov	sp,a
	mov	r4,dpl
	mov	r6,dph
	mov	r7,b
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:75: int sign = 1;
	mov	r3,#0x01
	mov	r2,#0x00
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:76: float int_part = 0.0f;
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:77: float frac_part = 0.0f;
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:78: float frac_scale = 1.0f;
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x80
	inc	r0
	mov	@r0,#0x3f
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:80: if (*s == '-') {
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x2d,00104$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:81: sign = -1;
	mov	r3,#0xff
	mov	r2,#0xff
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:82: s++;
	inc	r4
	cjne	r4,#0x00,00122$
	inc	r6
	sjmp	00122$
00104$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:83: } else if (*s == '+') {
	cjne	r5,#0x2b,00122$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:84: s++;
	inc	r4
	cjne	r4,#0x00,00170$
	inc	r6
00170$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:87: while (*s >= '0' && *s <= '9') {
00122$:
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00107$:
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	cjne	r6,#0x30,00171$
00171$:
	jnc	00172$
	ljmp	00109$
00172$:
	mov	a,r6
	add	a,#0xff - 0x39
	jnc	00173$
	ljmp	00109$
00173$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:88: int_part = int_part * 10.0f + (float)(*s - '0');
	push	ar6
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x41
	lcall	___fsmul
	xch	a,r0
	mov	a,_bp
	add	a,#0x08
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar6
	mov	r4,#0x00
	mov	a,r6
	add	a,#0xd0
	mov	r6,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
	mov	dpl,r6
	mov	dph,r4
	push	ar3
	push	ar2
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsadd
	mov	r6,dpl
	mov	r5,dph
	mov	r4,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:89: s++;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00174$
	inc	r0
	inc	@r0
00174$:
	ljmp	00107$
00109$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:92: if (*s == '.') {
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x2e,00175$
	sjmp	00176$
00175$:
	ljmp	00115$
00176$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:93: s++;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	a,#0x01
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:94: while (*s >= '0' && *s <= '9') {
00111$:
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x30,00177$
00177$:
	jnc	00178$
	ljmp	00115$
00178$:
	mov	a,r4
	add	a,#0xff - 0x39
	jnc	00179$
	ljmp	00115$
00179$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:95: frac_part = frac_part * 10.0f + (float)(*s - '0');
	push	ar4
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x41
	lcall	___fsmul
	mov	r0,_bp
	inc	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	mov	r5,#0x00
	mov	a,r4
	add	a,#0xd0
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	push	ar3
	push	ar2
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:96: frac_scale *= 10.0f;
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x41
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:97: s++;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00180$
	inc	r0
	inc	@r0
00180$:
	ljmp	00111$
00115$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:101: return (float)sign * (int_part + frac_part / frac_scale);
	mov	dpl,r3
	mov	dph,r2
	lcall	___sint2fs
	mov	r0,_bp
	inc	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:102: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_set_connected'
;------------------------------------------------------------
;uc                        Allocated with name '_usb_set_connected_uc_65536_216'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:104: static void usb_set_connected(USBController* uc) {
;	-----------------------------------------
;	 function usb_set_connected
;	-----------------------------------------
_usb_set_connected:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_usb_set_connected_uc_65536_216
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:105: uc->is_connected = true;
	mov	dptr,#_usb_set_connected_uc_65536_216
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
	mov	a,#0x01
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:106: uc->pairing_state = PAIRING_DONE;
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x02
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:107: uc->last_heartbeat = millis();
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_millis
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:108: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_reply_ok_key_value'
;------------------------------------------------------------
;value                     Allocated with name '_usb_reply_ok_key_value_PARM_2'
;key                       Allocated with name '_usb_reply_ok_key_value_key_65536_218'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:110: static void usb_reply_ok_key_value(const char* key, const char* value) {
;	-----------------------------------------
;	 function usb_reply_ok_key_value
;	-----------------------------------------
_usb_reply_ok_key_value:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_usb_reply_ok_key_value_key_65536_218
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:111: serial_print_str("OK:");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_serial_print_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:112: serial_print_str(key);
	mov	dptr,#_usb_reply_ok_key_value_key_65536_218
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
	lcall	_serial_print_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:113: if (value) {
	mov	dptr,#_usb_reply_ok_key_value_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_usb_reply_ok_key_value_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00102$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:114: serial_print_str("=");
	mov	dptr,#___str_1
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	lcall	_serial_print_str
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:115: serial_print_str(value);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_serial_print_str
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:117: serial_println();
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:118: }
	ljmp	_serial_println
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_reply_ok_key_uint'
;------------------------------------------------------------
;value                     Allocated with name '_usb_reply_ok_key_uint_PARM_2'
;key                       Allocated with name '_usb_reply_ok_key_uint_key_65536_221'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:120: static void usb_reply_ok_key_uint(const char* key, uint32_t value) {
;	-----------------------------------------
;	 function usb_reply_ok_key_uint
;	-----------------------------------------
_usb_reply_ok_key_uint:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_usb_reply_ok_key_uint_key_65536_221
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:121: serial_print_str("OK:");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_serial_print_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:122: serial_print_str(key);
	mov	dptr,#_usb_reply_ok_key_uint_key_65536_221
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
	lcall	_serial_print_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:123: serial_print_str("=");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_serial_print_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:124: serial_println_uint(value);
	mov	dptr,#_usb_reply_ok_key_uint_PARM_2
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:125: }
	ljmp	_serial_println_uint
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_reply_ok_key_float1'
;------------------------------------------------------------
;value                     Allocated with name '_usb_reply_ok_key_float1_PARM_2'
;key                       Allocated with name '_usb_reply_ok_key_float1_key_65536_223'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:127: static void usb_reply_ok_key_float1(const char* key, float value) {
;	-----------------------------------------
;	 function usb_reply_ok_key_float1
;	-----------------------------------------
_usb_reply_ok_key_float1:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_usb_reply_ok_key_float1_key_65536_223
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:128: serial_print_str("OK:");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_serial_print_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:129: serial_print_str(key);
	mov	dptr,#_usb_reply_ok_key_float1_key_65536_223
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
	lcall	_serial_print_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:130: serial_print_str("=");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_serial_print_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:131: serial_println_float(value, 1);
	mov	dptr,#_usb_reply_ok_key_float1_PARM_2
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
	mov	dptr,#_serial_println_float_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:132: }
	ljmp	_serial_println_float
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_reply_ok_key_float2'
;------------------------------------------------------------
;value                     Allocated with name '_usb_reply_ok_key_float2_PARM_2'
;key                       Allocated with name '_usb_reply_ok_key_float2_key_65536_225'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:134: static void usb_reply_ok_key_float2(const char* key, float value) {
;	-----------------------------------------
;	 function usb_reply_ok_key_float2
;	-----------------------------------------
_usb_reply_ok_key_float2:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_usb_reply_ok_key_float2_key_65536_225
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:135: serial_print_str("OK:");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_serial_print_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:136: serial_print_str(key);
	mov	dptr,#_usb_reply_ok_key_float2_key_65536_225
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
	lcall	_serial_print_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:137: serial_print_str("=");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_serial_print_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:138: serial_println_float(value, 2);
	mov	dptr,#_usb_reply_ok_key_float2_PARM_2
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
	mov	dptr,#_serial_println_float_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:139: }
	ljmp	_serial_println_float
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_key_equals'
;------------------------------------------------------------
;key_len                   Allocated to stack - _bp -3
;literal                   Allocated to stack - _bp -6
;key                       Allocated to stack - _bp +1
;i                         Allocated to registers r4 
;sloc0                     Allocated to stack - _bp +5
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:141: static bool usb_key_equals(const char* key, uint8_t key_len, const char* literal) SDCC_REENTRANT {
;	-----------------------------------------
;	 function usb_key_equals
;	-----------------------------------------
_usb_key_equals:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:143: for (i = 0; i < key_len; i++) {
	mov	r4,#0x00
00106$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	clr	c
	mov	a,r4
	subb	a,@r0
	jnc	00104$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:144: if (literal[i] == '\0' || key[i] != literal[i]) {
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	jz	00101$
	mov	r0,_bp
	inc	r0
	mov	a,r4
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	cjne	a,ar6,00124$
	sjmp	00107$
00124$:
00101$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:145: return false;
	mov	dpl,#0x00
	sjmp	00108$
00107$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:143: for (i = 0; i < key_len; i++) {
	inc	r4
	sjmp	00106$
00104$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:148: return literal[key_len] == '\0';
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,_bp
	add	a,#0xfd
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	a,#0x01,00125$
00125$:
	mov  b0,c
	clr	a
	rlc	a
	mov	dpl,a
00108$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:149: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_print_key_segment'
;------------------------------------------------------------
;key_len                   Allocated with name '_usb_print_key_segment_PARM_2'
;key                       Allocated with name '_usb_print_key_segment_key_65536_232'
;i                         Allocated with name '_usb_print_key_segment_i_65536_233'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:151: static void usb_print_key_segment(const char* key, uint8_t key_len) {
;	-----------------------------------------
;	 function usb_print_key_segment
;	-----------------------------------------
_usb_print_key_segment:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_usb_print_key_segment_key_65536_232
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:153: for (i = 0; i < key_len; i++) {
	mov	dptr,#_usb_print_key_segment_key_65536_232
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_usb_print_key_segment_PARM_2
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
00103$:
	clr	c
	mov	a,r3
	subb	a,r4
	jnc	00105$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:154: serial_write(key[i]);
	mov	a,r3
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_serial_write
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:153: for (i = 0; i < key_len; i++) {
	inc	r3
	sjmp	00103$
00105$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:156: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_handle_get'
;------------------------------------------------------------
;key                       Allocated to stack - _bp -5
;uc                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:158: static bool usb_handle_get(USBController* uc, const char* key) SDCC_REENTRANT {
;	-----------------------------------------
;	 function usb_handle_get
;	-----------------------------------------
_usb_handle_get:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:159: if (usb_str_eq(key, "STATUS")) {
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_usb_str_eq
	mov	r4,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r4
	jz	00102$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:160: uc->status_requested = true;
	mov	a,#0x62
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:161: return true;
	mov	dpl,#0x01
	sjmp	00103$
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:163: return false;
	mov	dpl,#0x00
00103$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:164: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_handle_set'
;------------------------------------------------------------
;key                       Allocated to stack - _bp -5
;key_len                   Allocated to stack - _bp -6
;value                     Allocated to stack - _bp -9
;uc                        Allocated to stack - _bp +1
;v                         Allocated to stack - _bp +12
;rpm                       Allocated to stack - _bp +12
;duty                      Allocated to stack - _bp +12
;sloc0                     Allocated to stack - _bp +14
;sloc1                     Allocated to stack - _bp +4
;sloc2                     Allocated to stack - _bp +8
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:166: static bool usb_handle_set(USBController* uc, const char* key, uint8_t key_len, const char* value) SDCC_REENTRANT {
;	-----------------------------------------
;	 function usb_handle_set
;	-----------------------------------------
_usb_handle_set:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x0c
	mov	sp,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:167: if (usb_key_equals(key, key_len, "MODE")) {
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_usb_key_equals
	mov	r4,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r4
	jnz	00178$
	ljmp	00106$
00178$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:168: if (usb_str_eq(value, "AUTO")) {
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_usb_str_eq
	mov	r4,dpl
	dec	sp
	dec	sp
	dec	sp
	mov	a,r4
	jz	00102$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:169: uc->override_active = false;
	mov	r0,_bp
	inc	r0
	mov	a,#0x5d
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:170: uc->rpm_override_active = false;
	mov	r0,_bp
	inc	r0
	mov	a,#0x5e
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:171: usb_reply_ok_key_value("MODE", "AUTO");
	mov	dptr,#_usb_reply_ok_key_value_PARM_2
	mov	a,#___str_4
	movx	@dptr,a
	mov	a,#(___str_4 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_usb_reply_ok_key_value
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:172: return true;
	mov	dpl,#0x01
	ljmp	00128$
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:174: if (usb_str_eq(value, "MANUAL")) {
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_usb_str_eq
	mov	r4,dpl
	dec	sp
	dec	sp
	dec	sp
	mov	a,r4
	jz	00104$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:175: uc->override_active = true;
	mov	r0,_bp
	inc	r0
	mov	a,#0x5d
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x01
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:176: usb_reply_ok_key_value("MODE", "MANUAL");
	mov	dptr,#_usb_reply_ok_key_value_PARM_2
	mov	a,#___str_5
	movx	@dptr,a
	mov	a,#(___str_5 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_usb_reply_ok_key_value
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:177: return true;
	mov	dpl,#0x01
	ljmp	00128$
00104$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:179: return false;
	mov	dpl,#0x00
	ljmp	00128$
00106$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:182: if (usb_key_equals(key, key_len, "VOLTAGE")) {
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_usb_key_equals
	mov	r4,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r4
	jnz	00181$
	ljmp	00111$
00181$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:183: float v = usb_parse_float(value);
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_usb_parse_float
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:184: if (v < VOUT_MIN || v > VOUT_MAX) {
	clr	a
	push	acc
	push	acc
	mov	a,#0xa0
	push	acc
	mov	a,#0x40
	push	acc
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fslt
	mov	r4,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r4
	jnz	00107$
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x40
	mov	a,#0x41
	lcall	___fslt
	mov	r4,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r4
	jz	00108$
00107$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:185: serial_println_str("ERR:VOLTAGE_OUT_OF_RANGE");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_serial_println_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:186: return true;
	mov	dpl,#0x01
	ljmp	00128$
00108$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:188: uc->target_voltage_override = v;
	mov	r0,_bp
	inc	r0
	mov	a,#0x48
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:189: uc->override_active = true;
	mov	r0,_bp
	inc	r0
	mov	a,#0x5d
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x01
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:190: usb_reply_ok_key_float2("VOLTAGE", v);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	dptr,#_usb_reply_ok_key_float2_PARM_2
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_usb_reply_ok_key_float2
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:191: return true;
	mov	dpl,#0x01
	ljmp	00128$
00111$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:194: if (usb_key_equals(key, key_len, "RPM")) {
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_usb_key_equals
	mov	r4,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r4
	jnz	00184$
	ljmp	00116$
00184$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:195: uint32_t rpm = usb_parse_u32(value);
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_usb_parse_u32
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:196: if (rpm < RPM_TARGET_MIN || rpm > RPM_TARGET_MAX) {
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,#0x58
	inc	r0
	mov	a,@r0
	subb	a,#0x02
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	jc	00112$
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	clr	c
	mov	a,#0xb8
	subb	a,@r0
	mov	a,#0x0b
	inc	r0
	subb	a,@r0
	clr	a
	inc	r0
	subb	a,@r0
	clr	a
	inc	r0
	subb	a,@r0
	jnc	00113$
00112$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:197: serial_println_str("ERR:RPM_OUT_OF_RANGE");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_serial_println_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:198: return true;
	mov	dpl,#0x01
	ljmp	00128$
00113$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:200: uc->target_rpm_override = rpm;
	mov	r0,_bp
	inc	r0
	mov	a,#0x4c
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:201: uc->rpm_override_active = true;
	mov	r0,_bp
	inc	r0
	mov	a,#0x5e
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x01
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:202: usb_reply_ok_key_uint("RPM", rpm);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	dptr,#_usb_reply_ok_key_uint_PARM_2
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_usb_reply_ok_key_uint
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:203: return true;
	mov	dpl,#0x01
	ljmp	00128$
00116$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:206: if (usb_key_equals(key, key_len, "PWM")) {
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_usb_key_equals
	mov	r4,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r4
	jnz	00187$
	ljmp	00121$
00187$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:207: int duty = usb_parse_i32(value);
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_usb_parse_i32
	mov	r3,dpl
	mov	r4,dph
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:208: if (duty < 0 || duty > 255) {
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	inc	r0
	mov	a,@r0
	jb	acc.7,00117$
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	clr	c
	mov	a,#0xff
	subb	a,@r0
	mov	a,#(0x00 ^ 0x80)
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jnc	00118$
00117$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:209: serial_println_str("ERR:PWM_OUT_OF_RANGE");
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_serial_println_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:210: return true;
	mov	dpl,#0x01
	ljmp	00128$
00118$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:212: uc->override_pwm_duty = (uint8_t)duty;
	mov	r0,_bp
	inc	r0
	mov	a,#0x5c
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:213: uc->pwm_duty_overridden = true;
	mov	r0,_bp
	inc	r0
	mov	a,#0x60
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:214: uc->override_active = true;
	mov	r0,_bp
	inc	r0
	mov	a,#0x5d
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:215: serial_print_str("OK:PWM=");
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_serial_print_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:216: serial_println_int(duty);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_serial_println_int
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:217: return true;
	mov	dpl,#0x01
	ljmp	00128$
00121$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:220: if (usb_key_equals(key, key_len, "TEMP_MIN")) {
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_usb_key_equals
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jnz	00190$
	ljmp	00123$
00190$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:221: uc->override_temp_min = usb_parse_float(value);
	mov	r0,_bp
	inc	r0
	mov	a,#0x50
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar7
	push	ar6
	push	ar5
	lcall	_usb_parse_float
	xch	a,r0
	mov	a,_bp
	add	a,#0x04
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:222: uc->temp_params_overridden = true;
	mov	r0,_bp
	inc	r0
	mov	a,#0x5f
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:223: usb_reply_ok_key_float1("TEMP_MIN", uc->override_temp_min);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dptr,#_usb_reply_ok_key_float1_PARM_2
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_usb_reply_ok_key_float1
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:224: return true;
	mov	dpl,#0x01
	ljmp	00128$
00123$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:227: if (usb_key_equals(key, key_len, "TEMP_MAX")) {
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_usb_key_equals
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jnz	00191$
	ljmp	00125$
00191$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:228: uc->override_temp_max = usb_parse_float(value);
	mov	r0,_bp
	inc	r0
	mov	a,#0x54
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar7
	push	ar6
	push	ar5
	lcall	_usb_parse_float
	xch	a,r0
	mov	a,_bp
	add	a,#0x08
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:229: uc->temp_params_overridden = true;
	mov	r0,_bp
	inc	r0
	mov	a,#0x5f
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:230: usb_reply_ok_key_float1("TEMP_MAX", uc->override_temp_max);
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dptr,#_usb_reply_ok_key_float1_PARM_2
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_usb_reply_ok_key_float1
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:231: return true;
	mov	dpl,#0x01
	ljmp	00128$
00125$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:234: if (usb_key_equals(key, key_len, "TEMP_OVERHEAT")) {
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_usb_key_equals
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jnz	00192$
	ljmp	00127$
00192$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:235: uc->override_temp_overheat = usb_parse_float(value);
	mov	r0,_bp
	inc	r0
	mov	a,#0x58
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar7
	push	ar6
	push	ar5
	lcall	_usb_parse_float
	xch	a,r0
	mov	a,_bp
	add	a,#0x04
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:236: uc->temp_params_overridden = true;
	mov	r0,_bp
	inc	r0
	mov	a,#0x5f
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:237: usb_reply_ok_key_float1("TEMP_OVERHEAT", uc->override_temp_overheat);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dptr,#_usb_reply_ok_key_float1_PARM_2
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_usb_reply_ok_key_float1
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:238: return true;
	mov	dpl,#0x01
	sjmp	00128$
00127$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:241: return false;
	mov	dpl,#0x00
00128$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:242: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_handleCommand'
;------------------------------------------------------------
;sloc0                     Allocated with name '_usb_handleCommand_sloc0_1_0'
;cmd                       Allocated with name '_usb_handleCommand_PARM_2'
;uc                        Allocated with name '_usb_handleCommand_uc_65536_253'
;key                       Allocated with name '_usb_handleCommand_key_131072_259'
;body                      Allocated with name '_usb_handleCommand_body_131072_261'
;equal                     Allocated with name '_usb_handleCommand_equal_131072_261'
;key_len                   Allocated with name '_usb_handleCommand_key_len_131072_261'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:244: static void usb_handleCommand(USBController* uc, const char* cmd) {
;	-----------------------------------------
;	 function usb_handleCommand
;	-----------------------------------------
_usb_handleCommand:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_usb_handleCommand_uc_65536_253
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:245: if (usb_str_eq(cmd, "HELLO")) {
	mov	dptr,#_usb_handleCommand_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_usb_str_eq
	mov	r7,dpl
	dec	sp
	dec	sp
	dec	sp
	mov	a,r7
	jz	00102$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:246: usb_set_connected(uc);
	mov	dptr,#_usb_handleCommand_uc_65536_253
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
	lcall	_usb_set_connected
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:247: serial_println_str("DEVICE:CH552G_FAN_CTRL_V1.0");
	mov	dptr,#___str_17
	mov	b,#0x80
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:248: return;
	ljmp	_serial_println_str
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:251: if (usb_str_eq(cmd, "CONNECT")) {
	mov	dptr,#_usb_handleCommand_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_usb_str_eq
	mov	r7,dpl
	dec	sp
	dec	sp
	dec	sp
	mov	a,r7
	jz	00104$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:252: usb_set_connected(uc);
	mov	dptr,#_usb_handleCommand_uc_65536_253
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
	lcall	_usb_set_connected
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:253: serial_println_str("OK:CONNECTED");
	mov	dptr,#___str_19
	mov	b,#0x80
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:254: return;
	ljmp	_serial_println_str
00104$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:257: usb_set_connected(uc);
	mov	dptr,#_usb_handleCommand_uc_65536_253
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
	lcall	_usb_set_connected
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:259: if (usb_str_eq(cmd, "PING")) {
	mov	dptr,#_usb_handleCommand_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_usb_str_eq
	mov	r7,dpl
	dec	sp
	dec	sp
	dec	sp
	mov	a,r7
	jz	00106$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:260: serial_println_str("PONG");
	mov	dptr,#___str_21
	mov	b,#0x80
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:261: return;
	ljmp	_serial_println_str
00106$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:264: if (usb_str_eq(cmd, "RESET")) {
	mov	dptr,#_usb_handleCommand_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_usb_str_eq
	mov	r7,dpl
	dec	sp
	dec	sp
	dec	sp
	mov	a,r7
	jz	00108$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:265: uc->reset_requested = true;
	mov	dptr,#_usb_handleCommand_uc_65536_253
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x61
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:266: serial_println_str("OK:RESET");
	mov	dptr,#___str_23
	mov	b,#0x80
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:267: return;
	ljmp	_serial_println_str
00108$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:270: if (usb_starts_with(cmd, "GET:")) {
	mov	dptr,#_usb_handleCommand_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_usb_starts_with
	mov	r7,dpl
	dec	sp
	dec	sp
	dec	sp
	mov	a,r7
	jz	00112$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:271: const char* key = cmd + 4;
	mov	dptr,#_usb_handleCommand_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:272: if (!usb_handle_get(uc, key)) {
	mov	dptr,#_usb_handleCommand_uc_65536_253
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_usb_handle_get
	mov	r4,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r4
	jnz	00110$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:273: serial_print_str("ERR:UNKNOWN_GET:");
	mov	dptr,#___str_25
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	lcall	_serial_print_str
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:274: serial_println_str(key);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:276: return;
	ljmp	_serial_println_str
00110$:
	ret
00112$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:279: if (usb_starts_with(cmd, "SET:")) {
	mov	dptr,#_usb_handleCommand_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_usb_starts_with
	mov	r7,dpl
	dec	sp
	dec	sp
	dec	sp
	mov	a,r7
	jnz	00169$
	ljmp	00120$
00169$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:280: const char* body = cmd + 4;
	mov	dptr,#_usb_handleCommand_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:281: const char* equal = usb_find_char(body, '=');
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x3d
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_usb_find_char
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:284: if (!equal) {
	mov	a,r2
	orl	a,r3
	jnz	00114$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:285: serial_print_str("ERR:UNKNOWN_SET:");
	mov	dptr,#___str_27
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	lcall	_serial_print_str
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:286: serial_println_str(body);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:287: return;
	ljmp	_serial_println_str
00114$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:290: key_len = (uint8_t)(equal - body);
	mov	ar1,r2
	mov	ar0,r5
	mov	a,r1
	clr	c
	subb	a,r0
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:291: if (key_len == 0) {
	mov	r1,a
	jnz	00116$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:292: serial_println_str("ERR:BAD_SET_KEY");
	mov	dptr,#___str_28
	mov	b,#0x80
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:293: return;
	ljmp	_serial_println_str
00116$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:296: if (!usb_handle_set(uc, body, key_len, equal + 1)) {
	mov	a,#0x01
	add	a,r2
	mov	_usb_handleCommand_sloc0_1_0,a
	clr	a
	addc	a,r3
	mov	(_usb_handleCommand_sloc0_1_0 + 1),a
	mov	(_usb_handleCommand_sloc0_1_0 + 2),r4
	mov	dptr,#_usb_handleCommand_uc_65536_253
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	push	_usb_handleCommand_sloc0_1_0
	push	(_usb_handleCommand_sloc0_1_0 + 1)
	push	(_usb_handleCommand_sloc0_1_0 + 2)
	push	ar1
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	_usb_handle_set
	mov	r4,dpl
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r4
	jnz	00118$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:297: serial_print_str("ERR:UNKNOWN_SET:");
	mov	dptr,#___str_27
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	lcall	_serial_print_str
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:298: usb_print_key_segment(body, key_len);
	mov	dptr,#_usb_print_key_segment_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_usb_print_key_segment
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:299: serial_println();
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:301: return;
	ljmp	_serial_println
00118$:
	ret
00120$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:304: serial_print_str("ERR:UNKNOWN_CMD:");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_serial_print_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:305: serial_println_str(cmd);
	mov	dptr,#_usb_handleCommand_PARM_2
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:306: }
	ljmp	_serial_println_str
;------------------------------------------------------------
;Allocation info for local variables in function 'USBController_begin'
;------------------------------------------------------------
;uc                        Allocated with name '_USBController_begin_uc_65536_265'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:308: void USBController_begin(USBController* uc) {
;	-----------------------------------------
;	 function USBController_begin
;	-----------------------------------------
_USBController_begin:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_USBController_begin_uc_65536_265
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:309: serial_begin(USB_BAUD_RATE);
	mov	dptr,#0xc200
	mov	b,#0x01
	clr	a
	lcall	_serial_begin
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:311: uc->is_connected = false;
	mov	dptr,#_USBController_begin_uc_65536_265
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
	clr	a
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:312: uc->pairing_state = PAIRING_IDLE;
	inc	a
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:313: uc->last_heartbeat = 0;
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:314: uc->rx_len = 0;
	mov	a,#0x47
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:315: uc->rx_buffer[0] = '\0';
	mov	a,#0x06
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:317: uc->override_active = false;
	mov	a,#0x5d
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:318: uc->rpm_override_active = false;
	mov	a,#0x5e
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:319: uc->temp_params_overridden = false;
	mov	a,#0x5f
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:320: uc->pwm_duty_overridden = false;
	mov	a,#0x60
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:321: uc->reset_requested = false;
	mov	a,#0x61
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:322: uc->status_requested = false;
	mov	a,#0x62
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:324: uc->target_voltage_override = VOUT_DEFAULT;
	mov	a,#0x48
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	mov	a,#0x40
	lcall	__gptrput
	inc	dptr
	inc	a
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:325: uc->target_rpm_override = RPM_TARGET_MIN;
	mov	a,#0x4c
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:326: uc->override_temp_min = TEMP_MIN;
	mov	a,#0x50
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	mov	a,#0xf0
	lcall	__gptrput
	inc	dptr
	mov	a,#0x41
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:327: uc->override_temp_max = TEMP_MAX;
	mov	a,#0x54
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	mov	a,#0x34
	lcall	__gptrput
	inc	dptr
	mov	a,#0x42
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:328: uc->override_temp_overheat = TEMP_OVERHEAT;
	mov	a,#0x58
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	mov	a,#0x48
	lcall	__gptrput
	inc	dptr
	mov	a,#0x42
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:329: uc->override_pwm_duty = 0;
	mov	a,#0x5c
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:330: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'USBController_update'
;------------------------------------------------------------
;sloc0                     Allocated with name '_USBController_update_sloc0_1_0'
;sloc1                     Allocated with name '_USBController_update_sloc1_1_0'
;sloc2                     Allocated with name '_USBController_update_sloc2_1_0'
;sloc3                     Allocated with name '_USBController_update_sloc3_1_0'
;sloc4                     Allocated with name '_USBController_update_sloc4_1_0'
;uc                        Allocated with name '_USBController_update_uc_65536_267'
;c                         Allocated with name '_USBController_update_c_131072_269'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:332: void USBController_update(USBController* uc) {
;	-----------------------------------------
;	 function USBController_update
;	-----------------------------------------
_USBController_update:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_USBController_update_uc_65536_267
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:333: while (serial_available()) {
	mov	dptr,#_USBController_update_uc_65536_267
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x47
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	_USBController_update_sloc0_1_0,r5
	mov	(_USBController_update_sloc0_1_0 + 1),r6
	mov	(_USBController_update_sloc0_1_0 + 2),r7
	mov	_USBController_update_sloc1_1_0,r5
	mov	(_USBController_update_sloc1_1_0 + 1),r6
	mov	(_USBController_update_sloc1_1_0 + 2),r7
	mov	a,#0x06
	add	a,r5
	mov	_USBController_update_sloc2_1_0,a
	clr	a
	addc	a,r6
	mov	(_USBController_update_sloc2_1_0 + 1),a
	mov	(_USBController_update_sloc2_1_0 + 2),r7
00110$:
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_serial_available
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00146$
	ljmp	00112$
00146$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:334: char c = (char)serial_read();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_serial_read
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:336: if (c == '\n' || c == '\r') {
	cjne	r0,#0x0a,00147$
	sjmp	00106$
00147$:
	cjne	r0,#0x0d,00148$
	sjmp	00149$
00148$:
	ljmp	00107$
00149$:
00106$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:337: if (uc->rx_len > 0) {
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	jz	00110$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:338: uc->rx_buffer[uc->rx_len] = '\0';
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x06
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	a,r1
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:339: usb_handleCommand(uc, uc->rx_buffer);
	mov	dptr,#_usb_handleCommand_PARM_2
	mov	a,#0x06
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_usb_handleCommand
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:340: uc->rx_len = 0;
	mov	a,#0x47
	add	a,_USBController_update_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_USBController_update_sloc0_1_0 + 1)
	mov	r3,a
	mov	r4,(_USBController_update_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:341: uc->rx_buffer[0] = '\0';
	mov	a,#0x06
	add	a,_USBController_update_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_USBController_update_sloc0_1_0 + 1)
	mov	r3,a
	mov	r4,(_USBController_update_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00110$
00107$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:344: if (uc->rx_len < USB_CMD_MAX_LEN) {
	mov	a,#0x47
	add	a,_USBController_update_sloc1_1_0
	mov	_USBController_update_sloc3_1_0,a
	clr	a
	addc	a,(_USBController_update_sloc1_1_0 + 1)
	mov	(_USBController_update_sloc3_1_0 + 1),a
	mov	(_USBController_update_sloc3_1_0 + 2),(_USBController_update_sloc1_1_0 + 2)
	mov	dpl,_USBController_update_sloc3_1_0
	mov	dph,(_USBController_update_sloc3_1_0 + 1)
	mov	b,(_USBController_update_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x40,00151$
00151$:
	jnc	00104$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:345: uc->rx_buffer[uc->rx_len++] = c;
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,_USBController_update_sloc3_1_0
	mov	dph,(_USBController_update_sloc3_1_0 + 1)
	mov	b,(_USBController_update_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	inc	a
	mov	dpl,_USBController_update_sloc3_1_0
	mov	dph,(_USBController_update_sloc3_1_0 + 1)
	mov	b,(_USBController_update_sloc3_1_0 + 2)
	lcall	__gptrput
	mov	a,r1
	add	a,_USBController_update_sloc2_1_0
	mov	r1,a
	clr	a
	addc	a,(_USBController_update_sloc2_1_0 + 1)
	mov	r4,a
	mov	r3,(_USBController_update_sloc2_1_0 + 2)
	mov	dpl,r1
	mov	dph,r4
	mov	b,r3
	mov	a,r0
	lcall	__gptrput
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00110$
00104$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:347: uc->rx_len = 0;
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,_USBController_update_sloc3_1_0
	mov	dph,(_USBController_update_sloc3_1_0 + 1)
	mov	b,(_USBController_update_sloc3_1_0 + 2)
	clr	a
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:348: uc->rx_buffer[0] = '\0';
	mov	a,#0x06
	add	a,_USBController_update_sloc1_1_0
	mov	r0,a
	clr	a
	addc	a,(_USBController_update_sloc1_1_0 + 1)
	mov	r1,a
	mov	r4,(_USBController_update_sloc1_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	clr	a
	lcall	__gptrput
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00110$
00112$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:353: if (uc->is_connected && (millis() - uc->last_heartbeat > USB_HEARTBEAT_TIMEOUT)) {
	mov	dptr,#_USBController_update_uc_65536_267
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
	jnz	00153$
	ret
00153$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_millis
	mov	_USBController_update_sloc4_1_0,dpl
	mov	(_USBController_update_sloc4_1_0 + 1),dph
	mov	(_USBController_update_sloc4_1_0 + 2),b
	mov	(_USBController_update_sloc4_1_0 + 3),a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x02
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
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	mov	a,_USBController_update_sloc4_1_0
	clr	c
	subb	a,r0
	mov	r0,a
	mov	a,(_USBController_update_sloc4_1_0 + 1)
	subb	a,r3
	mov	r3,a
	mov	a,(_USBController_update_sloc4_1_0 + 2)
	subb	a,r4
	mov	r4,a
	mov	a,(_USBController_update_sloc4_1_0 + 3)
	subb	a,r2
	mov	r2,a
	clr	c
	mov	a,#0x88
	subb	a,r0
	mov	a,#0x13
	subb	a,r3
	clr	a
	subb	a,r4
	clr	a
	subb	a,r2
	jnc	00116$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:354: uc->is_connected = false;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:355: uc->pairing_state = PAIRING_IDLE;
	inc	a
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:356: uc->override_active = false;
	mov	a,#0x5d
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:357: uc->rpm_override_active = false;
	mov	a,#0x5e
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:359: }
	ljmp	__gptrput
00116$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBController_sendStatus'
;------------------------------------------------------------
;status                    Allocated with name '_USBController_sendStatus_PARM_2'
;uc                        Allocated with name '_USBController_sendStatus_uc_65536_276'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:361: void USBController_sendStatus(USBController* uc, const SystemStatus* status) {
;	-----------------------------------------
;	 function USBController_sendStatus
;	-----------------------------------------
_USBController_sendStatus:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:364: serial_print_str("{");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_serial_print_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:365: serial_print_str("\"temp\":");
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_serial_print_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:366: serial_print_float(status->temperature, 2);
	mov	dptr,#_USBController_sendStatus_PARM_2
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
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_serial_print_float_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_serial_print_float
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:367: serial_print_str(",\"volt\":");
	mov	dptr,#___str_32
	mov	b,#0x80
	lcall	_serial_print_str
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:368: serial_print_float(status->voltage, 2);
	mov	a,#0x04
	add	a,r5
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_serial_print_float_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_serial_print_float
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:369: serial_print_str(",\"target\":");
	mov	dptr,#___str_33
	mov	b,#0x80
	lcall	_serial_print_str
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:370: serial_print_float(status->target_voltage, 2);
	mov	a,#0x08
	add	a,r5
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_serial_print_float_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_serial_print_float
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:371: serial_print_str(",\"rpm\":");
	mov	dptr,#___str_34
	mov	b,#0x80
	lcall	_serial_print_str
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:372: serial_print_uint(status->rpm);
	mov	a,#0x0c
	add	a,r5
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_serial_print_uint
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:373: serial_print_str(",\"target_rpm\":");
	mov	dptr,#___str_35
	mov	b,#0x80
	lcall	_serial_print_str
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:374: serial_print_uint(status->target_rpm);
	mov	a,#0x10
	add	a,r5
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_serial_print_uint
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:375: serial_print_str(",\"pwm\":");
	mov	dptr,#___str_36
	mov	b,#0x80
	lcall	_serial_print_str
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:376: serial_print_uint(status->pwm_duty);
	mov	a,#0x14
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
	mov	r1,a
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_serial_print_uint
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:377: serial_print_str(",\"error\":\"0x");
	mov	dptr,#___str_37
	mov	b,#0x80
	lcall	_serial_print_str
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:378: serial_print_uint_base(status->error_flags, HEX);
	mov	a,#0x15
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
	mov	r1,a
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	mov	dptr,#_serial_print_uint_base_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_serial_print_uint_base
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:379: serial_print_str("\",\"mode\":\"");
	mov	dptr,#___str_38
	mov	b,#0x80
	lcall	_serial_print_str
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:380: serial_print_str(status->auto_mode ? "AUTO" : "MANUAL");
	mov	a,#0x16
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jz	00103$
	mov	r6,#___str_4
	mov	r7,#(___str_4 >> 8)
	sjmp	00104$
00103$:
	mov	r6,#___str_5
	mov	r7,#(___str_5 >> 8)
00104$:
	mov	r5,#0x80
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_serial_print_str
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:381: serial_println_str("\"}");
	mov	dptr,#___str_39
	mov	b,#0x80
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:382: }
	ljmp	_serial_println_str
;------------------------------------------------------------
;Allocation info for local variables in function 'USBController_isConnected'
;------------------------------------------------------------
;uc                        Allocated with name '_USBController_isConnected_uc_65536_278'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:384: bool USBController_isConnected(const USBController* uc) {
;	-----------------------------------------
;	 function USBController_isConnected
;	-----------------------------------------
_USBController_isConnected:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_USBController_isConnected_uc_65536_278
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:385: return uc->is_connected;
	mov	dptr,#_USBController_isConnected_uc_65536_278
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:386: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBController_getTargetVoltage'
;------------------------------------------------------------
;uc                        Allocated with name '_USBController_getTargetVoltage_uc_65536_280'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:388: float USBController_getTargetVoltage(const USBController* uc) {
;	-----------------------------------------
;	 function USBController_getTargetVoltage
;	-----------------------------------------
_USBController_getTargetVoltage:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_USBController_getTargetVoltage_uc_65536_280
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:389: return uc->target_voltage_override;
	mov	dptr,#_USBController_getTargetVoltage_uc_65536_280
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x48
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:390: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBController_isOverrideActive'
;------------------------------------------------------------
;uc                        Allocated with name '_USBController_isOverrideActive_uc_65536_282'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:392: bool USBController_isOverrideActive(const USBController* uc) {
;	-----------------------------------------
;	 function USBController_isOverrideActive
;	-----------------------------------------
_USBController_isOverrideActive:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_USBController_isOverrideActive_uc_65536_282
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:393: return uc->override_active;
	mov	dptr,#_USBController_isOverrideActive_uc_65536_282
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x5d
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:394: }
	mov	dpl,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "OK:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "STATUS"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "MODE"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "AUTO"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "MANUAL"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "VOLTAGE"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "ERR:VOLTAGE_OUT_OF_RANGE"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "RPM"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "ERR:RPM_OUT_OF_RANGE"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "PWM"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "ERR:PWM_OUT_OF_RANGE"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "OK:PWM="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "TEMP_MIN"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "TEMP_MAX"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "TEMP_OVERHEAT"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "HELLO"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "DEVICE:CH552G_FAN_CTRL_V1.0"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "CONNECT"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "OK:CONNECTED"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "PING"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "PONG"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "RESET"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "OK:RESET"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "GET:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "ERR:UNKNOWN_GET:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii "SET:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii "ERR:UNKNOWN_SET:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.ascii "ERR:BAD_SET_KEY"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.ascii "ERR:UNKNOWN_CMD:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.ascii "{"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.db 0x22
	.ascii "temp"
	.db 0x22
	.ascii ":"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.ascii ","
	.db 0x22
	.ascii "volt"
	.db 0x22
	.ascii ":"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.ascii ","
	.db 0x22
	.ascii "target"
	.db 0x22
	.ascii ":"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.ascii ","
	.db 0x22
	.ascii "rpm"
	.db 0x22
	.ascii ":"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.ascii ","
	.db 0x22
	.ascii "target_rpm"
	.db 0x22
	.ascii ":"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.ascii ","
	.db 0x22
	.ascii "pwm"
	.db 0x22
	.ascii ":"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.ascii ","
	.db 0x22
	.ascii "error"
	.db 0x22
	.ascii ":"
	.db 0x22
	.ascii "0x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.db 0x22
	.ascii ","
	.db 0x22
	.ascii "mode"
	.db 0x22
	.ascii ":"
	.db 0x22
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
	.db 0x22
	.ascii "}"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
