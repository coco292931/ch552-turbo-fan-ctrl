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
	.globl _DS18B20_init_PARM_2
	.globl _DS18B20_init
	.globl _DS18B20_begin
	.globl _DS18B20_readTemperatureFast
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
_ow_drive_low_dev_65536_175:
	.ds 3
_ow_release_bus_dev_65536_177:
	.ds 3
_ow_read_bus_dev_65536_179:
	.ds 3
_ow_reset_dev_65536_181:
	.ds 3
_ow_write_bit_PARM_2:
	.ds 1
_ow_write_bit_dev_65536_183:
	.ds 3
_ow_read_bit_dev_65536_187:
	.ds 3
_ow_write_byte_PARM_2:
	.ds 1
_ow_write_byte_dev_65536_189:
	.ds 3
_ow_read_byte_dev_65536_193:
	.ds 3
_ow_read_byte_v_65536_194:
	.ds 1
_DS18B20_init_PARM_2:
	.ds 1
_DS18B20_init_dev_65536_198:
	.ds 3
_DS18B20_begin_dev_65536_200:
	.ds 3
_DS18B20_readTemperatureFast_dev_65536_202:
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
;Allocation info for local variables in function 'ow_drive_low'
;------------------------------------------------------------
;dev                       Allocated with name '_ow_drive_low_dev_65536_175'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:7: static void ow_drive_low(DS18B20* dev) {
;	-----------------------------------------
;	 function ow_drive_low
;	-----------------------------------------
_ow_drive_low:
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
	mov	dptr,#_ow_drive_low_dev_65536_175
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:8: digitalWrite(dev->pin, LOW);
	mov	dptr,#_ow_drive_low_dev_65536_175
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:9: }
	ljmp	_digitalWrite
;------------------------------------------------------------
;Allocation info for local variables in function 'ow_release_bus'
;------------------------------------------------------------
;dev                       Allocated with name '_ow_release_bus_dev_65536_177'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:11: static void ow_release_bus(DS18B20* dev) {
;	-----------------------------------------
;	 function ow_release_bus
;	-----------------------------------------
_ow_release_bus:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ow_release_bus_dev_65536_177
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:12: digitalWrite(dev->pin, HIGH);
	mov	dptr,#_ow_release_bus_dev_65536_177
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:13: }
	ljmp	_digitalWrite
;------------------------------------------------------------
;Allocation info for local variables in function 'ow_read_bus'
;------------------------------------------------------------
;dev                       Allocated with name '_ow_read_bus_dev_65536_179'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:15: static uint8_t ow_read_bus(DS18B20* dev) {
;	-----------------------------------------
;	 function ow_read_bus
;	-----------------------------------------
_ow_read_bus:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ow_read_bus_dev_65536_179
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:16: return digitalRead(dev->pin);
	mov	dptr,#_ow_read_bus_dev_65536_179
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:17: }
	ljmp	_digitalRead
;------------------------------------------------------------
;Allocation info for local variables in function 'ow_reset'
;------------------------------------------------------------
;dev                       Allocated with name '_ow_reset_dev_65536_181'
;present                   Allocated with name '_ow_reset_present_65536_182'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:19: static uint8_t ow_reset(DS18B20* dev) {
;	-----------------------------------------
;	 function ow_reset
;	-----------------------------------------
_ow_reset:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ow_reset_dev_65536_181
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:23: EA = 0;
;	assignBit
	clr	_EA
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:25: ow_drive_low(dev);
	mov	dptr,#_ow_reset_dev_65536_181
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
	lcall	_ow_drive_low
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:26: delayMicroseconds(480);
	mov	dptr,#0x01e0
	lcall	_delayMicroseconds
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:28: ow_release_bus(dev);
	mov	dptr,#_ow_reset_dev_65536_181
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
	lcall	_ow_release_bus
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:29: delayMicroseconds(70);
	mov	dptr,#0x0046
	lcall	_delayMicroseconds
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:31: present = (ow_read_bus(dev) == 0) ? 1 : 0;
	mov	dptr,#_ow_reset_dev_65536_181
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
	lcall	_ow_read_bus
	mov	a,dpl
	jnz	00103$
	mov	r6,#0x01
	mov	r7,a
	sjmp	00104$
00103$:
	mov	r6,#0x00
	mov	r7,#0x00
00104$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:33: EA = 1;
;	assignBit
	setb	_EA
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:35: delayMicroseconds(410);
	mov	dptr,#0x019a
	push	ar6
	lcall	_delayMicroseconds
	pop	ar6
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:37: return present;
	mov	dpl,r6
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:38: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ow_write_bit'
;------------------------------------------------------------
;bitv                      Allocated with name '_ow_write_bit_PARM_2'
;dev                       Allocated with name '_ow_write_bit_dev_65536_183'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:40: static void ow_write_bit(DS18B20* dev, uint8_t bitv) {
;	-----------------------------------------
;	 function ow_write_bit
;	-----------------------------------------
_ow_write_bit:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ow_write_bit_dev_65536_183
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:42: EA = 0;
;	assignBit
	clr	_EA
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:44: ow_drive_low(dev);
	mov	dptr,#_ow_write_bit_dev_65536_183
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
	lcall	_ow_drive_low
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:45: delayMicroseconds(2);
	mov	dptr,#0x0002
	lcall	_delayMicroseconds
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:46: if (bitv) {
	mov	dptr,#_ow_write_bit_PARM_2
	movx	a,@dptr
	jz	00102$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:47: ow_release_bus(dev);
	mov	dptr,#_ow_write_bit_dev_65536_183
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
	lcall	_ow_release_bus
	sjmp	00103$
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:49: ow_drive_low(dev);
	mov	dptr,#_ow_write_bit_dev_65536_183
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
	lcall	_ow_drive_low
00103$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:51: delayMicroseconds(60);
	mov	dptr,#0x003c
	lcall	_delayMicroseconds
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:52: ow_release_bus(dev);
	mov	dptr,#_ow_write_bit_dev_65536_183
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
	lcall	_ow_release_bus
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:54: EA = 1;
;	assignBit
	setb	_EA
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:56: delayMicroseconds(2);
	mov	dptr,#0x0002
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:57: }
	ljmp	_delayMicroseconds
;------------------------------------------------------------
;Allocation info for local variables in function 'ow_read_bit'
;------------------------------------------------------------
;dev                       Allocated with name '_ow_read_bit_dev_65536_187'
;bitv                      Allocated with name '_ow_read_bit_bitv_65536_188'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:59: static uint8_t ow_read_bit(DS18B20* dev) {
;	-----------------------------------------
;	 function ow_read_bit
;	-----------------------------------------
_ow_read_bit:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ow_read_bit_dev_65536_187
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:63: EA = 0;
;	assignBit
	clr	_EA
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:65: ow_drive_low(dev);
	mov	dptr,#_ow_read_bit_dev_65536_187
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
	lcall	_ow_drive_low
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:66: delayMicroseconds(2);
	mov	dptr,#0x0002
	lcall	_delayMicroseconds
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:67: ow_release_bus(dev);
	mov	dptr,#_ow_read_bit_dev_65536_187
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
	lcall	_ow_release_bus
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:68: delayMicroseconds(12);
	mov	dptr,#0x000c
	lcall	_delayMicroseconds
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:70: bitv = ow_read_bus(dev) ? 1 : 0;
	mov	dptr,#_ow_read_bit_dev_65536_187
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
	lcall	_ow_read_bus
	mov	a,dpl
	jz	00103$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00104$
00103$:
	mov	r6,#0x00
	mov	r7,#0x00
00104$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:72: EA = 1;
;	assignBit
	setb	_EA
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:74: delayMicroseconds(50);
	mov	dptr,#0x0032
	push	ar6
	lcall	_delayMicroseconds
	pop	ar6
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:75: return bitv;
	mov	dpl,r6
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:76: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ow_write_byte'
;------------------------------------------------------------
;v                         Allocated with name '_ow_write_byte_PARM_2'
;dev                       Allocated with name '_ow_write_byte_dev_65536_189'
;i                         Allocated with name '_ow_write_byte_i_65536_190'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:78: static void ow_write_byte(DS18B20* dev, uint8_t v) {
;	-----------------------------------------
;	 function ow_write_byte
;	-----------------------------------------
_ow_write_byte:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ow_write_byte_dev_65536_189
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:80: for (i = 0; i < 8; i++) {
	mov	r7,#0x00
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:81: ow_write_bit(dev, v & 0x01);
	mov	dptr,#_ow_write_byte_dev_65536_189
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_ow_write_byte_PARM_2
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_ow_write_bit_PARM_2
	mov	a,#0x01
	anl	a,r3
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	push	ar7
	push	ar3
	lcall	_ow_write_bit
	pop	ar3
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:82: v >>= 1;
	mov	a,r3
	clr	c
	rrc	a
	mov	dptr,#_ow_write_byte_PARM_2
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:80: for (i = 0; i < 8; i++) {
	inc	r7
	cjne	r7,#0x08,00111$
00111$:
	jc	00102$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:84: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ow_read_byte'
;------------------------------------------------------------
;dev                       Allocated with name '_ow_read_byte_dev_65536_193'
;i                         Allocated with name '_ow_read_byte_i_65536_194'
;v                         Allocated with name '_ow_read_byte_v_65536_194'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:86: static uint8_t ow_read_byte(DS18B20* dev) {
;	-----------------------------------------
;	 function ow_read_byte
;	-----------------------------------------
_ow_read_byte:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ow_read_byte_dev_65536_193
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:88: uint8_t v = 0;
	mov	dptr,#_ow_read_byte_v_65536_194
	clr	a
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:89: for (i = 0; i < 8; i++) {
	mov	r7,#0x00
00104$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:90: if (ow_read_bit(dev)) {
	mov	dptr,#_ow_read_byte_dev_65536_193
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
	lcall	_ow_read_bit
	mov	a,dpl
	pop	ar7
	jz	00105$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:91: v |= (uint8_t)(1u << i);
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00124$
00122$:
	add	a,acc
00124$:
	djnz	b,00122$
	mov	r6,a
	mov	dptr,#_ow_read_byte_v_65536_194
	movx	a,@dptr
	orl	a,r6
	movx	@dptr,a
00105$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:89: for (i = 0; i < 8; i++) {
	inc	r7
	cjne	r7,#0x08,00125$
00125$:
	jc	00104$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:94: return v;
	mov	dptr,#_ow_read_byte_v_65536_194
	movx	a,@dptr
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:95: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DS18B20_init'
;------------------------------------------------------------
;data_pin                  Allocated with name '_DS18B20_init_PARM_2'
;dev                       Allocated with name '_DS18B20_init_dev_65536_198'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:97: void DS18B20_init(DS18B20* dev, uint8_t data_pin) {
;	-----------------------------------------
;	 function DS18B20_init
;	-----------------------------------------
_DS18B20_init:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_DS18B20_init_dev_65536_198
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:98: dev->pin = data_pin;
	mov	dptr,#_DS18B20_init_dev_65536_198
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:99: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'DS18B20_begin'
;------------------------------------------------------------
;dev                       Allocated with name '_DS18B20_begin_dev_65536_200'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:101: void DS18B20_begin(DS18B20* dev) {
;	-----------------------------------------
;	 function DS18B20_begin
;	-----------------------------------------
_DS18B20_begin:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_DS18B20_begin_dev_65536_200
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:102: pinMode(dev->pin, OUTPUT_OD);
	mov	dptr,#_DS18B20_begin_dev_65536_200
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
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_pinMode
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:103: ow_release_bus(dev);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:104: }
	ljmp	_ow_release_bus
;------------------------------------------------------------
;Allocation info for local variables in function 'DS18B20_readTemperatureFast'
;------------------------------------------------------------
;dev                       Allocated with name '_DS18B20_readTemperatureFast_dev_65536_202'
;raw                       Allocated with name '_DS18B20_readTemperatureFast_raw_65536_203'
;temp_low                  Allocated with name '_DS18B20_readTemperatureFast_temp_low_65536_203'
;temp_high                 Allocated with name '_DS18B20_readTemperatureFast_temp_high_65536_203'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:106: float DS18B20_readTemperatureFast(DS18B20* dev) {
;	-----------------------------------------
;	 function DS18B20_readTemperatureFast
;	-----------------------------------------
_DS18B20_readTemperatureFast:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_202
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:111: if (!ow_reset(dev)) {
	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_202
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
	lcall	_ow_reset
	mov	a,dpl
	jnz	00102$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:112: return -999.0f;
	mov	dptr,#0xc000
	mov	b,#0x79
	mov	a,#0xc4
	ret
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:115: ow_write_byte(dev, DS18B20_CMD_SKIP_ROM);
	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_202
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ow_write_byte_PARM_2
	mov	a,#0xcc
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ow_write_byte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:116: ow_write_byte(dev, DS18B20_CMD_CONVERT);
	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_202
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ow_write_byte_PARM_2
	mov	a,#0x44
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ow_write_byte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:117: delay(750);
	mov	dptr,#0x02ee
	clr	a
	mov	b,a
	lcall	_delay
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:119: if (!ow_reset(dev)) {
	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_202
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
	lcall	_ow_reset
	mov	a,dpl
	jnz	00104$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:120: return -999.0f;
	mov	dptr,#0xc000
	mov	b,#0x79
	mov	a,#0xc4
	ret
00104$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:123: ow_write_byte(dev, DS18B20_CMD_SKIP_ROM);
	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_202
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ow_write_byte_PARM_2
	mov	a,#0xcc
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ow_write_byte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:124: ow_write_byte(dev, DS18B20_CMD_READ_SCRATCHPAD);
	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_202
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_ow_write_byte_PARM_2
	mov	a,#0xbe
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ow_write_byte
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:125: temp_low = ow_read_byte(dev);
	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_202
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
	lcall	_ow_read_byte
	mov	r7,dpl
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:126: temp_high = ow_read_byte(dev);
	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_202
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
	lcall	_ow_read_byte
	mov	r6,dpl
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:127: raw = (int16_t)(((uint16_t)temp_high << 8) | temp_low);
	mov	ar5,r6
	clr	a
	mov	r6,a
	mov	r4,a
	mov	a,r7
	orl	ar6,a
	mov	a,r4
	orl	ar5,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:129: if (raw == (int16_t)0xFFFF || raw == (int16_t)0x0550 || raw == (int16_t)0x0000) {
	cjne	r6,#0xff,00129$
	cjne	r5,#0xff,00129$
	sjmp	00105$
00129$:
	cjne	r6,#0x50,00130$
	cjne	r5,#0x05,00130$
	sjmp	00105$
00130$:
	mov	a,r6
	orl	a,r5
	jnz	00106$
00105$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:130: return -999.0f;
	mov	dptr,#0xc000
	mov	b,#0x79
	mov	a,#0xc4
	ret
00106$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:133: return (float)raw * 0.0625f;
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:134: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
