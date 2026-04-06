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
	.globl _ADC_CHAN0
	.globl _ADC_CHAN1
	.globl _CMP_CHAN
	.globl _ADC_START
	.globl _ADC_IF
	.globl _CMP_IF
	.globl _CMPO
	.globl _U1RI
	.globl _U1TI
	.globl _U1RB8
	.globl _U1TB8
	.globl _U1REN
	.globl _U1SMOD
	.globl _U1SM0
	.globl _S0_R_FIFO
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
	.globl _P3_0
	.globl _P3_1
	.globl _P3_2
	.globl _P3_3
	.globl _P3_4
	.globl _P3_5
	.globl _P3_6
	.globl _P3_7
	.globl _RXD
	.globl _PWM1_
	.globl _TXD
	.globl _PWM2_
	.globl _AIN3
	.globl _VBUS1
	.globl _INT0
	.globl _TXD1_
	.globl _INT1
	.globl _T0
	.globl _RXD1_
	.globl _PWM2
	.globl _T1
	.globl _UDP
	.globl _UDM
	.globl _P1_0
	.globl _P1_1
	.globl _P1_2
	.globl _P1_3
	.globl _P1_4
	.globl _P1_5
	.globl _P1_6
	.globl _P1_7
	.globl _TIN0
	.globl _CAP1
	.globl _T2
	.globl _AIN0
	.globl _VBUS2
	.globl _TIN1
	.globl _CAP2
	.globl _T2EX
	.globl _RXD_
	.globl _TXD_
	.globl _AIN1
	.globl _UCC1
	.globl _TIN2
	.globl _SCS
	.globl _CAP1_
	.globl _T2_
	.globl _AIN2
	.globl _UCC2
	.globl _TIN3
	.globl _PWM1
	.globl _MOSI
	.globl _TIN4
	.globl _RXD1
	.globl _MISO
	.globl _TIN5
	.globl _TXD1
	.globl _SCK
	.globl _IE_SPI0
	.globl _IE_TKEY
	.globl _IE_USB
	.globl _IE_ADC
	.globl _IE_UART1
	.globl _IE_PWMX
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
	.globl _UEP1_DMA_H
	.globl _UEP1_DMA_L
	.globl _UEP1_DMA
	.globl _UEP0_DMA_H
	.globl _UEP0_DMA_L
	.globl _UEP0_DMA
	.globl _UEP2_3_MOD
	.globl _UEP4_1_MOD
	.globl _UEP3_DMA_H
	.globl _UEP3_DMA_L
	.globl _UEP3_DMA
	.globl _UEP2_DMA_H
	.globl _UEP2_DMA_L
	.globl _UEP2_DMA
	.globl _USB_DEV_AD
	.globl _USB_CTRL
	.globl _USB_INT_EN
	.globl _UEP4_T_LEN
	.globl _UEP4_CTRL
	.globl _UEP0_T_LEN
	.globl _UEP0_CTRL
	.globl _USB_RX_LEN
	.globl _USB_MIS_ST
	.globl _USB_INT_ST
	.globl _USB_INT_FG
	.globl _UEP3_T_LEN
	.globl _UEP3_CTRL
	.globl _UEP2_T_LEN
	.globl _UEP2_CTRL
	.globl _UEP1_T_LEN
	.globl _UEP1_CTRL
	.globl _UDEV_CTRL
	.globl _USB_C_CTRL
	.globl _TKEY_DATH
	.globl _TKEY_DATL
	.globl _TKEY_DAT
	.globl _TKEY_CTRL
	.globl _ADC_DATA
	.globl _ADC_CFG
	.globl _ADC_CTRL
	.globl _SBAUD1
	.globl _SBUF1
	.globl _SCON1
	.globl _SPI0_SETUP
	.globl _SPI0_CK_SE
	.globl _SPI0_CTRL
	.globl _SPI0_DATA
	.globl _SPI0_STAT
	.globl _PWM_CK_SE
	.globl _PWM_CTRL
	.globl _PWM_DATA1
	.globl _PWM_DATA2
	.globl _T2CAP1H
	.globl _T2CAP1L
	.globl _T2CAP1
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
	.globl _XBUS_AUX
	.globl _PIN_FUNC
	.globl _P3_DIR_PU
	.globl _P3_MOD_OC
	.globl _P3
	.globl _P2
	.globl _P1_DIR_PU
	.globl _P1_MOD_OC
	.globl _P1
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
	.globl _CLOCK_CFG
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
_CLOCK_CFG	=	0x00b9
_WAKE_CTRL	=	0x00a9
_RESET_KEEP	=	0x00fe
_WDOG_COUNT	=	0x00ff
_IE	=	0x00a8
_IP	=	0x00b8
_IE_EX	=	0x00e8
_IP_EX	=	0x00e9
_GPIO_IE	=	0x00c7
_ROM_ADDR	=	0x8584
_ROM_ADDR_L	=	0x0084
_ROM_ADDR_H	=	0x0085
_ROM_DATA	=	0x8f8e
_ROM_DATA_L	=	0x008e
_ROM_DATA_H	=	0x008f
_ROM_CTRL	=	0x0086
_P1	=	0x0090
_P1_MOD_OC	=	0x0092
_P1_DIR_PU	=	0x0093
_P2	=	0x00a0
_P3	=	0x00b0
_P3_MOD_OC	=	0x0096
_P3_DIR_PU	=	0x0097
_PIN_FUNC	=	0x00c6
_XBUS_AUX	=	0x00a2
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
_T2CAP1	=	0xcfce
_T2CAP1L	=	0x00ce
_T2CAP1H	=	0x00cf
_PWM_DATA2	=	0x009b
_PWM_DATA1	=	0x009c
_PWM_CTRL	=	0x009d
_PWM_CK_SE	=	0x009e
_SPI0_STAT	=	0x00f8
_SPI0_DATA	=	0x00f9
_SPI0_CTRL	=	0x00fa
_SPI0_CK_SE	=	0x00fb
_SPI0_SETUP	=	0x00fc
_SCON1	=	0x00c0
_SBUF1	=	0x00c1
_SBAUD1	=	0x00c2
_ADC_CTRL	=	0x0080
_ADC_CFG	=	0x009a
_ADC_DATA	=	0x009f
_TKEY_CTRL	=	0x00c3
_TKEY_DAT	=	0xc5c4
_TKEY_DATL	=	0x00c4
_TKEY_DATH	=	0x00c5
_USB_C_CTRL	=	0x0091
_UDEV_CTRL	=	0x00d1
_UEP1_CTRL	=	0x00d2
_UEP1_T_LEN	=	0x00d3
_UEP2_CTRL	=	0x00d4
_UEP2_T_LEN	=	0x00d5
_UEP3_CTRL	=	0x00d6
_UEP3_T_LEN	=	0x00d7
_USB_INT_FG	=	0x00d8
_USB_INT_ST	=	0x00d9
_USB_MIS_ST	=	0x00da
_USB_RX_LEN	=	0x00db
_UEP0_CTRL	=	0x00dc
_UEP0_T_LEN	=	0x00dd
_UEP4_CTRL	=	0x00de
_UEP4_T_LEN	=	0x00df
_USB_INT_EN	=	0x00e1
_USB_CTRL	=	0x00e2
_USB_DEV_AD	=	0x00e3
_UEP2_DMA	=	0xe5e4
_UEP2_DMA_L	=	0x00e4
_UEP2_DMA_H	=	0x00e5
_UEP3_DMA	=	0xe7e6
_UEP3_DMA_L	=	0x00e6
_UEP3_DMA_H	=	0x00e7
_UEP4_1_MOD	=	0x00ea
_UEP2_3_MOD	=	0x00eb
_UEP0_DMA	=	0xedec
_UEP0_DMA_L	=	0x00ec
_UEP0_DMA_H	=	0x00ed
_UEP1_DMA	=	0xefee
_UEP1_DMA_L	=	0x00ee
_UEP1_DMA_H	=	0x00ef
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
_IE_PWMX	=	0x00ed
_IE_UART1	=	0x00ec
_IE_ADC	=	0x00eb
_IE_USB	=	0x00ea
_IE_TKEY	=	0x00e9
_IE_SPI0	=	0x00e8
_SCK	=	0x0097
_TXD1	=	0x0097
_TIN5	=	0x0097
_MISO	=	0x0096
_RXD1	=	0x0096
_TIN4	=	0x0096
_MOSI	=	0x0095
_PWM1	=	0x0095
_TIN3	=	0x0095
_UCC2	=	0x0095
_AIN2	=	0x0095
_T2_	=	0x0094
_CAP1_	=	0x0094
_SCS	=	0x0094
_TIN2	=	0x0094
_UCC1	=	0x0094
_AIN1	=	0x0094
_TXD_	=	0x0093
_RXD_	=	0x0092
_T2EX	=	0x0091
_CAP2	=	0x0091
_TIN1	=	0x0091
_VBUS2	=	0x0091
_AIN0	=	0x0091
_T2	=	0x0090
_CAP1	=	0x0090
_TIN0	=	0x0090
_P1_7	=	0x0097
_P1_6	=	0x0096
_P1_5	=	0x0095
_P1_4	=	0x0094
_P1_3	=	0x0093
_P1_2	=	0x0092
_P1_1	=	0x0091
_P1_0	=	0x0090
_UDM	=	0x00b7
_UDP	=	0x00b6
_T1	=	0x00b5
_PWM2	=	0x00b4
_RXD1_	=	0x00b4
_T0	=	0x00b4
_INT1	=	0x00b3
_TXD1_	=	0x00b2
_INT0	=	0x00b2
_VBUS1	=	0x00b2
_AIN3	=	0x00b2
_PWM2_	=	0x00b1
_TXD	=	0x00b1
_PWM1_	=	0x00b0
_RXD	=	0x00b0
_P3_7	=	0x00b7
_P3_6	=	0x00b6
_P3_5	=	0x00b5
_P3_4	=	0x00b4
_P3_3	=	0x00b3
_P3_2	=	0x00b2
_P3_1	=	0x00b1
_P3_0	=	0x00b0
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
_S0_R_FIFO	=	0x00f8
_U1SM0	=	0x00c7
_U1SMOD	=	0x00c5
_U1REN	=	0x00c4
_U1TB8	=	0x00c3
_U1RB8	=	0x00c2
_U1TI	=	0x00c1
_U1RI	=	0x00c0
_CMPO	=	0x0087
_CMP_IF	=	0x0086
_ADC_IF	=	0x0085
_ADC_START	=	0x0084
_CMP_CHAN	=	0x0083
_ADC_CHAN1	=	0x0081
_ADC_CHAN0	=	0x0080
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
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
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
	jnz	00132$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:26: if (port == P1PORT) {
	cjne	r7,#0x02,00106$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:27: P1_MOD_OC &= ~bit;
	mov	a,r6
	cpl	a
	mov	r4,a
	anl	_P1_MOD_OC,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:28: P1_DIR_PU &= ~bit;
	mov	a,r4
	anl	_P1_DIR_PU,a
	ret
00106$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:29: } else if (port == P3PORT) {
	cjne	r7,#0x04,00192$
	sjmp	00193$
00192$:
	ret
00193$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:30: P3_MOD_OC &= ~bit;
	mov	a,r6
	cpl	a
	mov	r4,a
	anl	_P3_MOD_OC,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:31: P3_DIR_PU &= ~bit;
	mov	a,r4
	anl	_P3_DIR_PU,a
	ret
00132$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:69: } else if (mode == INPUT_PULLUP) {
	cjne	r5,#0x02,00129$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:71: if (port == P1PORT) {
	cjne	r7,#0x02,00111$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:72: P1_MOD_OC |= bit;
	mov	a,r6
	orl	_P1_MOD_OC,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:73: P1_DIR_PU |= bit;
	mov	a,r6
	orl	_P1_DIR_PU,a
	ret
00111$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:74: } else if (port == P3PORT) {
	cjne	r7,#0x04,00134$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:75: P3_MOD_OC |= bit;
	mov	a,r6
	orl	_P3_MOD_OC,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:76: P3_DIR_PU |= bit;
	mov	a,r6
	orl	_P3_DIR_PU,a
	ret
00129$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:114: } else if (mode == OUTPUT) {
	cjne	r5,#0x01,00126$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:116: if (port == P1PORT) {
	cjne	r7,#0x02,00116$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:117: P1_MOD_OC &= ~bit;
	mov	a,r6
	cpl	a
	anl	_P1_MOD_OC,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:118: P1_DIR_PU |= bit;
	mov	a,r6
	orl	_P1_DIR_PU,a
	ret
00116$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:119: } else if (port == P3PORT) {
	cjne	r7,#0x04,00134$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:120: P3_MOD_OC &= ~bit;
	mov	a,r6
	cpl	a
	anl	_P3_MOD_OC,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:121: P3_DIR_PU |= bit;
	mov	a,r6
	orl	_P3_DIR_PU,a
	ret
00126$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:153: } else if (mode == OUTPUT_OD) {
	cjne	r5,#0x03,00134$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:155: if (port == P1PORT) {
	cjne	r7,#0x02,00121$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:156: P1_MOD_OC |= bit;
	mov	a,r6
	orl	_P1_MOD_OC,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:157: P1_DIR_PU &= ~bit;
	mov	a,r6
	cpl	a
	anl	_P1_DIR_PU,a
	ret
00121$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:158: } else if (port == P3PORT) {
	cjne	r7,#0x04,00134$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:159: P3_MOD_OC |= bit;
	mov	a,r6
	orl	_P3_MOD_OC,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:160: P3_DIR_PU &= ~bit;
	mov	a,r6
	cpl	a
	mov	r6,a
	anl	_P3_DIR_PU,a
00134$:
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
	mov	r7,dpl
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:181: switch (pwm) {
	cjne	r7,#0x01,00148$
	sjmp	00101$
00148$:
	cjne	r7,#0x02,00149$
	sjmp	00104$
00149$:
	cjne	r7,#0x03,00150$
	sjmp	00107$
00150$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:182: case PIN_PWM1:
	cjne	r7,#0x04,00114$
	sjmp	00110$
00101$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:183: if ((PIN_FUNC & bPWM1_PIN_X) == 0) {
	mov	a,_PIN_FUNC
	jb	acc.2,00114$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:184: PWM_CTRL &= ~bPWM1_OUT_EN;
	anl	_PWM_CTRL,#0xfb
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:186: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:187: case PIN_PWM2:
	ret
00104$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:188: if ((PIN_FUNC & bPWM2_PIN_X) == 0) {
	mov	a,_PIN_FUNC
	jb	acc.3,00114$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:189: PWM_CTRL &= ~bPWM2_OUT_EN;
	anl	_PWM_CTRL,#0xf7
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:191: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:192: case PIN_PWM1_:
	ret
00107$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:193: if ((PIN_FUNC & bPWM1_PIN_X) != 0) {
	mov	a,_PIN_FUNC
	jnb	acc.2,00114$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:194: PWM_CTRL &= ~bPWM1_OUT_EN;
	anl	_PWM_CTRL,#0xfb
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:196: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:197: case PIN_PWM2_:
	ret
00110$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:198: if ((PIN_FUNC & bPWM2_PIN_X) != 0) {
	mov	a,_PIN_FUNC
	jnb	acc.3,00114$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:199: PWM_CTRL &= ~bPWM2_OUT_EN;
	anl	_PWM_CTRL,#0xf7
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:202: }
00114$:
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
	cjne	r7,#0x02,00140$
	sjmp	00105$
00140$:
	cjne	r7,#0x03,00141$
	sjmp	00106$
00141$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:264: case P1PORT:
	cjne	r7,#0x04,00109$
	sjmp	00107$
00105$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:265: portBuf = P1;
	mov	r6,_P1
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:266: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:267: case P2PORT:
	sjmp	00109$
00106$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:268: portBuf = P2;
	mov	r6,_P2
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:269: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:270: case P3PORT:
	sjmp	00109$
00107$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:271: portBuf = P3;
	mov	r6,_P3
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:297: }
00109$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:299: if (portBuf & bit)
	mov	a,r5
	anl	a,r6
	jz	00111$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:300: return HIGH;
	mov	dpl,#0x01
	ret
00111$:
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
	cjne	r7,#0x02,00154$
	sjmp	00103$
00154$:
	cjne	r7,#0x03,00155$
	sjmp	00107$
00155$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:322: case P1PORT:
	cjne	r7,#0x04,00116$
	sjmp	00111$
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
	sjmp	00116$
00105$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:326: P1 |= bit;
	mov	a,r5
	orl	_P1,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:328: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:329: case P2PORT:
	sjmp	00116$
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
	sjmp	00116$
00109$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:333: P2 |= bit;
	mov	a,r5
	orl	_P2,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:335: break;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:336: case P3PORT:
	sjmp	00116$
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
	sjmp	00116$
00113$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:340: P3 |= bit;
	mov	a,r5
	orl	_P3,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:385: }
00116$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:387: if (interruptOn)
	mov	a,r6
	jz	00119$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\wiring_digital.c:388: EA = 1;
;	assignBit
	setb	_EA
00119$:
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
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
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
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
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
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x02	; 2
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
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
