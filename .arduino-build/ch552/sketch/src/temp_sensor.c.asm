;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13407 (MINGW32)
;--------------------------------------------------------
	.module temp_sensor
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _DS18B20_readTemperatureFast
	.globl _DS18B20_begin
	.globl _VoltageController_setVoltage
	.globl _delay
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
	.globl _TempController_begin_PARM_3
	.globl _TempController_begin_PARM_2
	.globl _TempController_begin
	.globl _TempController_update
	.globl _TempController_isOverheat
	.globl _TempController_getTemperature
	.globl _TempController_getTargetRPM
	.globl _TempController_isReady
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
_TempController_mapTempToRPM_sloc0_1_0:
	.ds 4
_TempController_begin_sloc0_1_0:
	.ds 3
_TempController_begin_sloc1_1_0:
	.ds 3
_TempController_update_sloc0_1_0:
	.ds 4
_TempController_update_sloc1_1_0:
	.ds 3
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
_TempController_begin_sloc2_1_0:
	.ds 1
_TempController_isOverheat_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_TempController_mapTempToVoltageLinear_temp_65536_192:
	.ds 4
_TempController_mapTempToVoltageLinear_voltage_65536_193:
	.ds 4
_TempController_mapTempToVoltageQuadratic_temp_65536_194:
	.ds 4
_TempController_mapTempToVoltageQuadratic_norm_temp_65536_195:
	.ds 4
_TempController_mapTempToVoltageQuadratic_voltage_65536_195:
	.ds 4
_TempController_mapTempToRPM_temp_65536_196:
	.ds 4
_TempController_begin_PARM_2:
	.ds 3
_TempController_begin_PARM_3:
	.ds 3
_TempController_begin_tc_65536_198:
	.ds 3
_TempController_update_tc_65536_202:
	.ds 3
_TempController_isOverheat_tc_65536_208:
	.ds 3
_TempController_getTemperature_tc_65536_210:
	.ds 3
_TempController_getTargetRPM_tc_65536_212:
	.ds 3
_TempController_isReady_tc_65536_214:
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
;Allocation info for local variables in function 'TempController_mapTempToVoltageLinear'
;------------------------------------------------------------
;temp                      Allocated with name '_TempController_mapTempToVoltageLinear_temp_65536_192'
;voltage                   Allocated with name '_TempController_mapTempToVoltageLinear_voltage_65536_193'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:10: static float TempController_mapTempToVoltageLinear(float temp) {
;	-----------------------------------------
;	 function TempController_mapTempToVoltageLinear
;	-----------------------------------------
_TempController_mapTempToVoltageLinear:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_TempController_mapTempToVoltageLinear_temp_65536_192
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:11: float voltage = TEMP_VOLTAGE_K * temp + TEMP_VOLTAGE_B;
	mov	dptr,#_TempController_mapTempToVoltageLinear_temp_65536_192
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
	mov	dptr,#0xeef0
	mov	b,#0xee
	mov	a,#0x3e
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x10
	push	acc
	mov	a,#0xc1
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_TempController_mapTempToVoltageLinear_voltage_65536_193
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:12: if (voltage < VOUT_MIN) voltage = VOUT_MIN;
	mov	a,#0x66
	push	acc
	push	acc
	mov	a,#0xa6
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00102$
	mov	dptr,#_TempController_mapTempToVoltageLinear_voltage_65536_193
	mov	a,#0x66
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	a,#0xa6
	inc	dptr
	movx	@dptr,a
	mov	a,#0x40
	inc	dptr
	movx	@dptr,a
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:13: if (voltage > VOUT_MAX) voltage = VOUT_MAX;
	mov	dptr,#_TempController_mapTempToVoltageLinear_voltage_65536_193
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
	mov	dptr,#0x0000
	mov	b,#0x40
	mov	a,#0x41
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00104$
	mov	dptr,#_TempController_mapTempToVoltageLinear_voltage_65536_193
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	a,#0x40
	inc	dptr
	movx	@dptr,a
	inc	a
	inc	dptr
	movx	@dptr,a
00104$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:14: return voltage;
	mov	dptr,#_TempController_mapTempToVoltageLinear_voltage_65536_193
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:15: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TempController_mapTempToVoltageQuadratic'
;------------------------------------------------------------
;temp                      Allocated with name '_TempController_mapTempToVoltageQuadratic_temp_65536_194'
;norm_temp                 Allocated with name '_TempController_mapTempToVoltageQuadratic_norm_temp_65536_195'
;voltage                   Allocated with name '_TempController_mapTempToVoltageQuadratic_voltage_65536_195'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:17: static float TempController_mapTempToVoltageQuadratic(float temp) {
;	-----------------------------------------
;	 function TempController_mapTempToVoltageQuadratic
;	-----------------------------------------
_TempController_mapTempToVoltageQuadratic:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_TempController_mapTempToVoltageQuadratic_temp_65536_194
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:18: float norm_temp = (temp - TEMP_MIN) / (TEMP_MAX - TEMP_MIN);
	mov	dptr,#_TempController_mapTempToVoltageQuadratic_temp_65536_194
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
	clr	a
	push	acc
	push	acc
	mov	a,#0xf0
	push	acc
	mov	a,#0x41
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x70
	push	acc
	mov	a,#0x41
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_TempController_mapTempToVoltageQuadratic_norm_temp_65536_195
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:21: if (norm_temp < 0.0f) norm_temp = 0.0f;
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
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00102$
	mov	dptr,#_TempController_mapTempToVoltageQuadratic_norm_temp_65536_195
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:22: if (norm_temp > 1.0f) norm_temp = 1.0f;
	mov	dptr,#_TempController_mapTempToVoltageQuadratic_norm_temp_65536_195
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
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3f
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00104$
	mov	dptr,#_TempController_mapTempToVoltageQuadratic_norm_temp_65536_195
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	a,#0x3f
	inc	dptr
	movx	@dptr,a
00104$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:24: voltage = VOUT_MIN + (VOUT_MAX - VOUT_MIN) * norm_temp * norm_temp;
	mov	dptr,#_TempController_mapTempToVoltageQuadratic_norm_temp_65536_195
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
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x999a
	mov	b,#0xd9
	mov	a,#0x40
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x66
	push	acc
	push	acc
	mov	a,#0xa6
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_TempController_mapTempToVoltageQuadratic_voltage_65536_195
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:25: if (voltage < VOUT_MIN) voltage = VOUT_MIN;
	mov	a,#0x66
	push	acc
	push	acc
	mov	a,#0xa6
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00106$
	mov	dptr,#_TempController_mapTempToVoltageQuadratic_voltage_65536_195
	mov	a,#0x66
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	a,#0xa6
	inc	dptr
	movx	@dptr,a
	mov	a,#0x40
	inc	dptr
	movx	@dptr,a
00106$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:26: if (voltage > VOUT_MAX) voltage = VOUT_MAX;
	mov	dptr,#_TempController_mapTempToVoltageQuadratic_voltage_65536_195
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
	mov	dptr,#0x0000
	mov	b,#0x40
	mov	a,#0x41
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00108$
	mov	dptr,#_TempController_mapTempToVoltageQuadratic_voltage_65536_195
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	a,#0x40
	inc	dptr
	movx	@dptr,a
	inc	a
	inc	dptr
	movx	@dptr,a
00108$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:27: return voltage;
	mov	dptr,#_TempController_mapTempToVoltageQuadratic_voltage_65536_195
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:28: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TempController_mapTempToRPM'
;------------------------------------------------------------
;sloc0                     Allocated with name '_TempController_mapTempToRPM_sloc0_1_0'
;temp                      Allocated with name '_TempController_mapTempToRPM_temp_65536_196'
;norm                      Allocated with name '_TempController_mapTempToRPM_norm_65536_197'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:30: static uint32_t TempController_mapTempToRPM(float temp) {
;	-----------------------------------------
;	 function TempController_mapTempToRPM
;	-----------------------------------------
_TempController_mapTempToRPM:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_TempController_mapTempToRPM_temp_65536_196
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:31: float norm = (temp - TEMP_MIN) / (TEMP_MAX - TEMP_MIN);
	mov	dptr,#_TempController_mapTempToRPM_temp_65536_196
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
	clr	a
	push	acc
	push	acc
	mov	a,#0xf0
	push	acc
	mov	a,#0x41
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x70
	push	acc
	mov	a,#0x41
	push	acc
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:32: norm = (norm < 0.0f) ? 0.0f : (norm > 1.0f) ? 1.0f : norm;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	_TempController_mapTempToRPM_sloc0_1_0,dpl
	mov	(_TempController_mapTempToRPM_sloc0_1_0 + 1),dph
	mov	(_TempController_mapTempToRPM_sloc0_1_0 + 2),b
	mov	(_TempController_mapTempToRPM_sloc0_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,_TempController_mapTempToRPM_sloc0_1_0
	mov	dph,(_TempController_mapTempToRPM_sloc0_1_0 + 1)
	mov	b,(_TempController_mapTempToRPM_sloc0_1_0 + 2)
	mov	a,(_TempController_mapTempToRPM_sloc0_1_0 + 3)
	lcall	___fslt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	jz	00103$
	mov	r0,#0x00
	mov	r1,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
	sjmp	00104$
00103$:
	push	_TempController_mapTempToRPM_sloc0_1_0
	push	(_TempController_mapTempToRPM_sloc0_1_0 + 1)
	push	(_TempController_mapTempToRPM_sloc0_1_0 + 2)
	push	(_TempController_mapTempToRPM_sloc0_1_0 + 3)
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3f
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00105$
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x80
	mov	r7,#0x3f
	sjmp	00106$
00105$:
	mov	r4,_TempController_mapTempToRPM_sloc0_1_0
	mov	r5,(_TempController_mapTempToRPM_sloc0_1_0 + 1)
	mov	r6,(_TempController_mapTempToRPM_sloc0_1_0 + 2)
	mov	r7,(_TempController_mapTempToRPM_sloc0_1_0 + 3)
00106$:
	mov	ar0,r4
	mov	ar1,r5
	mov	ar2,r6
	mov	ar3,r7
00104$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:33: return (uint32_t)(RPM_TARGET_MIN + (RPM_TARGET_MAX - RPM_TARGET_MIN) * norm);
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dptr,#0x0000
	mov	b,#0xfa
	mov	a,#0x44
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x48
	push	acc
	mov	a,#0x44
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:34: }
	ljmp	___fs2ulong
;------------------------------------------------------------
;Allocation info for local variables in function 'TempController_begin'
;------------------------------------------------------------
;sloc0                     Allocated with name '_TempController_begin_sloc0_1_0'
;sloc1                     Allocated with name '_TempController_begin_sloc1_1_0'
;sensor                    Allocated with name '_TempController_begin_PARM_2'
;vc                        Allocated with name '_TempController_begin_PARM_3'
;tc                        Allocated with name '_TempController_begin_tc_65536_198'
;test_temp                 Allocated with name '_TempController_begin_test_temp_65537_200'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:57: void TempController_begin(TempController* tc, DS18B20* sensor, VoltageController* vc) {
;	-----------------------------------------
;	 function TempController_begin
;	-----------------------------------------
_TempController_begin:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_TempController_begin_tc_65536_198
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:58: tc->tempSensor = sensor;
	mov	dptr,#_TempController_begin_tc_65536_198
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_TempController_begin_PARM_2
	movx	a,@dptr
	mov	_TempController_begin_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_TempController_begin_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_TempController_begin_sloc0_1_0 + 2),a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_TempController_begin_sloc0_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_TempController_begin_sloc0_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_TempController_begin_sloc0_1_0 + 2)
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:59: tc->voltCtrl = vc;
	mov	a,#0x03
	add	a,r5
	mov	_TempController_begin_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_TempController_begin_sloc1_1_0 + 1),a
	mov	(_TempController_begin_sloc1_1_0 + 2),r7
	mov	dptr,#_TempController_begin_PARM_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,_TempController_begin_sloc1_1_0
	mov	dph,(_TempController_begin_sloc1_1_0 + 1)
	mov	b,(_TempController_begin_sloc1_1_0 + 2)
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:60: tc->current_temp = 25.0f;
	mov	a,#0x06
	add	a,r5
	mov	_TempController_begin_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_TempController_begin_sloc1_1_0 + 1),a
	mov	(_TempController_begin_sloc1_1_0 + 2),r7
	mov	dpl,_TempController_begin_sloc1_1_0
	mov	dph,(_TempController_begin_sloc1_1_0 + 1)
	mov	b,(_TempController_begin_sloc1_1_0 + 2)
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	mov	a,#0xc8
	lcall	__gptrput
	inc	dptr
	mov	a,#0x41
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:61: tc->target_rpm = RPM_TARGET_MIN;
	mov	a,#0x0a
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	mov	a,#0x20
	lcall	__gptrput
	inc	dptr
	mov	a,#0x03
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:62: tc->sensor_ready = false;
	mov	a,#0x0e
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:69: DS18B20_begin(tc->tempSensor);
	mov	dpl,_TempController_begin_sloc0_1_0
	mov	dph,(_TempController_begin_sloc0_1_0 + 1)
	mov	b,(_TempController_begin_sloc0_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_DS18B20_begin
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:72: delay(200);
	mov	dptr,#(0xc8&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:73: float test_temp = DS18B20_readTemperatureFast(tc->tempSensor);
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_DS18B20_readTemperatureFast
	mov	r1,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar2
	pop	ar3
	pop	ar4
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:74: if (test_temp != -999.0) {
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	clr	a
	push	acc
	mov	a,#0xc0
	push	acc
	mov	a,#0x79
	push	acc
	mov	a,#0xc4
	push	acc
	mov	dpl,r1
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fseq
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,dpl
	add	a,#0xff
	mov	_TempController_begin_sloc2_1_0,c
	jc	00103$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:75: tc->sensor_ready = true;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x01
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:76: tc->current_temp = test_temp;
	mov	dpl,_TempController_begin_sloc1_1_0
	mov	dph,(_TempController_begin_sloc1_1_0 + 1)
	mov	b,(_TempController_begin_sloc1_1_0 + 2)
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:79: }
	ljmp	__gptrput
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TempController_update'
;------------------------------------------------------------
;sloc0                     Allocated with name '_TempController_update_sloc0_1_0'
;sloc1                     Allocated with name '_TempController_update_sloc1_1_0'
;tc                        Allocated with name '_TempController_update_tc_65536_202'
;temp                      Allocated with name '_TempController_update_temp_65537_205'
;target_voltage            Allocated with name '_TempController_update_target_voltage_65538_207'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:81: bool TempController_update(TempController* tc) {
;	-----------------------------------------
;	 function TempController_update
;	-----------------------------------------
_TempController_update:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_TempController_update_tc_65536_202
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:82: if (!tc->sensor_ready) {
	mov	dptr,#_TempController_update_tc_65536_202
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0e
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:83: return false;
	jnz	00102$
	mov	dpl,a
	ret
00102$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:93: float temp = DS18B20_readTemperatureFast(tc->tempSensor);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_DS18B20_readTemperatureFast
	mov	_TempController_update_sloc0_1_0,dpl
	mov	(_TempController_update_sloc0_1_0 + 1),dph
	mov	(_TempController_update_sloc0_1_0 + 2),b
	mov	(_TempController_update_sloc0_1_0 + 3),a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:95: if (temp == -999.0) {
	clr	a
	push	acc
	mov	a,#0xc0
	push	acc
	mov	a,#0x79
	push	acc
	mov	a,#0xc4
	push	acc
	mov	dpl,_TempController_update_sloc0_1_0
	mov	dph,(_TempController_update_sloc0_1_0 + 1)
	mov	b,(_TempController_update_sloc0_1_0 + 2)
	mov	a,(_TempController_update_sloc0_1_0 + 3)
	lcall	___fseq
	mov	r0,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r0
	jz	00104$
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:96: return false;
	mov	dpl,#0x00
	ret
00104$:
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:99: tc->current_temp = temp;
	mov	a,#0x06
	add	a,r5
	mov	_TempController_update_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_TempController_update_sloc1_1_0 + 1),a
	mov	(_TempController_update_sloc1_1_0 + 2),r7
	mov	dpl,_TempController_update_sloc1_1_0
	mov	dph,(_TempController_update_sloc1_1_0 + 1)
	mov	b,(_TempController_update_sloc1_1_0 + 2)
	mov	a,_TempController_update_sloc0_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_TempController_update_sloc0_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_TempController_update_sloc0_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_TempController_update_sloc0_1_0 + 3)
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:105: target_voltage = TempController_mapTempToVoltageLinear(tc->current_temp);
	mov	dpl,_TempController_update_sloc0_1_0
	mov	dph,(_TempController_update_sloc0_1_0 + 1)
	mov	b,(_TempController_update_sloc0_1_0 + 2)
	mov	a,(_TempController_update_sloc0_1_0 + 3)
	push	ar7
	push	ar6
	push	ar5
	lcall	_TempController_mapTempToVoltageLinear
	mov	_TempController_update_sloc0_1_0,dpl
	mov	(_TempController_update_sloc0_1_0 + 1),dph
	mov	(_TempController_update_sloc0_1_0 + 2),b
	mov	(_TempController_update_sloc0_1_0 + 3),a
	pop	ar5
	pop	ar6
	pop	ar7
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:110: VoltageController_setVoltage(tc->voltCtrl, target_voltage);
	mov	a,#0x03
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
	mov	dptr,#_VoltageController_setVoltage_PARM_2
	mov	a,_TempController_update_sloc0_1_0
	movx	@dptr,a
	mov	a,(_TempController_update_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_TempController_update_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_TempController_update_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_VoltageController_setVoltage
	pop	ar5
	pop	ar6
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:112: tc->target_rpm = TempController_mapTempToRPM(tc->current_temp);
	mov	a,#0x0a
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,_TempController_update_sloc1_1_0
	mov	dph,(_TempController_update_sloc1_1_0 + 1)
	mov	b,(_TempController_update_sloc1_1_0 + 2)
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
	push	ar6
	push	ar5
	lcall	_TempController_mapTempToRPM
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
	lcall	__gptrput
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:114: return true;
	mov	dpl,#0x01
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:115: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TempController_isOverheat'
;------------------------------------------------------------
;tc                        Allocated with name '_TempController_isOverheat_tc_65536_208'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:117: bool TempController_isOverheat(const TempController* tc) {
;	-----------------------------------------
;	 function TempController_isOverheat
;	-----------------------------------------
_TempController_isOverheat:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_TempController_isOverheat_tc_65536_208
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:118: return (tc->current_temp >= TEMP_OVERHEAT);
	mov	dptr,#_TempController_isOverheat_tc_65536_208
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x06
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
	mov	r4,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x48
	push	acc
	mov	a,#0x42
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	___fslt
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,dpl
	add	a,#0xff
	cpl	c
	mov	_TempController_isOverheat_sloc0_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:119: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TempController_getTemperature'
;------------------------------------------------------------
;tc                        Allocated with name '_TempController_getTemperature_tc_65536_210'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:121: float TempController_getTemperature(const TempController* tc) {
;	-----------------------------------------
;	 function TempController_getTemperature
;	-----------------------------------------
_TempController_getTemperature:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_TempController_getTemperature_tc_65536_210
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:122: return tc->current_temp;
	mov	dptr,#_TempController_getTemperature_tc_65536_210
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x06
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:123: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TempController_getTargetRPM'
;------------------------------------------------------------
;tc                        Allocated with name '_TempController_getTargetRPM_tc_65536_212'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:125: uint32_t TempController_getTargetRPM(const TempController* tc) {
;	-----------------------------------------
;	 function TempController_getTargetRPM
;	-----------------------------------------
_TempController_getTargetRPM:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_TempController_getTargetRPM_tc_65536_212
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:126: return tc->target_rpm;
	mov	dptr,#_TempController_getTargetRPM_tc_65536_212
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0a
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
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:127: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TempController_isReady'
;------------------------------------------------------------
;tc                        Allocated with name '_TempController_isReady_tc_65536_214'
;------------------------------------------------------------
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:129: bool TempController_isReady(const TempController* tc) {
;	-----------------------------------------
;	 function TempController_isReady
;	-----------------------------------------
_TempController_isReady:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_TempController_isReady_tc_65536_214
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:130: return tc->sensor_ready;
	mov	dptr,#_TempController_isReady_tc_65536_214
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0e
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:131: }
	mov	dpl,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
