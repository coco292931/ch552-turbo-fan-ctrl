;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13407 (MINGW32)
;--------------------------------------------------------
	.module serial_compat
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _USBSerial_read
	.globl _USBSerial_available
	.globl _USBSerial_write
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
	.globl _serial_println_float_PARM_2
	.globl _serial_print_float_PARM_2
	.globl _serial_print_uint_base_PARM_2
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
	.globl _serial_begin
	.globl _serial_available
	.globl _serial_read
	.globl _serial_write
	.globl _serial_print_str
	.globl _serial_print_int
	.globl _serial_print_uint
	.globl _serial_print_uint_base
	.globl _serial_print_float
	.globl _serial_println
	.globl _serial_println_str
	.globl _serial_println_int
	.globl _serial_println_uint
	.globl _serial_println_float
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
_serial_print_float_sloc0_1_0:
	.ds 2
_serial_print_float_sloc1_1_0:
	.ds 4
_serial_print_float_sloc2_1_0:
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
_serial_write_c_65536_189:
	.ds 1
_serial_print_str_text_65536_198:
	.ds 3
_serial_print_int_value_65536_201:
	.ds 2
_serial_print_uint_value_65536_205:
	.ds 4
_serial_print_uint_base_PARM_2:
	.ds 2
_serial_print_uint_base_value_65536_207:
	.ds 4
_serial_print_float_PARM_2:
	.ds 2
_serial_print_float_value_65536_209:
	.ds 4
_serial_print_float_scale_65536_210:
	.ds 4
_serial_print_float_frac_part_65536_210:
	.ds 4
_serial_println_str_text_65536_220:
	.ds 3
_serial_println_int_value_65536_222:
	.ds 2
_serial_println_uint_value_65536_224:
	.ds 4
_serial_println_float_PARM_2:
	.ds 2
_serial_println_float_value_65536_226:
	.ds 4
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
;Allocation info for local variables in function 'serial_begin'
;------------------------------------------------------------
;baud                      Allocated with name '_serial_begin_baud_65536_183'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:9: void serial_begin(unsigned long baud) {
;	-----------------------------------------
;	 function serial_begin
;	-----------------------------------------
_serial_begin:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:10: (void)baud;
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:11: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'serial_available'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:13: int serial_available(void) {
;	-----------------------------------------
;	 function serial_available
;	-----------------------------------------
_serial_available:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:14: return (int)USBSerial_available();
	lcall	_USBSerial_available
	mov	r6,#0x00
	mov	dph,r6
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:15: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'serial_read'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:17: int serial_read(void) {
;	-----------------------------------------
;	 function serial_read
;	-----------------------------------------
_serial_read:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:18: return (int)USBSerial_read();
	lcall	_USBSerial_read
	mov	r6,#0x00
	mov	dph,r6
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:19: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'serial_write'
;------------------------------------------------------------
;c                         Allocated with name '_serial_write_c_65536_189'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:21: size_t serial_write(char c) {
;	-----------------------------------------
;	 function serial_write
;	-----------------------------------------
_serial_write:
	mov	a,dpl
	mov	dptr,#_serial_write_c_65536_189
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:22: return (size_t)USBSerial_write(c);
	movx	a,@dptr
	mov	dpl,a
	lcall	_USBSerial_write
	mov	r6,#0x00
	mov	dph,r6
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:23: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeUnsigned'
;------------------------------------------------------------
;base                      Allocated to stack - _bp -4
;value                     Allocated to stack - _bp +1
;digits                    Allocated to stack - _bp +13
;divisor                   Allocated to stack - _bp +9
;digit                     Allocated to registers r4 r5 r6 r7 
;started                   Allocated to registers b0 
;sloc0                     Allocated to stack - _bp +5
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:25: static void writeUnsigned(unsigned long value, int base) SDCC_REENTRANT {
;	-----------------------------------------
;	 function writeUnsigned
;	-----------------------------------------
_writeUnsigned:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	push	acc
	mov	a,sp
	add	a,#0x19
	mov	sp,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:26: const char digits[] = "0123456789ABCDEF";
	mov	a,_bp
	add	a,#0x0d
	mov	r1,a
	mov	@r1,#0x30
	mov	a,r1
	inc	a
	mov	r0,a
	mov	@r0,#0x31
	mov	a,#0x02
	add	a,r1
	mov	r0,a
	mov	@r0,#0x32
	mov	a,#0x03
	add	a,r1
	mov	r0,a
	mov	@r0,#0x33
	mov	a,#0x04
	add	a,r1
	mov	r0,a
	mov	@r0,#0x34
	mov	a,#0x05
	add	a,r1
	mov	r0,a
	mov	@r0,#0x35
	mov	a,#0x06
	add	a,r1
	mov	r0,a
	mov	@r0,#0x36
	mov	a,#0x07
	add	a,r1
	mov	r0,a
	mov	@r0,#0x37
	mov	a,#0x08
	add	a,r1
	mov	r0,a
	mov	@r0,#0x38
	mov	a,#0x09
	add	a,r1
	mov	r0,a
	mov	@r0,#0x39
	mov	a,#0x0a
	add	a,r1
	mov	r0,a
	mov	@r0,#0x41
	mov	a,#0x0b
	add	a,r1
	mov	r0,a
	mov	@r0,#0x42
	mov	a,#0x0c
	add	a,r1
	mov	r0,a
	mov	@r0,#0x43
	mov	a,#0x0d
	add	a,r1
	mov	r0,a
	mov	@r0,#0x44
	mov	a,#0x0e
	add	a,r1
	mov	r0,a
	mov	@r0,#0x45
	mov	a,#0x0f
	add	a,r1
	mov	r0,a
	mov	@r0,#0x46
	mov	a,#0x10
	add	a,r1
	mov	r0,a
	mov	@r0,#0x00
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:27: unsigned long divisor = 1;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,#0x01
	clr	a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:29: bool started = false;
;	assignBit
	clr	b0
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:31: if (base < 2 || base > 16) {
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,#0x02
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jc	00101$
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,#0x10
	subb	a,@r0
	mov	a,#(0x00 ^ 0x80)
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
00101$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:32: base = 10;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	@r0,#0x0a
	inc	r0
	mov	@r0,#0x00
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:35: if (value == 0) {
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00107$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:36: USBSerial_write('0');
	mov	dpl,#0x30
	lcall	_USBSerial_write
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:37: return;
	ljmp	00117$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:40: while ((divisor <= (0xFFFFFFFFUL / (unsigned long)base)) &&
00107$:
	push	ar1
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	push	ar1
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,@r0
	rlc	a
	subb	a,acc
	inc	r1
	mov	@r1,a
	inc	r1
	mov	@r1,a
	push	bits
	mov	a,_bp
	add	a,#0x05
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
	mov	dptr,#0xffff
	mov	a,#0xff
	mov	b,a
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	pop	ar1
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	clr	c
	mov	a,r4
	subb	a,@r0
	mov	a,r5
	inc	r0
	subb	a,@r0
	mov	a,r6
	inc	r0
	subb	a,@r0
	mov	a,r7
	inc	r0
	subb	a,@r0
	pop	ar1
	jnc	00158$
	ljmp	00114$
00158$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:41: ((value / divisor) >= (unsigned long)base)) {
	push	ar1
	push	bits
	mov	a,_bp
	add	a,#0x09
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
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	pop	ar1
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	clr	c
	mov	a,r4
	subb	a,@r0
	mov	a,r5
	inc	r0
	subb	a,@r0
	mov	a,r6
	inc	r0
	subb	a,@r0
	mov	a,r7
	inc	r0
	subb	a,@r0
	jc	00114$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:42: divisor *= (unsigned long)base;
	push	ar1
	push	bits
	mov	a,_bp
	add	a,#0x05
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
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	pop	ar1
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	ljmp	00107$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:45: while (divisor > 0) {
00114$:
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00160$
	ljmp	00117$
00160$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:46: digit = value / divisor;
	push	ar1
	push	bits
	mov	a,_bp
	add	a,#0x09
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
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	pop	ar1
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:47: value %= divisor;
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar1
	push	bits
	mov	a,_bp
	add	a,#0x09
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
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__modulong
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
	pop	bits
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:49: if (digit != 0 || started || divisor == 1) {
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00110$
	jb	b0,00110$
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	cjne	@r0,#0x01,00111$
	inc	r0
	cjne	@r0,#0x00,00111$
	inc	r0
	cjne	@r0,#0x00,00111$
	inc	r0
	cjne	@r0,#0x00,00111$
00110$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:50: USBSerial_write(digits[digit]);
	mov	a,r4
	add	a,r1
	mov	r0,a
	mov	ar7,@r0
	mov	dpl,r7
	push	ar1
	lcall	_USBSerial_write
	pop	ar1
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:51: started = true;
;	assignBit
	setb	b0
00111$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:54: divisor /= (unsigned long)base;
	push	ar1
	push	bits
	mov	a,_bp
	add	a,#0x05
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
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	pop	ar1
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	ljmp	00114$
00117$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:56: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'serial_print_str'
;------------------------------------------------------------
;text                      Allocated with name '_serial_print_str_text_65536_198'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:58: void serial_print_str(const char* text) {
;	-----------------------------------------
;	 function serial_print_str
;	-----------------------------------------
_serial_print_str:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_serial_print_str_text_65536_198
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:59: if (!text) return;
	mov	dptr,#_serial_print_str_text_65536_198
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_serial_print_str_text_65536_198
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00110$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:60: while (*text) {
	ret
00110$:
00103$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00111$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:61: USBSerial_write(*text++);
	inc	r5
	cjne	r5,#0x00,00123$
	inc	r6
00123$:
	mov	dptr,#_serial_print_str_text_65536_198
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_USBSerial_write
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00103$
00111$:
	mov	dptr,#_serial_print_str_text_65536_198
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:63: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'serial_print_int'
;------------------------------------------------------------
;value                     Allocated with name '_serial_print_int_value_65536_201'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:65: void serial_print_int(int value) {
;	-----------------------------------------
;	 function serial_print_int
;	-----------------------------------------
_serial_print_int:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_serial_print_int_value_65536_201
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:66: if (value < 0) {
	mov	dptr,#_serial_print_int_value_65536_201
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	jnb	acc.7,00102$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:67: USBSerial_write('-');
	mov	dpl,#0x2d
	push	ar7
	push	ar6
	lcall	_USBSerial_write
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:68: writeUnsigned((unsigned long)(-value), 10);
	clr	c
	clr	a
	subb	a,r6
	mov	r4,a
	clr	a
	subb	a,r7
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	r2,a
	mov	a,#0x0a
	push	acc
	clr	a
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	mov	a,r2
	lcall	_writeUnsigned
	dec	sp
	dec	sp
	ret
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:70: writeUnsigned((unsigned long)value, 10);
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	r4,a
	mov	a,#0x0a
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r4
	lcall	_writeUnsigned
	dec	sp
	dec	sp
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:72: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'serial_print_uint'
;------------------------------------------------------------
;value                     Allocated with name '_serial_print_uint_value_65536_205'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:74: void serial_print_uint(unsigned long value) {
;	-----------------------------------------
;	 function serial_print_uint
;	-----------------------------------------
_serial_print_uint:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_serial_print_uint_value_65536_205
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:75: writeUnsigned(value, 10);
	mov	dptr,#_serial_print_uint_value_65536_205
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
	mov	a,#0x0a
	push	acc
	clr	a
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_writeUnsigned
	dec	sp
	dec	sp
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:76: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'serial_print_uint_base'
;------------------------------------------------------------
;base                      Allocated with name '_serial_print_uint_base_PARM_2'
;value                     Allocated with name '_serial_print_uint_base_value_65536_207'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:78: void serial_print_uint_base(unsigned long value, int base) {
;	-----------------------------------------
;	 function serial_print_uint_base
;	-----------------------------------------
_serial_print_uint_base:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_serial_print_uint_base_value_65536_207
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:79: writeUnsigned(value, base);
	mov	dptr,#_serial_print_uint_base_value_65536_207
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
	mov	dptr,#_serial_print_uint_base_PARM_2
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_writeUnsigned
	dec	sp
	dec	sp
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:80: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'serial_print_float'
;------------------------------------------------------------
;sloc0                     Allocated with name '_serial_print_float_sloc0_1_0'
;sloc1                     Allocated with name '_serial_print_float_sloc1_1_0'
;sloc2                     Allocated with name '_serial_print_float_sloc2_1_0'
;digits                    Allocated with name '_serial_print_float_PARM_2'
;value                     Allocated with name '_serial_print_float_value_65536_209'
;scale                     Allocated with name '_serial_print_float_scale_65536_210'
;scaled                    Allocated with name '_serial_print_float_scaled_65536_210'
;int_part                  Allocated with name '_serial_print_float_int_part_65536_210'
;frac_part                 Allocated with name '_serial_print_float_frac_part_65536_210'
;i                         Allocated with name '_serial_print_float_i_65536_210'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:82: void serial_print_float(float value, int digits) {
;	-----------------------------------------
;	 function serial_print_float
;	-----------------------------------------
_serial_print_float:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_serial_print_float_value_65536_209
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:83: unsigned long scale = 1;
	mov	dptr,#_serial_print_float_scale_65536_210
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:89: if (value < 0.0f) {
	mov	dptr,#_serial_print_float_value_65536_209
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
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	jz	00102$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:90: USBSerial_write('-');
	mov	dpl,#0x2d
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_USBSerial_write
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:91: value = -value;
	mov	dptr,#_serial_print_float_value_65536_209
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	cpl	acc.7
	inc	dptr
	movx	@dptr,a
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:94: if (digits < 0) {
	mov	dptr,#_serial_print_float_PARM_2
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	jnb	acc.7,00104$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:95: digits = 0;
	mov	dptr,#_serial_print_float_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00104$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:97: if (digits > 3) {
	mov	dptr,#_serial_print_float_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0x03
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00122$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:98: digits = 3;
	mov	dptr,#_serial_print_float_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:101: for (i = 0; i < digits; i++) {
00122$:
	mov	dptr,#_serial_print_float_PARM_2
	movx	a,@dptr
	mov	_serial_print_float_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_serial_print_float_sloc0_1_0 + 1),a
	mov	r4,#0x00
	mov	r5,#0x00
00114$:
	clr	c
	mov	a,r4
	subb	a,_serial_print_float_sloc0_1_0
	mov	a,r5
	xrl	a,#0x80
	mov	b,(_serial_print_float_sloc0_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00107$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:102: scale *= 10UL;
	push	ar5
	push	ar4
	mov	dptr,#_serial_print_float_scale_65536_210
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
	mov	dptr,#(0x0a&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	mov	dptr,#_serial_print_float_scale_65536_210
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:101: for (i = 0; i < digits; i++) {
	inc	r4
	cjne	r4,#0x00,00114$
	inc	r5
	sjmp	00114$
00107$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:105: scaled = (unsigned long)(value * (float)scale + 0.5f);
	mov	dptr,#_serial_print_float_scale_65536_210
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	___ulong2fs
	mov	_serial_print_float_sloc1_1_0,dpl
	mov	(_serial_print_float_sloc1_1_0 + 1),dph
	mov	(_serial_print_float_sloc1_1_0 + 2),b
	mov	(_serial_print_float_sloc1_1_0 + 3),a
	mov	dptr,#_serial_print_float_value_65536_209
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	_serial_print_float_sloc1_1_0
	push	(_serial_print_float_sloc1_1_0 + 1)
	push	(_serial_print_float_sloc1_1_0 + 2)
	push	(_serial_print_float_sloc1_1_0 + 3)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r6
	mov	a,r7
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x3f
	push	acc
	mov	dpl,r0
	mov	dph,r1
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r0,dpl
	mov	r1,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r6
	mov	a,r7
	lcall	___fs2ulong
	mov	_serial_print_float_sloc1_1_0,dpl
	mov	(_serial_print_float_sloc1_1_0 + 1),dph
	mov	(_serial_print_float_sloc1_1_0 + 2),b
	mov	(_serial_print_float_sloc1_1_0 + 3),a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:106: int_part = scaled / scale;
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar2
	push	ar3
	push	ar4
	push	ar5
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:107: frac_part = scaled % scale;
	mov	dpl,_serial_print_float_sloc1_1_0
	mov	dph,(_serial_print_float_sloc1_1_0 + 1)
	mov	b,(_serial_print_float_sloc1_1_0 + 2)
	mov	a,(_serial_print_float_sloc1_1_0 + 3)
	lcall	__divulong
	mov	_serial_print_float_sloc2_1_0,dpl
	mov	(_serial_print_float_sloc2_1_0 + 1),dph
	mov	(_serial_print_float_sloc2_1_0 + 2),b
	mov	(_serial_print_float_sloc2_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,_serial_print_float_sloc1_1_0
	mov	dph,(_serial_print_float_sloc1_1_0 + 1)
	mov	b,(_serial_print_float_sloc1_1_0 + 2)
	mov	a,(_serial_print_float_sloc1_1_0 + 3)
	lcall	__modulong
	mov	r0,dpl
	mov	r1,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_serial_print_float_frac_part_65536_210
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:109: serial_print_uint(int_part);
	mov	dpl,_serial_print_float_sloc2_1_0
	mov	dph,(_serial_print_float_sloc2_1_0 + 1)
	mov	b,(_serial_print_float_sloc2_1_0 + 2)
	mov	a,(_serial_print_float_sloc2_1_0 + 3)
	lcall	_serial_print_uint
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:111: if (digits > 0) {
	clr	c
	clr	a
	subb	a,_serial_print_float_sloc0_1_0
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_serial_print_float_sloc0_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00156$
	ret
00156$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:112: USBSerial_write('.');
	mov	dpl,#0x2e
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_USBSerial_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:114: scale /= 10UL;
	mov	a,#0x0a
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_serial_print_float_scale_65536_210
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:115: while (scale > 0) {
	mov	dptr,#_serial_print_float_frac_part_65536_210
	movx	a,@dptr
	mov	_serial_print_float_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_serial_print_float_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_serial_print_float_sloc2_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_serial_print_float_sloc2_1_0 + 3),a
00108$:
	mov	dptr,#_serial_print_float_scale_65536_210
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
	mov	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r3
	jnz	00157$
	ret
00157$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:116: USBSerial_write((char)('0' + (frac_part / scale) % 10UL));
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,_serial_print_float_sloc2_1_0
	mov	dph,(_serial_print_float_sloc2_1_0 + 1)
	mov	b,(_serial_print_float_sloc2_1_0 + 2)
	mov	a,(_serial_print_float_sloc2_1_0 + 3)
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x0a
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__modulong
	mov	r4,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_USBSerial_write
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:117: scale /= 10UL;
	mov	a,#0x0a
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_serial_print_float_scale_65536_210
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:120: }
	ljmp	00108$
;------------------------------------------------------------
;Allocation info for local variables in function 'serial_println'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:122: void serial_println(void) {
;	-----------------------------------------
;	 function serial_println
;	-----------------------------------------
_serial_println:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:123: USBSerial_write('\r');
	mov	dpl,#0x0d
	lcall	_USBSerial_write
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:124: USBSerial_write('\n');
	mov	dpl,#0x0a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:125: }
	ljmp	_USBSerial_write
;------------------------------------------------------------
;Allocation info for local variables in function 'serial_println_str'
;------------------------------------------------------------
;text                      Allocated with name '_serial_println_str_text_65536_220'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:127: void serial_println_str(const char* text) {
;	-----------------------------------------
;	 function serial_println_str
;	-----------------------------------------
_serial_println_str:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_serial_println_str_text_65536_220
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:128: serial_print_str(text);
	mov	dptr,#_serial_println_str_text_65536_220
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:129: serial_println();
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:130: }
	ljmp	_serial_println
;------------------------------------------------------------
;Allocation info for local variables in function 'serial_println_int'
;------------------------------------------------------------
;value                     Allocated with name '_serial_println_int_value_65536_222'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:132: void serial_println_int(int value) {
;	-----------------------------------------
;	 function serial_println_int
;	-----------------------------------------
_serial_println_int:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_serial_println_int_value_65536_222
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:133: serial_print_int(value);
	mov	dptr,#_serial_println_int_value_65536_222
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_serial_print_int
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:134: serial_println();
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:135: }
	ljmp	_serial_println
;------------------------------------------------------------
;Allocation info for local variables in function 'serial_println_uint'
;------------------------------------------------------------
;value                     Allocated with name '_serial_println_uint_value_65536_224'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:137: void serial_println_uint(unsigned long value) {
;	-----------------------------------------
;	 function serial_println_uint
;	-----------------------------------------
_serial_println_uint:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_serial_println_uint_value_65536_224
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:138: serial_print_uint(value);
	mov	dptr,#_serial_println_uint_value_65536_224
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
	lcall	_serial_print_uint
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:139: serial_println();
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:140: }
	ljmp	_serial_println
;------------------------------------------------------------
;Allocation info for local variables in function 'serial_println_float'
;------------------------------------------------------------
;digits                    Allocated with name '_serial_println_float_PARM_2'
;value                     Allocated with name '_serial_println_float_value_65536_226'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:142: void serial_println_float(float value, int digits) {
;	-----------------------------------------
;	 function serial_println_float
;	-----------------------------------------
_serial_println_float:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_serial_println_float_value_65536_226
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:143: serial_print_float(value, digits);
	mov	dptr,#_serial_println_float_value_65536_226
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
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_serial_print_float_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_serial_print_float
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:144: serial_println();
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:145: }
	ljmp	_serial_println
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
