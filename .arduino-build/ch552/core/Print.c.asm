;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13407 (MINGW32)
;--------------------------------------------------------
	.module Print
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _Print_print_ib_PARM_3
	.globl _Print_print_ib_PARM_2
	.globl _Print_print_ub_PARM_3
	.globl _Print_print_ub_PARM_2
	.globl _Print_print_i_PARM_2
	.globl _Print_print_u_PARM_2
	.globl _Print_print_s_PARM_2
	.globl _Print_print_sn_PARM_3
	.globl _Print_print_sn_PARM_2
	.globl _Print_print_sn
	.globl _Print_print_s
	.globl _Print_print_u
	.globl _Print_print_i
	.globl _Print_println
	.globl _Print_print_ub
	.globl _Print_print_ib
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
_Print_print_ub_writefunc_65536_182:
	.ds 2
_Print_print_ub_sloc0_1_0:
	.ds 1
_Print_print_ub_sloc1_1_0:
	.ds 4
_Print_print_ub_sloc2_1_0:
	.ds 4
_Print_print_ib_writefunc_65536_185:
	.ds 2
_Print_print_ib_sloc0_1_0:
	.ds 1
_Print_print_ib_sloc1_1_0:
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
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_Print_print_sn_PARM_2:
	.ds 3
_Print_print_sn_PARM_3:
	.ds 1
_Print_print_s_PARM_2:
	.ds 3
_Print_print_u_PARM_2:
	.ds 4
_Print_print_i_PARM_2:
	.ds 4
_Print_print_ub_PARM_2:
	.ds 4
_Print_print_ub_PARM_3:
	.ds 1
_Print_print_ub_buf_65536_183:
	.ds 33
_Print_print_ib_PARM_2:
	.ds 4
_Print_print_ib_PARM_3:
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
;Allocation info for local variables in function 'Print_print_sn'
;------------------------------------------------------------
;writefunc                 Allocated to registers r6 r7 
;n                         Allocated to registers r2 
;buffer                    Allocated with name '_Print_print_sn_PARM_2'
;size                      Allocated with name '_Print_print_sn_PARM_3'
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:39: uint8_t Print_print_sn(__data writefunc_p writefunc, uint8_t *__xdata buffer,
;	-----------------------------------------
;	 function Print_print_sn
;	-----------------------------------------
_Print_print_sn:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:42: while (size--) {
	mov	dptr,#_Print_print_sn_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r2,#0x00
	mov	dptr,#_Print_print_sn_PARM_3
	movx	a,@dptr
	mov	r1,a
00104$:
	mov	ar0,r1
	dec	r1
	mov	a,r0
	jz	00106$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:43: if (writefunc(*buffer++))
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	mov	r3,dpl
	mov	r4,dph
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	00123$
	sjmp	00124$
00123$:
	push	ar6
	push	ar7
	mov	dpl,r0
	ret
00124$:
	mov	r0,dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r0
	jz	00106$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:44: n++;
	inc	r2
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:46: break;
	sjmp	00104$
00106$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:48: return n;
	mov	dpl,r2
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:49: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Print_print_s'
;------------------------------------------------------------
;writefunc                 Allocated to registers r6 r7 
;n                         Allocated to registers r2 
;c                         Allocated to registers r0 
;str                       Allocated with name '_Print_print_s_PARM_2'
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:51: uint8_t Print_print_s(__data writefunc_p writefunc, char *__xdata str) {
;	-----------------------------------------
;	 function Print_print_s
;	-----------------------------------------
_Print_print_s:
	mov	r6,dpl
	mov	r7,dph
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:55: if (!str)
	mov	dptr,#_Print_print_s_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_Print_print_s_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:56: return 0;
	jnz	00114$
	mov	dpl,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:58: while (c = *str++) { // assignment intented
	ret
00114$:
	mov	r2,#0x00
00106$:
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	mov	r3,dpl
	mov	r4,dph
	mov	a,r1
	mov	r0,a
	jz	00108$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:59: if (writefunc(c))
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	00130$
	sjmp	00131$
00130$:
	push	ar6
	push	ar7
	mov	dpl,r0
	ret
00131$:
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r1
	jz	00108$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:60: n++;
	inc	r2
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:62: break;
	sjmp	00106$
00108$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:64: return n;
	mov	dpl,r2
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:65: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Print_print_u'
;------------------------------------------------------------
;writefunc                 Allocated to registers r6 r7 
;n                         Allocated with name '_Print_print_u_PARM_2'
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:67: uint8_t Print_print_u(__data writefunc_p writefunc, __xdata unsigned long n) {
;	-----------------------------------------
;	 function Print_print_u
;	-----------------------------------------
_Print_print_u:
	mov	r6,dpl
	mov	r7,dph
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:68: return printNumber(writefunc, n, 10);
	mov	dptr,#_Print_print_u_PARM_2
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
	mov	dptr,#_Print_print_ub_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_Print_print_ub_PARM_3
	mov	a,#0x0a
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:69: }
	ljmp	_Print_print_ub
;------------------------------------------------------------
;Allocation info for local variables in function 'Print_print_i'
;------------------------------------------------------------
;writefunc                 Allocated to registers r6 r7 
;n                         Allocated with name '_Print_print_i_PARM_2'
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:71: uint8_t Print_print_i(__data writefunc_p writefunc, __xdata long n) {
;	-----------------------------------------
;	 function Print_print_i
;	-----------------------------------------
_Print_print_i:
	mov	r6,dpl
	mov	r7,dph
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:72: return printInt(writefunc, n, 10);
	mov	dptr,#_Print_print_i_PARM_2
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
	mov	dptr,#_Print_print_ib_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_Print_print_ib_PARM_3
	mov	a,#0x0a
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:73: }
	ljmp	_Print_print_ib
;------------------------------------------------------------
;Allocation info for local variables in function 'Print_println'
;------------------------------------------------------------
;writefunc                 Allocated to registers r6 r7 
;n                         Allocated to registers r6 
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:78: uint8_t Print_println(__data writefunc_p writefunc) {
;	-----------------------------------------
;	 function Print_println
;	-----------------------------------------
_Print_println:
	mov	r6,dpl
	mov	r7,dph
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:81: n = writefunc(13);
	push	ar7
	push	ar6
	lcall	00103$
	sjmp	00104$
00103$:
	push	ar6
	push	ar7
	mov	dpl,#0x0d
	ret
00104$:
	mov	r5,dpl
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:82: n += writefunc(10);
	push	ar7
	push	ar5
	lcall	00105$
	sjmp	00106$
00105$:
	push	ar6
	push	ar7
	mov	dpl,#0x0a
	ret
00106$:
	mov	r6,dpl
	pop	ar5
	pop	ar7
	mov	a,r6
	add	a,r5
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:83: return n;
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:84: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Print_print_ub'
;------------------------------------------------------------
;writefunc                 Allocated with name '_Print_print_ub_writefunc_65536_182'
;c                         Allocated to registers r0 
;sloc0                     Allocated with name '_Print_print_ub_sloc0_1_0'
;sloc1                     Allocated with name '_Print_print_ub_sloc1_1_0'
;sloc2                     Allocated with name '_Print_print_ub_sloc2_1_0'
;n                         Allocated with name '_Print_print_ub_PARM_2'
;base                      Allocated with name '_Print_print_ub_PARM_3'
;buf                       Allocated with name '_Print_print_ub_buf_65536_183'
;str                       Allocated with name '_Print_print_ub_str_65536_183'
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:86: uint8_t Print_print_ub(__data writefunc_p writefunc, __xdata unsigned long n,
;	-----------------------------------------
;	 function Print_print_ub
;	-----------------------------------------
_Print_print_ub:
	mov	_Print_print_ub_writefunc_65536_182,dpl
	mov	(_Print_print_ub_writefunc_65536_182 + 1),dph
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:89: __xdata char *str = &buf[sizeof(buf) - 1];
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:91: *str = '\0';
	mov	dptr,#(_Print_print_ub_buf_65536_183 + 0x0020)
	clr	a
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:94: if (base < 2)
	mov	dptr,#_Print_print_ub_PARM_3
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x02,00127$
00127$:
	jnc	00112$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:95: base = 10;
	mov	dptr,#_Print_print_ub_PARM_3
	mov	a,#0x0a
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:97: do {
00112$:
	mov	dptr,#_Print_print_ub_PARM_3
	movx	a,@dptr
	mov	_Print_print_ub_sloc0_1_0,a
	mov	r3,#(_Print_print_ub_buf_65536_183 + 0x0020)
	mov	r4,#((_Print_print_ub_buf_65536_183 + 0x0020) >> 8)
00103$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:98: __data char c = n % base;
	mov	dptr,#_Print_print_ub_PARM_2
	movx	a,@dptr
	mov	_Print_print_ub_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_Print_print_ub_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_Print_print_ub_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_Print_print_ub_sloc1_1_0 + 3),a
	mov	_Print_print_ub_sloc2_1_0,_Print_print_ub_sloc0_1_0
	mov	(_Print_print_ub_sloc2_1_0 + 1),#0x00
	mov	(_Print_print_ub_sloc2_1_0 + 2),#0x00
	mov	(_Print_print_ub_sloc2_1_0 + 3),#0x00
	push	ar4
	push	ar3
	push	_Print_print_ub_sloc2_1_0
	push	(_Print_print_ub_sloc2_1_0 + 1)
	push	(_Print_print_ub_sloc2_1_0 + 2)
	push	(_Print_print_ub_sloc2_1_0 + 3)
	mov	dpl,_Print_print_ub_sloc1_1_0
	mov	dph,(_Print_print_ub_sloc1_1_0 + 1)
	mov	b,(_Print_print_ub_sloc1_1_0 + 2)
	mov	a,(_Print_print_ub_sloc1_1_0 + 3)
	lcall	__modulong
	mov	r0,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:99: n /= base;
	push	ar0
	push	_Print_print_ub_sloc2_1_0
	push	(_Print_print_ub_sloc2_1_0 + 1)
	push	(_Print_print_ub_sloc2_1_0 + 2)
	push	(_Print_print_ub_sloc2_1_0 + 3)
	mov	dpl,_Print_print_ub_sloc1_1_0
	mov	dph,(_Print_print_ub_sloc1_1_0 + 1)
	mov	b,(_Print_print_ub_sloc1_1_0 + 2)
	mov	a,(_Print_print_ub_sloc1_1_0 + 3)
	lcall	__divulong
	mov	r2,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar3
	pop	ar4
	mov	dptr,#_Print_print_ub_PARM_2
	mov	a,r2
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
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:101: *--str = c < 10 ? c + '0' : c + 'A' - 10;
	dec	r3
	cjne	r3,#0xff,00129$
	dec	r4
00129$:
	mov	ar6,r3
	mov	ar7,r4
	cjne	r0,#0x0a,00130$
00130$:
	jnc	00108$
	mov	ar5,r0
	mov	a,#0x30
	add	a,r5
	mov	r5,a
	sjmp	00109$
00108$:
	mov	a,#0x37
	add	a,r0
	mov	r5,a
00109$:
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:102: } while (n);
	mov	dptr,#_Print_print_ub_PARM_2
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
	jz	00132$
	ljmp	00103$
00132$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:104: return Print_print_s(writefunc, str);
	mov	dptr,#_Print_print_s_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,_Print_print_ub_writefunc_65536_182
	mov	dph,(_Print_print_ub_writefunc_65536_182 + 1)
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:105: }
	ljmp	_Print_print_s
;------------------------------------------------------------
;Allocation info for local variables in function 'Print_print_ib'
;------------------------------------------------------------
;writefunc                 Allocated with name '_Print_print_ib_writefunc_65536_185'
;t                         Allocated to registers 
;sloc0                     Allocated with name '_Print_print_ib_sloc0_1_0'
;sloc1                     Allocated with name '_Print_print_ib_sloc1_1_0'
;n                         Allocated with name '_Print_print_ib_PARM_2'
;base                      Allocated with name '_Print_print_ib_PARM_3'
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:107: uint8_t Print_print_ib(__data writefunc_p writefunc, __xdata long n,
;	-----------------------------------------
;	 function Print_print_ib
;	-----------------------------------------
_Print_print_ib:
	mov	_Print_print_ib_writefunc_65536_185,dpl
	mov	(_Print_print_ib_writefunc_65536_185 + 1),dph
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:109: if (base == 0) {
	mov	dptr,#_Print_print_ib_PARM_3
	movx	a,@dptr
	mov	r5,a
	jnz	00107$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:110: return writefunc((unsigned char)n);
	mov	dptr,#_Print_print_ib_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	lcall	00124$
	sjmp	00125$
00124$:
	push	_Print_print_ib_writefunc_65536_185
	push	(_Print_print_ib_writefunc_65536_185 + 1)
	mov	dpl,r1
	ret
00125$:
	ret
00107$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:111: } else if (base == 10) {
	cjne	r5,#0x0a,00126$
	sjmp	00127$
00126$:
	ljmp	00104$
00127$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:112: if (n < 0) {
	mov	dptr,#_Print_print_ib_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	jnb	acc.7,00102$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:113: __data int t = writefunc('-');
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	00129$
	sjmp	00130$
00129$:
	push	_Print_print_ib_writefunc_65536_185
	push	(_Print_print_ib_writefunc_65536_185 + 1)
	mov	dpl,#0x2d
	ret
00130$:
	mov	r0,dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	mov	_Print_print_ib_sloc0_1_0,r0
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:114: n = -n;
	mov	dptr,#_Print_print_ib_PARM_2
	clr	c
	clr	a
	subb	a,r1
	movx	@dptr,a
	clr	a
	subb	a,r2
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r3
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r4
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:115: return printNumber(writefunc, n, 10) + t;
	mov	dptr,#_Print_print_ib_PARM_2
	movx	a,@dptr
	mov	_Print_print_ib_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_Print_print_ib_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_Print_print_ib_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_Print_print_ib_sloc1_1_0 + 3),a
	mov	dptr,#_Print_print_ub_PARM_2
	mov	a,_Print_print_ib_sloc1_1_0
	movx	@dptr,a
	mov	a,(_Print_print_ib_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_Print_print_ib_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_Print_print_ib_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_Print_print_ub_PARM_3
	mov	a,#0x0a
	movx	@dptr,a
	mov	dpl,_Print_print_ib_writefunc_65536_185
	mov	dph,(_Print_print_ib_writefunc_65536_185 + 1)
	lcall	_Print_print_ub
	mov	r7,dpl
	mov	a,_Print_print_ib_sloc0_1_0
	add	a,r7
	mov	dpl,a
	ret
00102$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:117: return printNumber(writefunc, n, 10);
	mov	dptr,#_Print_print_ub_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_Print_print_ub_PARM_3
	mov	a,#0x0a
	movx	@dptr,a
	mov	dpl,_Print_print_ib_writefunc_65536_185
	mov	dph,(_Print_print_ib_writefunc_65536_185 + 1)
	ljmp	_Print_print_ub
00104$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:119: return printNumber(writefunc, n, base);
	mov	dptr,#_Print_print_ib_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_Print_print_ub_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_Print_print_ub_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	dpl,_Print_print_ib_writefunc_65536_185
	mov	dph,(_Print_print_ib_writefunc_65536_185 + 1)
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\Print.c:121: }
	ljmp	_Print_print_ub
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
