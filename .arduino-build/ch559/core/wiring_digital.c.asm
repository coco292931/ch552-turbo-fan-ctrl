;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13407 (MINGW32)
;--------------------------------------------------------
	.module wiring_digital
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _digital_pin_to_channel_PGM
	.globl _digital_pin_to_bit_mask_PGM
	.globl _digital_pin_to_port_PGM
	.globl _digital_pin_to_pwm_PGM
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
	.globl _digitalWrite_PARM_2
	.globl _pinMode_PARM_2
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
	.globl _pinMode
	.globl _digitalRead
	.globl _digitalWrite
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
_pinMode_PARM_2:
	.ds 1
_digitalWrite_PARM_2:
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
;Allocation info for local variables in function 'pinMode'
;------------------------------------------------------------
;mode                      Allocated with name '_pinMode_PARM_2'
;pin                       Allocated to registers r7 
;bit                       Allocated to registers r6 
;port                      Allocated to registers r7 
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:14: void pinMode(__data uint8_t pin,
;	-----------------------------------------
;	 function pinMode
;	-----------------------------------------
_pinMode:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:18: __data uint8_t bit = digitalPinToBitMask(pin);
	mov	a,dpl
	mov	r7,a
	mov	dptr,#_digital_pin_to_bit_mask_PGM
	movc	a,@a+dptr
	mov	r6,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:19: __data uint8_t port = digitalPinToPort(pin);
	mov	a,r7
	mov	dptr,#_digital_pin_to_port_PGM
	movc	a,@a+dptr
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:21: if (port == NOT_A_PIN)
	mov	r7,a
	jnz	00102$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:22: return;
	ret
00102$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:24: if (mode == INPUT) {
	mov	dptr,#_pinMode_PARM_2
	movx	a,@dptr
	mov	r5,a
	jnz	00152$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:47: if (port == P0PORT) {
	cjne	r7,#0x01,00115$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:48: PORT_CFG &= ~bP0_OC;
	anl	_PORT_CFG,#0xfe
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:49: P0_PU &= ~bit;
	mov	a,r6
	cpl	a
	mov	r4,a
	anl	_P0_PU,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:50: P0_DIR &= ~bit;
	mov	a,r4
	anl	_P0_DIR,a
	ret
00115$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:51: } else if (port == P1PORT) {
	cjne	r7,#0x02,00112$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:52: P1_IE |= bit;
	mov	a,r6
	orl	_P1_IE,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:53: PORT_CFG &= ~bP1_OC;
	anl	_PORT_CFG,#0xfd
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:54: P1_PU &= ~bit;
	mov	a,r6
	cpl	a
	mov	r4,a
	anl	_P1_PU,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:55: P1_DIR &= ~bit;
	mov	a,r4
	anl	_P1_DIR,a
	ret
00112$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:56: } else if (port == P2PORT) {
	cjne	r7,#0x03,00109$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:57: PORT_CFG &= ~bP2_OC;
	anl	_PORT_CFG,#0xfb
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:58: P2_PU &= ~bit;
	mov	a,r6
	cpl	a
	mov	r4,a
	anl	_P2_PU,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:59: P2_DIR &= ~bit;
	mov	a,r4
	anl	_P2_DIR,a
	ret
00109$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:60: } else if (port == P3PORT) {
	cjne	r7,#0x04,00106$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:61: PORT_CFG &= ~bP3_OC;
	anl	_PORT_CFG,#0xf7
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:62: P3_PU &= ~bit;
	mov	a,r6
	cpl	a
	mov	r4,a
	anl	_P3_PU,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:63: P3_DIR &= ~bit;
	mov	a,r4
	anl	_P3_DIR,a
	ret
00106$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:64: } else if (port == P4PORT) { // P4 can not do OC
	cjne	r7,#0x05,00242$
	sjmp	00243$
00242$:
	ret
00243$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:65: P4_PU &= ~bit;
	mov	a,r6
	cpl	a
	mov	r4,a
	anl	_P4_PU,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:66: P4_DIR &= ~bit;
	mov	a,r4
	anl	_P4_DIR,a
	ret
00152$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:69: } else if (mode == INPUT_PULLUP) {
	cjne	r5,#0x02,00149$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:92: if (port == P0PORT) {
	cjne	r7,#0x01,00129$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:93: PORT_CFG &= ~bP0_OC;
	anl	_PORT_CFG,#0xfe
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:94: P0_PU |= bit;
	mov	a,r6
	orl	_P0_PU,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:95: P0_DIR &= ~bit;
	mov	a,r6
	cpl	a
	anl	_P0_DIR,a
	ret
00129$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:96: } else if (port == P1PORT) {
	cjne	r7,#0x02,00126$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:97: P1_IE |= bit;
	mov	a,r6
	orl	_P1_IE,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:98: PORT_CFG &= ~bP1_OC;
	anl	_PORT_CFG,#0xfd
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:99: P1_PU |= bit;
	mov	a,r6
	orl	_P1_PU,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:100: P1_DIR &= ~bit;
	mov	a,r6
	cpl	a
	anl	_P1_DIR,a
	ret
00126$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:101: } else if (port == P2PORT) {
	cjne	r7,#0x03,00123$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:102: PORT_CFG &= ~bP2_OC;
	anl	_PORT_CFG,#0xfb
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:103: P2_PU |= bit;
	mov	a,r6
	orl	_P2_PU,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:104: P2_DIR &= ~bit;
	mov	a,r6
	cpl	a
	anl	_P2_DIR,a
	ret
00123$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:105: } else if (port == P3PORT) {
	cjne	r7,#0x04,00120$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:106: PORT_CFG &= ~bP3_OC;
	anl	_PORT_CFG,#0xf7
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:107: P3_PU |= bit;
	mov	a,r6
	orl	_P3_PU,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:108: P3_DIR &= ~bit;
	mov	a,r6
	cpl	a
	anl	_P3_DIR,a
	ret
00120$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:109: } else if (port == P4PORT) { // P4 can not do OC
	cjne	r7,#0x05,00154$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:110: P4_PU |= bit;
	mov	a,r6
	orl	_P4_PU,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:111: P4_DIR &= ~bit;
	mov	a,r6
	cpl	a
	anl	_P4_DIR,a
	ret
00149$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:114: } else if (mode == OUTPUT) {
	cjne	r5,#0x01,00154$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:137: if (port == P0PORT) {
	cjne	r7,#0x01,00143$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:138: PORT_CFG &= ~bP0_OC;
	anl	_PORT_CFG,#0xfe
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:139: P0_DIR |= bit;
	mov	a,r6
	orl	_P0_DIR,a
	ret
00143$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:140: } else if (port == P1PORT) {
	cjne	r7,#0x02,00140$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:141: PORT_CFG &= ~bP1_OC;
	anl	_PORT_CFG,#0xfd
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:142: P1_DIR |= bit;
	mov	a,r6
	orl	_P1_DIR,a
	ret
00140$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:143: } else if (port == P2PORT) {
	cjne	r7,#0x03,00137$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:144: PORT_CFG &= ~bP2_OC;
	anl	_PORT_CFG,#0xfb
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:145: P2_DIR |= bit;
	mov	a,r6
	orl	_P2_DIR,a
	ret
00137$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:146: } else if (port == P3PORT) {
	cjne	r7,#0x04,00134$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:147: PORT_CFG &= ~bP3_OC;
	anl	_PORT_CFG,#0xf7
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:148: P3_DIR |= bit;
	mov	a,r6
	orl	_P3_DIR,a
	ret
00134$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:149: } else if (port == P4PORT) { // P4 can not do OC
	cjne	r7,#0x05,00154$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:150: P4_DIR |= bit;
	mov	a,r6
	orl	_P4_DIR,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:153: } else if (mode == OUTPUT_OD) {
00154$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:177: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'turnOffPWM'
;------------------------------------------------------------
;pwm                       Allocated to registers r7 
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:179: static void turnOffPWM(__data uint8_t pwm) {
;	-----------------------------------------
;	 function turnOffPWM
;	-----------------------------------------
_turnOffPWM:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:204: switch (pwm) {
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x06
	jc	00124$
	mov	a,r7
	add	a,r7
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:205: case PIN_PWM1:
	mov	dptr,#00163$
	jmp	@a+dptr
00163$:
	sjmp	00124$
	sjmp	00101$
	sjmp	00104$
	sjmp	00113$
	sjmp	00107$
	sjmp	00110$
	sjmp	00118$
00101$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:206: if ((PIN_FUNC & bPWM1_PIN_X) == 0) {
	mov	a,_PIN_FUNC
	jb	acc.7,00124$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:207: PWM_CTRL &= ~bPWM_OUT_EN;
	anl	_PWM_CTRL,#0xf7
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:209: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:210: case PIN_PWM2:
	ret
00104$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:211: if ((PIN_FUNC & bPWM1_PIN_X) == 0) {
	mov	a,_PIN_FUNC
	jb	acc.7,00124$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:212: PWM_CTRL &= ~bPWM2_OUT_EN;
	anl	_PWM_CTRL,#0xfb
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:214: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:215: case PIN_PWM1_:
	ret
00107$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:216: if ((PIN_FUNC & bPWM1_PIN_X) != 0) {
	mov	a,_PIN_FUNC
	jnb	acc.7,00124$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:217: PWM_CTRL &= ~bPWM_OUT_EN;
	anl	_PWM_CTRL,#0xf7
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:219: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:220: case PIN_PWM2_:
	ret
00110$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:221: if ((PIN_FUNC & bPWM1_PIN_X) != 0) {
	mov	a,_PIN_FUNC
	jnb	acc.7,00124$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:222: PWM_CTRL &= ~bPWM2_OUT_EN;
	anl	_PWM_CTRL,#0xfb
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:224: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:225: case PIN_PWM3:
	ret
00113$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:226: if ((PIN_FUNC & bTMR3_PIN_X) == 0) {
	mov	a,_PIN_FUNC
	jb	acc.6,00124$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:227: if (T3_CTRL & bT3_OUT_EN) {
	mov	a,_T3_CTRL
	jnb	acc.3,00124$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:228: T3_CTRL &= ~(bT3_OUT_EN | bT3_CNT_EN);
	anl	_T3_CTRL,#0xf3
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:231: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:232: case PIN_PWM3_:
	ret
00118$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:233: if ((PIN_FUNC & bTMR3_PIN_X) != 0) {
	mov	a,_PIN_FUNC
	jnb	acc.6,00124$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:234: if (T3_CTRL & bT3_OUT_EN) {
	mov	a,_T3_CTRL
	jnb	acc.3,00124$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:235: T3_CTRL &= ~(bT3_OUT_EN | bT3_CNT_EN);
	anl	_T3_CTRL,#0xf3
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:239: }
00124$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:245: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'digitalRead'
;------------------------------------------------------------
;pin                       Allocated to registers r7 
;pwm                       Allocated to registers r6 
;bit                       Allocated to registers r5 
;port                      Allocated to registers r7 
;portBuf                   Allocated to registers r6 
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:247: uint8_t digitalRead(__data uint8_t pin) {
;	-----------------------------------------
;	 function digitalRead
;	-----------------------------------------
_digitalRead:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:248: __data uint8_t pwm = digitalPinToPWM(pin);
	mov	a,dpl
	mov	r7,a
	mov	dptr,#_digital_pin_to_pwm_PGM
	movc	a,@a+dptr
	mov	r6,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:249: __data uint8_t bit = digitalPinToBitMask(pin);
	mov	a,r7
	mov	dptr,#_digital_pin_to_bit_mask_PGM
	movc	a,@a+dptr
	mov	r5,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:250: __data uint8_t port = digitalPinToPort(pin);
	mov	a,r7
	mov	dptr,#_digital_pin_to_port_PGM
	movc	a,@a+dptr
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:252: if (port == NOT_A_PIN)
	mov	r7,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:253: return LOW;
	jnz	00102$
	mov	dpl,a
	ret
00102$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:257: if (pwm != NOT_ON_PWM)
	mov	a,r6
	jz	00104$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:258: turnOffPWM(pwm);
	mov	dpl,r6
	push	ar7
	push	ar5
	lcall	_turnOffPWM
	pop	ar5
	pop	ar7
00104$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:260: __data uint8_t portBuf = 0;
	mov	r6,#0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:262: switch (port) {
	mov	a,r7
	add	a,#0xff - 0x06
	jc	00112$
	mov	a,r7
	add	a,r7
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:264: case P1PORT:
	mov	dptr,#00136$
	jmp	@a+dptr
00136$:
	sjmp	00112$
	sjmp	00108$
	sjmp	00105$
	sjmp	00106$
	sjmp	00107$
	sjmp	00109$
	sjmp	00110$
00105$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:265: portBuf = P1;
	mov	r6,_P1
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:266: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:267: case P2PORT:
	sjmp	00112$
00106$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:268: portBuf = P2;
	mov	r6,_P2
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:269: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:270: case P3PORT:
	sjmp	00112$
00107$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:271: portBuf = P3;
	mov	r6,_P3
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:272: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:285: case P0PORT:
	sjmp	00112$
00108$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:286: portBuf = P0;
	mov	r6,_P0
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:287: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:288: case P4PORT:
	sjmp	00112$
00109$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:289: portBuf = P4_IN;
	mov	r6,_P4_IN
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:290: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:291: case P5PORT:
	sjmp	00112$
00110$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:292: portBuf = P5_IN;
	mov	r6,_P5_IN
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:297: }
00112$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:299: if (portBuf & bit)
	mov	a,r5
	anl	a,r6
	jz	00114$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:300: return HIGH;
	mov	dpl,#0x01
	ret
00114$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:301: return LOW;
	mov	dpl,#0x00
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:302: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'digitalWrite'
;------------------------------------------------------------
;pin                       Allocated to registers r7 
;pwm                       Allocated to registers r6 
;bit                       Allocated to registers r5 
;port                      Allocated to registers r7 
;interruptOn               Allocated to registers r6 
;val                       Allocated with name '_digitalWrite_PARM_2'
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:304: void digitalWrite(__data uint8_t pin, __xdata uint8_t val) {
;	-----------------------------------------
;	 function digitalWrite
;	-----------------------------------------
_digitalWrite:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:305: __data uint8_t pwm = digitalPinToPWM(pin);
	mov	a,dpl
	mov	r7,a
	mov	dptr,#_digital_pin_to_pwm_PGM
	movc	a,@a+dptr
	mov	r6,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:306: __data uint8_t bit = digitalPinToBitMask(pin);
	mov	a,r7
	mov	dptr,#_digital_pin_to_bit_mask_PGM
	movc	a,@a+dptr
	mov	r5,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:307: __data uint8_t port = digitalPinToPort(pin);
	mov	a,r7
	mov	dptr,#_digital_pin_to_port_PGM
	movc	a,@a+dptr
	mov	r7,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:311: if (pwm != NOT_ON_PWM)
	mov	a,r6
	jz	00102$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:312: turnOffPWM(pwm);
	mov	dpl,r6
	push	ar7
	push	ar5
	lcall	_turnOffPWM
	pop	ar5
	pop	ar7
00102$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:317: __data uint8_t interruptOn = EA;
	mov	c,_EA
	clr	a
	rlc	a
	mov	r6,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:318: EA = 0;
;	assignBit
	clr	_EA
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:320: switch (port) {
	mov	a,r7
	add	a,#0xff - 0x05
	jc	00124$
	mov	a,r7
	add	a,r7
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:322: case P1PORT:
	mov	dptr,#00163$
	jmp	@a+dptr
00163$:
	sjmp	00124$
	sjmp	00115$
	sjmp	00103$
	sjmp	00107$
	sjmp	00111$
	sjmp	00119$
00103$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:323: if (val == LOW) {
	mov	dptr,#_digitalWrite_PARM_2
	movx	a,@dptr
	jnz	00105$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:324: P1 &= ~bit;
	mov	a,r5
	cpl	a
	mov	r7,a
	anl	_P1,a
	sjmp	00124$
00105$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:326: P1 |= bit;
	mov	a,r5
	orl	_P1,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:328: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:329: case P2PORT:
	sjmp	00124$
00107$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:330: if (val == LOW) {
	mov	dptr,#_digitalWrite_PARM_2
	movx	a,@dptr
	jnz	00109$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:331: P2 &= ~bit;
	mov	a,r5
	cpl	a
	mov	r7,a
	anl	_P2,a
	sjmp	00124$
00109$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:333: P2 |= bit;
	mov	a,r5
	orl	_P2,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:335: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:336: case P3PORT:
	sjmp	00124$
00111$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:337: if (val == LOW) {
	mov	dptr,#_digitalWrite_PARM_2
	movx	a,@dptr
	jnz	00113$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:338: P3 &= ~bit;
	mov	a,r5
	cpl	a
	mov	r7,a
	anl	_P3,a
	sjmp	00124$
00113$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:340: P3 |= bit;
	mov	a,r5
	orl	_P3,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:342: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:367: case P0PORT:
	sjmp	00124$
00115$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:368: if (val == LOW) {
	mov	dptr,#_digitalWrite_PARM_2
	movx	a,@dptr
	jnz	00117$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:369: P0 &= ~bit;
	mov	a,r5
	cpl	a
	mov	r7,a
	anl	_P0,a
	sjmp	00124$
00117$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:371: P0 |= bit;
	mov	a,r5
	orl	_P0,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:373: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:374: case P4PORT:
	sjmp	00124$
00119$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:375: if (val == LOW) {
	mov	dptr,#_digitalWrite_PARM_2
	movx	a,@dptr
	jnz	00121$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:376: P4_OUT &= ~bit;
	mov	a,r5
	cpl	a
	mov	r7,a
	anl	_P4_OUT,a
	sjmp	00124$
00121$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:378: P4_OUT |= bit;
	mov	a,r5
	orl	_P4_OUT,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:385: }
00124$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:387: if (interruptOn)
	mov	a,r6
	jz	00127$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:388: EA = 1;
;	assignBit
	setb	_EA
00127$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:389: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_digital_pin_to_pwm_PGM:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_digital_pin_to_port_PGM:
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
_digital_pin_to_bit_mask_PGM:
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
_digital_pin_to_channel_PGM:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
