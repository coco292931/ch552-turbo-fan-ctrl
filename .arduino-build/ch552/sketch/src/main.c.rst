                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.2 #13407 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main2
                                     12 	.globl _read_adc_raw
                                     13 	.globl _USBController_begin
                                     14 	.globl _FanMonitor_getRPM
                                     15 	.globl _FanMonitor_updateRPM
                                     16 	.globl _FanMonitor_begin
                                     17 	.globl _TempController_isReady
                                     18 	.globl _TempController_getTemperature
                                     19 	.globl _TempController_update
                                     20 	.globl _TempController_begin
                                     21 	.globl _DS18B20_init
                                     22 	.globl _VoltageController_getTargetVoltage
                                     23 	.globl _VoltageController_updateVoltage
                                     24 	.globl _VoltageController_readVoltage
                                     25 	.globl _VoltageController_setVoltage
                                     26 	.globl _VoltageController_begin
                                     27 	.globl _USBSerial_write
                                     28 	.globl _delayMicroseconds
                                     29 	.globl _delay
                                     30 	.globl _millis
                                     31 	.globl _pinMode
                                     32 	.globl _UIF_BUS_RST
                                     33 	.globl _UIF_DETECT
                                     34 	.globl _UIF_TRANSFER
                                     35 	.globl _UIF_SUSPEND
                                     36 	.globl _UIF_HST_SOF
                                     37 	.globl _UIF_FIFO_OV
                                     38 	.globl _U_SIE_FREE
                                     39 	.globl _U_TOG_OK
                                     40 	.globl _U_IS_NAK
                                     41 	.globl _ADC_CHAN0
                                     42 	.globl _ADC_CHAN1
                                     43 	.globl _CMP_CHAN
                                     44 	.globl _ADC_START
                                     45 	.globl _ADC_IF
                                     46 	.globl _CMP_IF
                                     47 	.globl _CMPO
                                     48 	.globl _U1RI
                                     49 	.globl _U1TI
                                     50 	.globl _U1RB8
                                     51 	.globl _U1TB8
                                     52 	.globl _U1REN
                                     53 	.globl _U1SMOD
                                     54 	.globl _U1SM0
                                     55 	.globl _S0_R_FIFO
                                     56 	.globl _S0_T_FIFO
                                     57 	.globl _S0_FREE
                                     58 	.globl _S0_IF_BYTE
                                     59 	.globl _S0_IF_FIRST
                                     60 	.globl _S0_IF_OV
                                     61 	.globl _S0_FST_ACT
                                     62 	.globl _CP_RL2
                                     63 	.globl _C_T2
                                     64 	.globl _TR2
                                     65 	.globl _EXEN2
                                     66 	.globl _TCLK
                                     67 	.globl _RCLK
                                     68 	.globl _EXF2
                                     69 	.globl _CAP1F
                                     70 	.globl _TF2
                                     71 	.globl _RI
                                     72 	.globl _TI
                                     73 	.globl _RB8
                                     74 	.globl _TB8
                                     75 	.globl _REN
                                     76 	.globl _SM2
                                     77 	.globl _SM1
                                     78 	.globl _SM0
                                     79 	.globl _IT0
                                     80 	.globl _IE0
                                     81 	.globl _IT1
                                     82 	.globl _IE1
                                     83 	.globl _TR0
                                     84 	.globl _TF0
                                     85 	.globl _TR1
                                     86 	.globl _TF1
                                     87 	.globl _P3_0
                                     88 	.globl _P3_1
                                     89 	.globl _P3_2
                                     90 	.globl _P3_3
                                     91 	.globl _P3_4
                                     92 	.globl _P3_5
                                     93 	.globl _P3_6
                                     94 	.globl _P3_7
                                     95 	.globl _RXD
                                     96 	.globl _PWM1_
                                     97 	.globl _TXD
                                     98 	.globl _PWM2_
                                     99 	.globl _AIN3
                                    100 	.globl _VBUS1
                                    101 	.globl _INT0
                                    102 	.globl _TXD1_
                                    103 	.globl _INT1
                                    104 	.globl _T0
                                    105 	.globl _RXD1_
                                    106 	.globl _PWM2
                                    107 	.globl _T1
                                    108 	.globl _UDP
                                    109 	.globl _UDM
                                    110 	.globl _P1_0
                                    111 	.globl _P1_1
                                    112 	.globl _P1_2
                                    113 	.globl _P1_3
                                    114 	.globl _P1_4
                                    115 	.globl _P1_5
                                    116 	.globl _P1_6
                                    117 	.globl _P1_7
                                    118 	.globl _TIN0
                                    119 	.globl _CAP1
                                    120 	.globl _T2
                                    121 	.globl _AIN0
                                    122 	.globl _VBUS2
                                    123 	.globl _TIN1
                                    124 	.globl _CAP2
                                    125 	.globl _T2EX
                                    126 	.globl _RXD_
                                    127 	.globl _TXD_
                                    128 	.globl _AIN1
                                    129 	.globl _UCC1
                                    130 	.globl _TIN2
                                    131 	.globl _SCS
                                    132 	.globl _CAP1_
                                    133 	.globl _T2_
                                    134 	.globl _AIN2
                                    135 	.globl _UCC2
                                    136 	.globl _TIN3
                                    137 	.globl _PWM1
                                    138 	.globl _MOSI
                                    139 	.globl _TIN4
                                    140 	.globl _RXD1
                                    141 	.globl _MISO
                                    142 	.globl _TIN5
                                    143 	.globl _TXD1
                                    144 	.globl _SCK
                                    145 	.globl _IE_SPI0
                                    146 	.globl _IE_TKEY
                                    147 	.globl _IE_USB
                                    148 	.globl _IE_ADC
                                    149 	.globl _IE_UART1
                                    150 	.globl _IE_PWMX
                                    151 	.globl _IE_GPIO
                                    152 	.globl _IE_WDOG
                                    153 	.globl _PX0
                                    154 	.globl _PT0
                                    155 	.globl _PX1
                                    156 	.globl _PT1
                                    157 	.globl _PS
                                    158 	.globl _PT2
                                    159 	.globl _PL_FLAG
                                    160 	.globl _PH_FLAG
                                    161 	.globl _EX0
                                    162 	.globl _ET0
                                    163 	.globl _EX1
                                    164 	.globl _ET1
                                    165 	.globl _ES
                                    166 	.globl _ET2
                                    167 	.globl _E_DIS
                                    168 	.globl _EA
                                    169 	.globl _P
                                    170 	.globl _F1
                                    171 	.globl _OV
                                    172 	.globl _RS0
                                    173 	.globl _RS1
                                    174 	.globl _F0
                                    175 	.globl _AC
                                    176 	.globl _CY
                                    177 	.globl _UEP1_DMA_H
                                    178 	.globl _UEP1_DMA_L
                                    179 	.globl _UEP1_DMA
                                    180 	.globl _UEP0_DMA_H
                                    181 	.globl _UEP0_DMA_L
                                    182 	.globl _UEP0_DMA
                                    183 	.globl _UEP2_3_MOD
                                    184 	.globl _UEP4_1_MOD
                                    185 	.globl _UEP3_DMA_H
                                    186 	.globl _UEP3_DMA_L
                                    187 	.globl _UEP3_DMA
                                    188 	.globl _UEP2_DMA_H
                                    189 	.globl _UEP2_DMA_L
                                    190 	.globl _UEP2_DMA
                                    191 	.globl _USB_DEV_AD
                                    192 	.globl _USB_CTRL
                                    193 	.globl _USB_INT_EN
                                    194 	.globl _UEP4_T_LEN
                                    195 	.globl _UEP4_CTRL
                                    196 	.globl _UEP0_T_LEN
                                    197 	.globl _UEP0_CTRL
                                    198 	.globl _USB_RX_LEN
                                    199 	.globl _USB_MIS_ST
                                    200 	.globl _USB_INT_ST
                                    201 	.globl _USB_INT_FG
                                    202 	.globl _UEP3_T_LEN
                                    203 	.globl _UEP3_CTRL
                                    204 	.globl _UEP2_T_LEN
                                    205 	.globl _UEP2_CTRL
                                    206 	.globl _UEP1_T_LEN
                                    207 	.globl _UEP1_CTRL
                                    208 	.globl _UDEV_CTRL
                                    209 	.globl _USB_C_CTRL
                                    210 	.globl _TKEY_DATH
                                    211 	.globl _TKEY_DATL
                                    212 	.globl _TKEY_DAT
                                    213 	.globl _TKEY_CTRL
                                    214 	.globl _ADC_DATA
                                    215 	.globl _ADC_CFG
                                    216 	.globl _ADC_CTRL
                                    217 	.globl _SBAUD1
                                    218 	.globl _SBUF1
                                    219 	.globl _SCON1
                                    220 	.globl _SPI0_SETUP
                                    221 	.globl _SPI0_CK_SE
                                    222 	.globl _SPI0_CTRL
                                    223 	.globl _SPI0_DATA
                                    224 	.globl _SPI0_STAT
                                    225 	.globl _PWM_CK_SE
                                    226 	.globl _PWM_CTRL
                                    227 	.globl _PWM_DATA1
                                    228 	.globl _PWM_DATA2
                                    229 	.globl _T2CAP1H
                                    230 	.globl _T2CAP1L
                                    231 	.globl _T2CAP1
                                    232 	.globl _TH2
                                    233 	.globl _TL2
                                    234 	.globl _T2COUNT
                                    235 	.globl _RCAP2H
                                    236 	.globl _RCAP2L
                                    237 	.globl _RCAP2
                                    238 	.globl _T2MOD
                                    239 	.globl _T2CON
                                    240 	.globl _SBUF
                                    241 	.globl _SCON
                                    242 	.globl _TH1
                                    243 	.globl _TH0
                                    244 	.globl _TL1
                                    245 	.globl _TL0
                                    246 	.globl _TMOD
                                    247 	.globl _TCON
                                    248 	.globl _XBUS_AUX
                                    249 	.globl _PIN_FUNC
                                    250 	.globl _P3_DIR_PU
                                    251 	.globl _P3_MOD_OC
                                    252 	.globl _P3
                                    253 	.globl _P2
                                    254 	.globl _P1_DIR_PU
                                    255 	.globl _P1_MOD_OC
                                    256 	.globl _P1
                                    257 	.globl _ROM_CTRL
                                    258 	.globl _ROM_DATA_H
                                    259 	.globl _ROM_DATA_L
                                    260 	.globl _ROM_DATA
                                    261 	.globl _ROM_ADDR_H
                                    262 	.globl _ROM_ADDR_L
                                    263 	.globl _ROM_ADDR
                                    264 	.globl _GPIO_IE
                                    265 	.globl _IP_EX
                                    266 	.globl _IE_EX
                                    267 	.globl _IP
                                    268 	.globl _IE
                                    269 	.globl _WDOG_COUNT
                                    270 	.globl _RESET_KEEP
                                    271 	.globl _WAKE_CTRL
                                    272 	.globl _CLOCK_CFG
                                    273 	.globl _PCON
                                    274 	.globl _GLOBAL_CFG
                                    275 	.globl _SAFE_MOD
                                    276 	.globl _DPH
                                    277 	.globl _DPL
                                    278 	.globl _SP
                                    279 	.globl _B
                                    280 	.globl _ACC
                                    281 	.globl _PSW
                                    282 	.globl _usb_was_connected
                                    283 	.globl _stall_retry_count
                                    284 	.globl _stall_detect_time
                                    285 	.globl _last_voltage_check
                                    286 	.globl _last_status_send
                                    287 	.globl _last_temp_update
                                    288 	.globl _sysStatus
                                    289 	.globl _usbCtrl
                                    290 	.globl _fanMonitor
                                    291 	.globl _tempCtrl
                                    292 	.globl _voltageCtrl
                                    293 	.globl _tempSensor
                                    294 	.globl _setup
                                    295 	.globl _loop
                                    296 ;--------------------------------------------------------
                                    297 ; special function registers
                                    298 ;--------------------------------------------------------
                                    299 	.area RSEG    (ABS,DATA)
      000000                        300 	.org 0x0000
                           0000D0   301 _PSW	=	0x00d0
                           0000E0   302 _ACC	=	0x00e0
                           0000F0   303 _B	=	0x00f0
                           000081   304 _SP	=	0x0081
                           000082   305 _DPL	=	0x0082
                           000083   306 _DPH	=	0x0083
                           0000A1   307 _SAFE_MOD	=	0x00a1
                           0000B1   308 _GLOBAL_CFG	=	0x00b1
                           000087   309 _PCON	=	0x0087
                           0000B9   310 _CLOCK_CFG	=	0x00b9
                           0000A9   311 _WAKE_CTRL	=	0x00a9
                           0000FE   312 _RESET_KEEP	=	0x00fe
                           0000FF   313 _WDOG_COUNT	=	0x00ff
                           0000A8   314 _IE	=	0x00a8
                           0000B8   315 _IP	=	0x00b8
                           0000E8   316 _IE_EX	=	0x00e8
                           0000E9   317 _IP_EX	=	0x00e9
                           0000C7   318 _GPIO_IE	=	0x00c7
                           008584   319 _ROM_ADDR	=	0x8584
                           000084   320 _ROM_ADDR_L	=	0x0084
                           000085   321 _ROM_ADDR_H	=	0x0085
                           008F8E   322 _ROM_DATA	=	0x8f8e
                           00008E   323 _ROM_DATA_L	=	0x008e
                           00008F   324 _ROM_DATA_H	=	0x008f
                           000086   325 _ROM_CTRL	=	0x0086
                           000090   326 _P1	=	0x0090
                           000092   327 _P1_MOD_OC	=	0x0092
                           000093   328 _P1_DIR_PU	=	0x0093
                           0000A0   329 _P2	=	0x00a0
                           0000B0   330 _P3	=	0x00b0
                           000096   331 _P3_MOD_OC	=	0x0096
                           000097   332 _P3_DIR_PU	=	0x0097
                           0000C6   333 _PIN_FUNC	=	0x00c6
                           0000A2   334 _XBUS_AUX	=	0x00a2
                           000088   335 _TCON	=	0x0088
                           000089   336 _TMOD	=	0x0089
                           00008A   337 _TL0	=	0x008a
                           00008B   338 _TL1	=	0x008b
                           00008C   339 _TH0	=	0x008c
                           00008D   340 _TH1	=	0x008d
                           000098   341 _SCON	=	0x0098
                           000099   342 _SBUF	=	0x0099
                           0000C8   343 _T2CON	=	0x00c8
                           0000C9   344 _T2MOD	=	0x00c9
                           00CBCA   345 _RCAP2	=	0xcbca
                           0000CA   346 _RCAP2L	=	0x00ca
                           0000CB   347 _RCAP2H	=	0x00cb
                           00CDCC   348 _T2COUNT	=	0xcdcc
                           0000CC   349 _TL2	=	0x00cc
                           0000CD   350 _TH2	=	0x00cd
                           00CFCE   351 _T2CAP1	=	0xcfce
                           0000CE   352 _T2CAP1L	=	0x00ce
                           0000CF   353 _T2CAP1H	=	0x00cf
                           00009B   354 _PWM_DATA2	=	0x009b
                           00009C   355 _PWM_DATA1	=	0x009c
                           00009D   356 _PWM_CTRL	=	0x009d
                           00009E   357 _PWM_CK_SE	=	0x009e
                           0000F8   358 _SPI0_STAT	=	0x00f8
                           0000F9   359 _SPI0_DATA	=	0x00f9
                           0000FA   360 _SPI0_CTRL	=	0x00fa
                           0000FB   361 _SPI0_CK_SE	=	0x00fb
                           0000FC   362 _SPI0_SETUP	=	0x00fc
                           0000C0   363 _SCON1	=	0x00c0
                           0000C1   364 _SBUF1	=	0x00c1
                           0000C2   365 _SBAUD1	=	0x00c2
                           000080   366 _ADC_CTRL	=	0x0080
                           00009A   367 _ADC_CFG	=	0x009a
                           00009F   368 _ADC_DATA	=	0x009f
                           0000C3   369 _TKEY_CTRL	=	0x00c3
                           00C5C4   370 _TKEY_DAT	=	0xc5c4
                           0000C4   371 _TKEY_DATL	=	0x00c4
                           0000C5   372 _TKEY_DATH	=	0x00c5
                           000091   373 _USB_C_CTRL	=	0x0091
                           0000D1   374 _UDEV_CTRL	=	0x00d1
                           0000D2   375 _UEP1_CTRL	=	0x00d2
                           0000D3   376 _UEP1_T_LEN	=	0x00d3
                           0000D4   377 _UEP2_CTRL	=	0x00d4
                           0000D5   378 _UEP2_T_LEN	=	0x00d5
                           0000D6   379 _UEP3_CTRL	=	0x00d6
                           0000D7   380 _UEP3_T_LEN	=	0x00d7
                           0000D8   381 _USB_INT_FG	=	0x00d8
                           0000D9   382 _USB_INT_ST	=	0x00d9
                           0000DA   383 _USB_MIS_ST	=	0x00da
                           0000DB   384 _USB_RX_LEN	=	0x00db
                           0000DC   385 _UEP0_CTRL	=	0x00dc
                           0000DD   386 _UEP0_T_LEN	=	0x00dd
                           0000DE   387 _UEP4_CTRL	=	0x00de
                           0000DF   388 _UEP4_T_LEN	=	0x00df
                           0000E1   389 _USB_INT_EN	=	0x00e1
                           0000E2   390 _USB_CTRL	=	0x00e2
                           0000E3   391 _USB_DEV_AD	=	0x00e3
                           00E5E4   392 _UEP2_DMA	=	0xe5e4
                           0000E4   393 _UEP2_DMA_L	=	0x00e4
                           0000E5   394 _UEP2_DMA_H	=	0x00e5
                           00E7E6   395 _UEP3_DMA	=	0xe7e6
                           0000E6   396 _UEP3_DMA_L	=	0x00e6
                           0000E7   397 _UEP3_DMA_H	=	0x00e7
                           0000EA   398 _UEP4_1_MOD	=	0x00ea
                           0000EB   399 _UEP2_3_MOD	=	0x00eb
                           00EDEC   400 _UEP0_DMA	=	0xedec
                           0000EC   401 _UEP0_DMA_L	=	0x00ec
                           0000ED   402 _UEP0_DMA_H	=	0x00ed
                           00EFEE   403 _UEP1_DMA	=	0xefee
                           0000EE   404 _UEP1_DMA_L	=	0x00ee
                           0000EF   405 _UEP1_DMA_H	=	0x00ef
                                    406 ;--------------------------------------------------------
                                    407 ; special function bits
                                    408 ;--------------------------------------------------------
                                    409 	.area RSEG    (ABS,DATA)
      000000                        410 	.org 0x0000
                           0000D7   411 _CY	=	0x00d7
                           0000D6   412 _AC	=	0x00d6
                           0000D5   413 _F0	=	0x00d5
                           0000D4   414 _RS1	=	0x00d4
                           0000D3   415 _RS0	=	0x00d3
                           0000D2   416 _OV	=	0x00d2
                           0000D1   417 _F1	=	0x00d1
                           0000D0   418 _P	=	0x00d0
                           0000AF   419 _EA	=	0x00af
                           0000AE   420 _E_DIS	=	0x00ae
                           0000AD   421 _ET2	=	0x00ad
                           0000AC   422 _ES	=	0x00ac
                           0000AB   423 _ET1	=	0x00ab
                           0000AA   424 _EX1	=	0x00aa
                           0000A9   425 _ET0	=	0x00a9
                           0000A8   426 _EX0	=	0x00a8
                           0000BF   427 _PH_FLAG	=	0x00bf
                           0000BE   428 _PL_FLAG	=	0x00be
                           0000BD   429 _PT2	=	0x00bd
                           0000BC   430 _PS	=	0x00bc
                           0000BB   431 _PT1	=	0x00bb
                           0000BA   432 _PX1	=	0x00ba
                           0000B9   433 _PT0	=	0x00b9
                           0000B8   434 _PX0	=	0x00b8
                           0000EF   435 _IE_WDOG	=	0x00ef
                           0000EE   436 _IE_GPIO	=	0x00ee
                           0000ED   437 _IE_PWMX	=	0x00ed
                           0000EC   438 _IE_UART1	=	0x00ec
                           0000EB   439 _IE_ADC	=	0x00eb
                           0000EA   440 _IE_USB	=	0x00ea
                           0000E9   441 _IE_TKEY	=	0x00e9
                           0000E8   442 _IE_SPI0	=	0x00e8
                           000097   443 _SCK	=	0x0097
                           000097   444 _TXD1	=	0x0097
                           000097   445 _TIN5	=	0x0097
                           000096   446 _MISO	=	0x0096
                           000096   447 _RXD1	=	0x0096
                           000096   448 _TIN4	=	0x0096
                           000095   449 _MOSI	=	0x0095
                           000095   450 _PWM1	=	0x0095
                           000095   451 _TIN3	=	0x0095
                           000095   452 _UCC2	=	0x0095
                           000095   453 _AIN2	=	0x0095
                           000094   454 _T2_	=	0x0094
                           000094   455 _CAP1_	=	0x0094
                           000094   456 _SCS	=	0x0094
                           000094   457 _TIN2	=	0x0094
                           000094   458 _UCC1	=	0x0094
                           000094   459 _AIN1	=	0x0094
                           000093   460 _TXD_	=	0x0093
                           000092   461 _RXD_	=	0x0092
                           000091   462 _T2EX	=	0x0091
                           000091   463 _CAP2	=	0x0091
                           000091   464 _TIN1	=	0x0091
                           000091   465 _VBUS2	=	0x0091
                           000091   466 _AIN0	=	0x0091
                           000090   467 _T2	=	0x0090
                           000090   468 _CAP1	=	0x0090
                           000090   469 _TIN0	=	0x0090
                           000097   470 _P1_7	=	0x0097
                           000096   471 _P1_6	=	0x0096
                           000095   472 _P1_5	=	0x0095
                           000094   473 _P1_4	=	0x0094
                           000093   474 _P1_3	=	0x0093
                           000092   475 _P1_2	=	0x0092
                           000091   476 _P1_1	=	0x0091
                           000090   477 _P1_0	=	0x0090
                           0000B7   478 _UDM	=	0x00b7
                           0000B6   479 _UDP	=	0x00b6
                           0000B5   480 _T1	=	0x00b5
                           0000B4   481 _PWM2	=	0x00b4
                           0000B4   482 _RXD1_	=	0x00b4
                           0000B4   483 _T0	=	0x00b4
                           0000B3   484 _INT1	=	0x00b3
                           0000B2   485 _TXD1_	=	0x00b2
                           0000B2   486 _INT0	=	0x00b2
                           0000B2   487 _VBUS1	=	0x00b2
                           0000B2   488 _AIN3	=	0x00b2
                           0000B1   489 _PWM2_	=	0x00b1
                           0000B1   490 _TXD	=	0x00b1
                           0000B0   491 _PWM1_	=	0x00b0
                           0000B0   492 _RXD	=	0x00b0
                           0000B7   493 _P3_7	=	0x00b7
                           0000B6   494 _P3_6	=	0x00b6
                           0000B5   495 _P3_5	=	0x00b5
                           0000B4   496 _P3_4	=	0x00b4
                           0000B3   497 _P3_3	=	0x00b3
                           0000B2   498 _P3_2	=	0x00b2
                           0000B1   499 _P3_1	=	0x00b1
                           0000B0   500 _P3_0	=	0x00b0
                           00008F   501 _TF1	=	0x008f
                           00008E   502 _TR1	=	0x008e
                           00008D   503 _TF0	=	0x008d
                           00008C   504 _TR0	=	0x008c
                           00008B   505 _IE1	=	0x008b
                           00008A   506 _IT1	=	0x008a
                           000089   507 _IE0	=	0x0089
                           000088   508 _IT0	=	0x0088
                           00009F   509 _SM0	=	0x009f
                           00009E   510 _SM1	=	0x009e
                           00009D   511 _SM2	=	0x009d
                           00009C   512 _REN	=	0x009c
                           00009B   513 _TB8	=	0x009b
                           00009A   514 _RB8	=	0x009a
                           000099   515 _TI	=	0x0099
                           000098   516 _RI	=	0x0098
                           0000CF   517 _TF2	=	0x00cf
                           0000CF   518 _CAP1F	=	0x00cf
                           0000CE   519 _EXF2	=	0x00ce
                           0000CD   520 _RCLK	=	0x00cd
                           0000CC   521 _TCLK	=	0x00cc
                           0000CB   522 _EXEN2	=	0x00cb
                           0000CA   523 _TR2	=	0x00ca
                           0000C9   524 _C_T2	=	0x00c9
                           0000C8   525 _CP_RL2	=	0x00c8
                           0000FF   526 _S0_FST_ACT	=	0x00ff
                           0000FE   527 _S0_IF_OV	=	0x00fe
                           0000FD   528 _S0_IF_FIRST	=	0x00fd
                           0000FC   529 _S0_IF_BYTE	=	0x00fc
                           0000FB   530 _S0_FREE	=	0x00fb
                           0000FA   531 _S0_T_FIFO	=	0x00fa
                           0000F8   532 _S0_R_FIFO	=	0x00f8
                           0000C7   533 _U1SM0	=	0x00c7
                           0000C5   534 _U1SMOD	=	0x00c5
                           0000C4   535 _U1REN	=	0x00c4
                           0000C3   536 _U1TB8	=	0x00c3
                           0000C2   537 _U1RB8	=	0x00c2
                           0000C1   538 _U1TI	=	0x00c1
                           0000C0   539 _U1RI	=	0x00c0
                           000087   540 _CMPO	=	0x0087
                           000086   541 _CMP_IF	=	0x0086
                           000085   542 _ADC_IF	=	0x0085
                           000084   543 _ADC_START	=	0x0084
                           000083   544 _CMP_CHAN	=	0x0083
                           000081   545 _ADC_CHAN1	=	0x0081
                           000080   546 _ADC_CHAN0	=	0x0080
                           0000DF   547 _U_IS_NAK	=	0x00df
                           0000DE   548 _U_TOG_OK	=	0x00de
                           0000DD   549 _U_SIE_FREE	=	0x00dd
                           0000DC   550 _UIF_FIFO_OV	=	0x00dc
                           0000DB   551 _UIF_HST_SOF	=	0x00db
                           0000DA   552 _UIF_SUSPEND	=	0x00da
                           0000D9   553 _UIF_TRANSFER	=	0x00d9
                           0000D8   554 _UIF_DETECT	=	0x00d8
                           0000D8   555 _UIF_BUS_RST	=	0x00d8
                                    556 ;--------------------------------------------------------
                                    557 ; overlayable register banks
                                    558 ;--------------------------------------------------------
                                    559 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        560 	.ds 8
                                    561 ;--------------------------------------------------------
                                    562 ; internal ram data
                                    563 ;--------------------------------------------------------
                                    564 	.area DSEG    (DATA)
      000010                        565 _main2_sloc0_1_0:
      000010                        566 	.ds 4
      000014                        567 _main2_sloc1_1_0:
      000014                        568 	.ds 4
                                    569 ;--------------------------------------------------------
                                    570 ; overlayable items in internal ram
                                    571 ;--------------------------------------------------------
                                    572 ;--------------------------------------------------------
                                    573 ; indirectly addressable internal ram data
                                    574 ;--------------------------------------------------------
                                    575 	.area ISEG    (DATA)
                                    576 ;--------------------------------------------------------
                                    577 ; absolute internal ram data
                                    578 ;--------------------------------------------------------
                                    579 	.area IABS    (ABS,DATA)
                                    580 	.area IABS    (ABS,DATA)
                                    581 ;--------------------------------------------------------
                                    582 ; bit data
                                    583 ;--------------------------------------------------------
                                    584 	.area BSEG    (BIT)
                                    585 ;--------------------------------------------------------
                                    586 ; paged external ram data
                                    587 ;--------------------------------------------------------
                                    588 	.area PSEG    (PAG,XDATA)
                                    589 ;--------------------------------------------------------
                                    590 ; uninitialized external ram data
                                    591 ;--------------------------------------------------------
                                    592 	.area XSEG    (XDATA)
      0000CC                        593 _tempSensor::
      0000CC                        594 	.ds 1
      0000CD                        595 _voltageCtrl::
      0000CD                        596 	.ds 12
      0000D9                        597 _tempCtrl::
      0000D9                        598 	.ds 15
      0000E8                        599 _fanMonitor::
      0000E8                        600 	.ds 15
      0000F7                        601 _usbCtrl::
      0000F7                        602 	.ds 99
      00015A                        603 _sysStatus::
      00015A                        604 	.ds 23
      000171                        605 _read_adc_raw_channel_65536_218:
      000171                        606 	.ds 1
      000172                        607 _usb_write_str_s_65536_233:
      000172                        608 	.ds 3
      000175                        609 _usb_write_hex4_v_65536_236:
      000175                        610 	.ds 1
      000176                        611 _usb_write_hex8_v_65536_238:
      000176                        612 	.ds 1
      000177                        613 _usb_write_hex32_v_65536_240:
      000177                        614 	.ds 4
      00017B                        615 _main2_last_report_65536_243:
      00017B                        616 	.ds 4
      00017F                        617 _main2_temp_c_65536_243:
      00017F                        618 	.ds 4
      000183                        619 _main2_temp_bits_65536_243:
      000183                        620 	.ds 4
      000187                        621 _main2_actual_bits_65536_243:
      000187                        622 	.ds 4
      00018B                        623 _main2_expect_bits_65536_243:
      00018B                        624 	.ds 4
                                    625 ;--------------------------------------------------------
                                    626 ; absolute external ram data
                                    627 ;--------------------------------------------------------
                                    628 	.area XABS    (ABS,XDATA)
                                    629 ;--------------------------------------------------------
                                    630 ; initialized external ram data
                                    631 ;--------------------------------------------------------
                                    632 	.area XISEG   (XDATA)
      00024D                        633 _last_temp_update::
      00024D                        634 	.ds 4
      000251                        635 _last_status_send::
      000251                        636 	.ds 4
      000255                        637 _last_voltage_check::
      000255                        638 	.ds 4
      000259                        639 _stall_detect_time::
      000259                        640 	.ds 4
      00025D                        641 _stall_retry_count::
      00025D                        642 	.ds 1
      00025E                        643 _usb_was_connected::
      00025E                        644 	.ds 1
                                    645 	.area HOME    (CODE)
                                    646 	.area GSINIT0 (CODE)
                                    647 	.area GSINIT1 (CODE)
                                    648 	.area GSINIT2 (CODE)
                                    649 	.area GSINIT3 (CODE)
                                    650 	.area GSINIT4 (CODE)
                                    651 	.area GSINIT5 (CODE)
                                    652 	.area GSINIT  (CODE)
                                    653 	.area GSFINAL (CODE)
                                    654 	.area CSEG    (CODE)
                                    655 ;--------------------------------------------------------
                                    656 ; global & static initialisations
                                    657 ;--------------------------------------------------------
                                    658 	.area HOME    (CODE)
                                    659 	.area GSINIT  (CODE)
                                    660 	.area GSFINAL (CODE)
                                    661 	.area GSINIT  (CODE)
                                    662 ;------------------------------------------------------------
                                    663 ;Allocation info for local variables in function 'main2'
                                    664 ;------------------------------------------------------------
                                    665 ;sloc0                     Allocated with name '_main2_sloc0_1_0'
                                    666 ;sloc1                     Allocated with name '_main2_sloc1_1_0'
                                    667 ;now                       Allocated with name '_main2_now_65536_243'
                                    668 ;last_report               Allocated with name '_main2_last_report_65536_243'
                                    669 ;temp_c                    Allocated with name '_main2_temp_c_65536_243'
                                    670 ;temp_ok                   Allocated with name '_main2_temp_ok_65536_243'
                                    671 ;actual_v                  Allocated with name '_main2_actual_v_65536_243'
                                    672 ;target_v                  Allocated with name '_main2_target_v_65536_243'
                                    673 ;rpm                       Allocated with name '_main2_rpm_65536_243'
                                    674 ;temp_bits                 Allocated with name '_main2_temp_bits_65536_243'
                                    675 ;actual_bits               Allocated with name '_main2_actual_bits_65536_243'
                                    676 ;expect_bits               Allocated with name '_main2_expect_bits_65536_243'
                                    677 ;------------------------------------------------------------
                                    678 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:206: static unsigned long last_report = 0;
      0000C4 90 01 7B         [24]  679 	mov	dptr,#_main2_last_report_65536_243
      0000C7 E4               [12]  680 	clr	a
      0000C8 F0               [24]  681 	movx	@dptr,a
      0000C9 A3               [24]  682 	inc	dptr
      0000CA F0               [24]  683 	movx	@dptr,a
      0000CB A3               [24]  684 	inc	dptr
      0000CC F0               [24]  685 	movx	@dptr,a
      0000CD A3               [24]  686 	inc	dptr
      0000CE F0               [24]  687 	movx	@dptr,a
                                    688 ;--------------------------------------------------------
                                    689 ; Home
                                    690 ;--------------------------------------------------------
                                    691 	.area HOME    (CODE)
                                    692 	.area HOME    (CODE)
                                    693 ;--------------------------------------------------------
                                    694 ; code
                                    695 ;--------------------------------------------------------
                                    696 	.area CSEG    (CODE)
                                    697 ;------------------------------------------------------------
                                    698 ;Allocation info for local variables in function 'read_adc_raw'
                                    699 ;------------------------------------------------------------
                                    700 ;channel                   Allocated with name '_read_adc_raw_channel_65536_218'
                                    701 ;------------------------------------------------------------
                                    702 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:60: uint8_t read_adc_raw(uint8_t channel) {
                                    703 ;	-----------------------------------------
                                    704 ;	 function read_adc_raw
                                    705 ;	-----------------------------------------
      00098E                        706 _read_adc_raw:
                           000007   707 	ar7 = 0x07
                           000006   708 	ar6 = 0x06
                           000005   709 	ar5 = 0x05
                           000004   710 	ar4 = 0x04
                           000003   711 	ar3 = 0x03
                           000002   712 	ar2 = 0x02
                           000001   713 	ar1 = 0x01
                           000000   714 	ar0 = 0x00
      00098E E5 82            [12]  715 	mov	a,dpl
      000990 90 01 71         [24]  716 	mov	dptr,#_read_adc_raw_channel_65536_218
      000993 F0               [24]  717 	movx	@dptr,a
                                    718 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:63: ADC_CTRL = channel & 0x03;
      000994 E0               [24]  719 	movx	a,@dptr
      000995 54 03            [12]  720 	anl	a,#0x03
      000997 F5 80            [12]  721 	mov	_ADC_CTRL,a
                                    722 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:66: delayMicroseconds(20);
      000999 90 00 14         [24]  723 	mov	dptr,#0x0014
      00099C 12 24 E5         [24]  724 	lcall	_delayMicroseconds
                                    725 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:69: ADC_IF = 0;
                                    726 ;	assignBit
      00099F C2 85            [12]  727 	clr	_ADC_IF
                                    728 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:72: ADC_START = 1;
                                    729 ;	assignBit
      0009A1 D2 84            [12]  730 	setb	_ADC_START
                                    731 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:75: while (ADC_START == 1);
      0009A3                        732 00101$:
      0009A3 20 84 FD         [24]  733 	jb	_ADC_START,00101$
                                    734 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:77: return ADC_DATA;
      0009A6 85 9F 82         [24]  735 	mov	dpl,_ADC_DATA
                                    736 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:78: }
      0009A9 22               [24]  737 	ret
                                    738 ;------------------------------------------------------------
                                    739 ;Allocation info for local variables in function 'setup'
                                    740 ;------------------------------------------------------------
                                    741 ;init_voltage              Allocated with name '_setup_init_voltage_65537_221'
                                    742 ;------------------------------------------------------------
                                    743 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:80: void setup() {
                                    744 ;	-----------------------------------------
                                    745 ;	 function setup
                                    746 ;	-----------------------------------------
      0009AA                        747 _setup:
                                    748 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:105: pinMode(15, INPUT_PULLUP);
      0009AA 90 01 FD         [24]  749 	mov	dptr,#_pinMode_PARM_2
      0009AD 74 02            [12]  750 	mov	a,#0x02
      0009AF F0               [24]  751 	movx	@dptr,a
      0009B0 75 82 0F         [24]  752 	mov	dpl,#0x0f
      0009B3 12 21 7E         [24]  753 	lcall	_pinMode
                                    754 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:108: DS18B20_init(&tempSensor, PIN_TEMP_SENSOR);
      0009B6 90 00 AF         [24]  755 	mov	dptr,#_DS18B20_init_PARM_2
      0009B9 74 11            [12]  756 	mov	a,#0x11
      0009BB F0               [24]  757 	movx	@dptr,a
      0009BC 90 00 CC         [24]  758 	mov	dptr,#_tempSensor
      0009BF 75 F0 00         [24]  759 	mov	b,#0x00
      0009C2 12 03 77         [24]  760 	lcall	_DS18B20_init
                                    761 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:113: USBController_begin(&usbCtrl);
      0009C5 90 00 F7         [24]  762 	mov	dptr,#_usbCtrl
      0009C8 75 F0 00         [24]  763 	mov	b,#0x00
      0009CB 12 15 7E         [24]  764 	lcall	_USBController_begin
                                    765 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:114: delay(500);
      0009CE 90 01 F4         [24]  766 	mov	dptr,#0x01f4
      0009D1 E4               [12]  767 	clr	a
      0009D2 F5 F0            [12]  768 	mov	b,a
      0009D4 12 24 34         [24]  769 	lcall	_delay
                                    770 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:123: VoltageController_begin(&voltageCtrl, PIN_PWM_OUTPUT, PIN_VOLTAGE_ADC);
      0009D7 90 01 D3         [24]  771 	mov	dptr,#_VoltageController_begin_PARM_2
      0009DA 74 22            [12]  772 	mov	a,#0x22
      0009DC F0               [24]  773 	movx	@dptr,a
      0009DD 90 01 D4         [24]  774 	mov	dptr,#_VoltageController_begin_PARM_3
      0009E0 74 0E            [12]  775 	mov	a,#0x0e
      0009E2 F0               [24]  776 	movx	@dptr,a
      0009E3 90 00 CD         [24]  777 	mov	dptr,#_voltageCtrl
      0009E6 75 F0 00         [24]  778 	mov	b,#0x00
      0009E9 12 18 C8         [24]  779 	lcall	_VoltageController_begin
                                    780 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:124: delay(100);
      0009EC 90 00 64         [24]  781 	mov	dptr,#(0x64&0x00ff)
      0009EF E4               [12]  782 	clr	a
      0009F0 F5 F0            [12]  783 	mov	b,a
      0009F2 12 24 34         [24]  784 	lcall	_delay
                                    785 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:130: TempController_begin(&tempCtrl, &tempSensor, &voltageCtrl);
      0009F5 90 01 AD         [24]  786 	mov	dptr,#_TempController_begin_PARM_2
      0009F8 74 CC            [12]  787 	mov	a,#_tempSensor
      0009FA F0               [24]  788 	movx	@dptr,a
      0009FB 74 00            [12]  789 	mov	a,#(_tempSensor >> 8)
      0009FD A3               [24]  790 	inc	dptr
      0009FE F0               [24]  791 	movx	@dptr,a
      0009FF E4               [12]  792 	clr	a
      000A00 A3               [24]  793 	inc	dptr
      000A01 F0               [24]  794 	movx	@dptr,a
      000A02 90 01 B0         [24]  795 	mov	dptr,#_TempController_begin_PARM_3
      000A05 74 CD            [12]  796 	mov	a,#_voltageCtrl
      000A07 F0               [24]  797 	movx	@dptr,a
      000A08 74 00            [12]  798 	mov	a,#(_voltageCtrl >> 8)
      000A0A A3               [24]  799 	inc	dptr
      000A0B F0               [24]  800 	movx	@dptr,a
      000A0C E4               [12]  801 	clr	a
      000A0D A3               [24]  802 	inc	dptr
      000A0E F0               [24]  803 	movx	@dptr,a
      000A0F 90 00 D9         [24]  804 	mov	dptr,#_tempCtrl
      000A12 75 F0 00         [24]  805 	mov	b,#0x00
      000A15 12 11 59         [24]  806 	lcall	_TempController_begin
                                    807 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:131: delay(200);
      000A18 90 00 C8         [24]  808 	mov	dptr,#(0xc8&0x00ff)
      000A1B E4               [12]  809 	clr	a
      000A1C F5 F0            [12]  810 	mov	b,a
      000A1E 12 24 34         [24]  811 	lcall	_delay
                                    812 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:133: if (TempController_isReady(&tempCtrl)) {
      000A21 90 00 D9         [24]  813 	mov	dptr,#_tempCtrl
      000A24 75 F0 00         [24]  814 	mov	b,#0x00
      000A27 12 15 4F         [24]  815 	lcall	_TempController_isReady
                                    816 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:151: FanMonitor_begin(&fanMonitor, PIN_FAN_TACH);
      000A2A 90 00 B9         [24]  817 	mov	dptr,#_FanMonitor_begin_PARM_2
      000A2D 74 20            [12]  818 	mov	a,#0x20
      000A2F F0               [24]  819 	movx	@dptr,a
      000A30 90 00 E8         [24]  820 	mov	dptr,#_fanMonitor
      000A33 75 F0 00         [24]  821 	mov	b,#0x00
      000A36 12 05 92         [24]  822 	lcall	_FanMonitor_begin
                                    823 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:152: delay(100);
      000A39 90 00 64         [24]  824 	mov	dptr,#(0x64&0x00ff)
      000A3C E4               [12]  825 	clr	a
      000A3D F5 F0            [12]  826 	mov	b,a
      000A3F 12 24 34         [24]  827 	lcall	_delay
                                    828 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:157: init_voltage = VoltageController_readVoltage(&voltageCtrl);
      000A42 90 00 CD         [24]  829 	mov	dptr,#_voltageCtrl
      000A45 75 F0 00         [24]  830 	mov	b,#0x00
      000A48 12 1B 45         [24]  831 	lcall	_VoltageController_readVoltage
      000A4B AC 82            [24]  832 	mov	r4,dpl
      000A4D AD 83            [24]  833 	mov	r5,dph
      000A4F AE F0            [24]  834 	mov	r6,b
      000A51 FF               [12]  835 	mov	r7,a
                                    836 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:166: sysStatus.temperature = TempController_getTemperature(&tempCtrl);
      000A52 90 00 D9         [24]  837 	mov	dptr,#_tempCtrl
      000A55 75 F0 00         [24]  838 	mov	b,#0x00
      000A58 C0 07            [24]  839 	push	ar7
      000A5A C0 06            [24]  840 	push	ar6
      000A5C C0 05            [24]  841 	push	ar5
      000A5E C0 04            [24]  842 	push	ar4
      000A60 12 14 CD         [24]  843 	lcall	_TempController_getTemperature
      000A63 A8 82            [24]  844 	mov	r0,dpl
      000A65 A9 83            [24]  845 	mov	r1,dph
      000A67 AA F0            [24]  846 	mov	r2,b
      000A69 FB               [12]  847 	mov	r3,a
      000A6A D0 04            [24]  848 	pop	ar4
      000A6C D0 05            [24]  849 	pop	ar5
      000A6E D0 06            [24]  850 	pop	ar6
      000A70 D0 07            [24]  851 	pop	ar7
      000A72 90 01 5A         [24]  852 	mov	dptr,#_sysStatus
      000A75 E8               [12]  853 	mov	a,r0
      000A76 F0               [24]  854 	movx	@dptr,a
      000A77 E9               [12]  855 	mov	a,r1
      000A78 A3               [24]  856 	inc	dptr
      000A79 F0               [24]  857 	movx	@dptr,a
      000A7A EA               [12]  858 	mov	a,r2
      000A7B A3               [24]  859 	inc	dptr
      000A7C F0               [24]  860 	movx	@dptr,a
      000A7D EB               [12]  861 	mov	a,r3
      000A7E A3               [24]  862 	inc	dptr
      000A7F F0               [24]  863 	movx	@dptr,a
                                    864 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:167: sysStatus.voltage = init_voltage;
      000A80 90 01 5E         [24]  865 	mov	dptr,#(_sysStatus + 0x0004)
      000A83 EC               [12]  866 	mov	a,r4
      000A84 F0               [24]  867 	movx	@dptr,a
      000A85 ED               [12]  868 	mov	a,r5
      000A86 A3               [24]  869 	inc	dptr
      000A87 F0               [24]  870 	movx	@dptr,a
      000A88 EE               [12]  871 	mov	a,r6
      000A89 A3               [24]  872 	inc	dptr
      000A8A F0               [24]  873 	movx	@dptr,a
      000A8B EF               [12]  874 	mov	a,r7
      000A8C A3               [24]  875 	inc	dptr
      000A8D F0               [24]  876 	movx	@dptr,a
                                    877 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:168: sysStatus.target_voltage = VOUT_DEFAULT;
      000A8E 90 01 62         [24]  878 	mov	dptr,#(_sysStatus + 0x0008)
      000A91 E4               [12]  879 	clr	a
      000A92 F0               [24]  880 	movx	@dptr,a
      000A93 A3               [24]  881 	inc	dptr
      000A94 F0               [24]  882 	movx	@dptr,a
      000A95 74 40            [12]  883 	mov	a,#0x40
      000A97 A3               [24]  884 	inc	dptr
      000A98 F0               [24]  885 	movx	@dptr,a
      000A99 04               [12]  886 	inc	a
      000A9A A3               [24]  887 	inc	dptr
      000A9B F0               [24]  888 	movx	@dptr,a
                                    889 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:169: sysStatus.rpm = 0;
      000A9C 90 01 66         [24]  890 	mov	dptr,#(_sysStatus + 0x000c)
      000A9F E4               [12]  891 	clr	a
      000AA0 F0               [24]  892 	movx	@dptr,a
      000AA1 A3               [24]  893 	inc	dptr
      000AA2 F0               [24]  894 	movx	@dptr,a
      000AA3 A3               [24]  895 	inc	dptr
      000AA4 F0               [24]  896 	movx	@dptr,a
      000AA5 A3               [24]  897 	inc	dptr
      000AA6 F0               [24]  898 	movx	@dptr,a
                                    899 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:170: sysStatus.target_rpm = RPM_TARGET_MIN;
      000AA7 90 01 6A         [24]  900 	mov	dptr,#(_sysStatus + 0x0010)
      000AAA 74 20            [12]  901 	mov	a,#0x20
      000AAC F0               [24]  902 	movx	@dptr,a
      000AAD 74 03            [12]  903 	mov	a,#0x03
      000AAF A3               [24]  904 	inc	dptr
      000AB0 F0               [24]  905 	movx	@dptr,a
      000AB1 E4               [12]  906 	clr	a
      000AB2 A3               [24]  907 	inc	dptr
      000AB3 F0               [24]  908 	movx	@dptr,a
      000AB4 A3               [24]  909 	inc	dptr
      000AB5 F0               [24]  910 	movx	@dptr,a
                                    911 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:171: sysStatus.pwm_duty = 0;
      000AB6 90 01 6E         [24]  912 	mov	dptr,#(_sysStatus + 0x0014)
      000AB9 F0               [24]  913 	movx	@dptr,a
                                    914 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:172: sysStatus.error_flags = ERROR_NONE;
      000ABA 90 01 6F         [24]  915 	mov	dptr,#(_sysStatus + 0x0015)
      000ABD F0               [24]  916 	movx	@dptr,a
                                    917 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:173: sysStatus.auto_mode = true;
      000ABE 90 01 70         [24]  918 	mov	dptr,#(_sysStatus + 0x0016)
      000AC1 04               [12]  919 	inc	a
      000AC2 F0               [24]  920 	movx	@dptr,a
                                    921 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:176: LOG_LINE("=================================");
                                    922 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:177: }
      000AC3 22               [24]  923 	ret
                                    924 ;------------------------------------------------------------
                                    925 ;Allocation info for local variables in function 'usb_write_str'
                                    926 ;------------------------------------------------------------
                                    927 ;s                         Allocated with name '_usb_write_str_s_65536_233'
                                    928 ;------------------------------------------------------------
                                    929 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:181: static void usb_write_str(const char* s) {
                                    930 ;	-----------------------------------------
                                    931 ;	 function usb_write_str
                                    932 ;	-----------------------------------------
      000AC4                        933 _usb_write_str:
      000AC4 AF F0            [24]  934 	mov	r7,b
      000AC6 AE 83            [24]  935 	mov	r6,dph
      000AC8 E5 82            [12]  936 	mov	a,dpl
      000ACA 90 01 72         [24]  937 	mov	dptr,#_usb_write_str_s_65536_233
      000ACD F0               [24]  938 	movx	@dptr,a
      000ACE EE               [12]  939 	mov	a,r6
      000ACF A3               [24]  940 	inc	dptr
      000AD0 F0               [24]  941 	movx	@dptr,a
      000AD1 EF               [12]  942 	mov	a,r7
      000AD2 A3               [24]  943 	inc	dptr
      000AD3 F0               [24]  944 	movx	@dptr,a
                                    945 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:182: while (*s) {
      000AD4 90 01 72         [24]  946 	mov	dptr,#_usb_write_str_s_65536_233
      000AD7 E0               [24]  947 	movx	a,@dptr
      000AD8 FD               [12]  948 	mov	r5,a
      000AD9 A3               [24]  949 	inc	dptr
      000ADA E0               [24]  950 	movx	a,@dptr
      000ADB FE               [12]  951 	mov	r6,a
      000ADC A3               [24]  952 	inc	dptr
      000ADD E0               [24]  953 	movx	a,@dptr
      000ADE FF               [12]  954 	mov	r7,a
      000ADF                        955 00101$:
      000ADF 8D 82            [24]  956 	mov	dpl,r5
      000AE1 8E 83            [24]  957 	mov	dph,r6
      000AE3 8F F0            [24]  958 	mov	b,r7
      000AE5 12 31 2B         [24]  959 	lcall	__gptrget
      000AE8 FC               [12]  960 	mov	r4,a
      000AE9 60 23            [24]  961 	jz	00108$
                                    962 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:183: USBSerial_write(*s++);
      000AEB 0D               [12]  963 	inc	r5
      000AEC BD 00 01         [24]  964 	cjne	r5,#0x00,00116$
      000AEF 0E               [12]  965 	inc	r6
      000AF0                        966 00116$:
      000AF0 90 01 72         [24]  967 	mov	dptr,#_usb_write_str_s_65536_233
      000AF3 ED               [12]  968 	mov	a,r5
      000AF4 F0               [24]  969 	movx	@dptr,a
      000AF5 EE               [12]  970 	mov	a,r6
      000AF6 A3               [24]  971 	inc	dptr
      000AF7 F0               [24]  972 	movx	@dptr,a
      000AF8 EF               [12]  973 	mov	a,r7
      000AF9 A3               [24]  974 	inc	dptr
      000AFA F0               [24]  975 	movx	@dptr,a
      000AFB 8C 82            [24]  976 	mov	dpl,r4
      000AFD C0 07            [24]  977 	push	ar7
      000AFF C0 06            [24]  978 	push	ar6
      000B01 C0 05            [24]  979 	push	ar5
      000B03 12 2D B0         [24]  980 	lcall	_USBSerial_write
      000B06 D0 05            [24]  981 	pop	ar5
      000B08 D0 06            [24]  982 	pop	ar6
      000B0A D0 07            [24]  983 	pop	ar7
      000B0C 80 D1            [24]  984 	sjmp	00101$
      000B0E                        985 00108$:
      000B0E 90 01 72         [24]  986 	mov	dptr,#_usb_write_str_s_65536_233
      000B11 ED               [12]  987 	mov	a,r5
      000B12 F0               [24]  988 	movx	@dptr,a
      000B13 EE               [12]  989 	mov	a,r6
      000B14 A3               [24]  990 	inc	dptr
      000B15 F0               [24]  991 	movx	@dptr,a
      000B16 EF               [12]  992 	mov	a,r7
      000B17 A3               [24]  993 	inc	dptr
      000B18 F0               [24]  994 	movx	@dptr,a
                                    995 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:185: }
      000B19 22               [24]  996 	ret
                                    997 ;------------------------------------------------------------
                                    998 ;Allocation info for local variables in function 'usb_write_hex4'
                                    999 ;------------------------------------------------------------
                                   1000 ;v                         Allocated with name '_usb_write_hex4_v_65536_236'
                                   1001 ;------------------------------------------------------------
                                   1002 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:187: static void usb_write_hex4(uint8_t v) {
                                   1003 ;	-----------------------------------------
                                   1004 ;	 function usb_write_hex4
                                   1005 ;	-----------------------------------------
      000B1A                       1006 _usb_write_hex4:
      000B1A E5 82            [12] 1007 	mov	a,dpl
      000B1C 90 01 75         [24] 1008 	mov	dptr,#_usb_write_hex4_v_65536_236
      000B1F F0               [24] 1009 	movx	@dptr,a
                                   1010 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:188: v &= 0x0F;
      000B20 E0               [24] 1011 	movx	a,@dptr
      000B21 53 E0 0F         [24] 1012 	anl	acc,#0x0f
      000B24 F0               [24] 1013 	movx	@dptr,a
                                   1014 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:189: USBSerial_write((char)(v < 10 ? ('0' + v) : ('A' + (v - 10))));
      000B25 90 01 75         [24] 1015 	mov	dptr,#_usb_write_hex4_v_65536_236
      000B28 E0               [24] 1016 	movx	a,@dptr
      000B29 FF               [12] 1017 	mov	r7,a
      000B2A BF 0A 00         [24] 1018 	cjne	r7,#0x0a,00109$
      000B2D                       1019 00109$:
      000B2D 50 08            [24] 1020 	jnc	00103$
      000B2F 8F 06            [24] 1021 	mov	ar6,r7
      000B31 74 30            [12] 1022 	mov	a,#0x30
      000B33 2E               [12] 1023 	add	a,r6
      000B34 FE               [12] 1024 	mov	r6,a
      000B35 80 04            [24] 1025 	sjmp	00104$
      000B37                       1026 00103$:
      000B37 74 37            [12] 1027 	mov	a,#0x37
      000B39 2F               [12] 1028 	add	a,r7
      000B3A FE               [12] 1029 	mov	r6,a
      000B3B                       1030 00104$:
      000B3B 8E 82            [24] 1031 	mov	dpl,r6
                                   1032 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:190: }
      000B3D 02 2D B0         [24] 1033 	ljmp	_USBSerial_write
                                   1034 ;------------------------------------------------------------
                                   1035 ;Allocation info for local variables in function 'usb_write_hex8'
                                   1036 ;------------------------------------------------------------
                                   1037 ;v                         Allocated with name '_usb_write_hex8_v_65536_238'
                                   1038 ;------------------------------------------------------------
                                   1039 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:192: static void usb_write_hex8(uint8_t v) {
                                   1040 ;	-----------------------------------------
                                   1041 ;	 function usb_write_hex8
                                   1042 ;	-----------------------------------------
      000B40                       1043 _usb_write_hex8:
      000B40 E5 82            [12] 1044 	mov	a,dpl
      000B42 90 01 76         [24] 1045 	mov	dptr,#_usb_write_hex8_v_65536_238
      000B45 F0               [24] 1046 	movx	@dptr,a
                                   1047 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:193: usb_write_hex4((uint8_t)(v >> 4));
      000B46 E0               [24] 1048 	movx	a,@dptr
      000B47 FF               [12] 1049 	mov	r7,a
      000B48 C4               [12] 1050 	swap	a
      000B49 54 0F            [12] 1051 	anl	a,#0x0f
      000B4B F5 82            [12] 1052 	mov	dpl,a
      000B4D C0 07            [24] 1053 	push	ar7
      000B4F 12 0B 1A         [24] 1054 	lcall	_usb_write_hex4
      000B52 D0 07            [24] 1055 	pop	ar7
                                   1056 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:194: usb_write_hex4(v);
      000B54 8F 82            [24] 1057 	mov	dpl,r7
                                   1058 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:195: }
      000B56 02 0B 1A         [24] 1059 	ljmp	_usb_write_hex4
                                   1060 ;------------------------------------------------------------
                                   1061 ;Allocation info for local variables in function 'usb_write_hex32'
                                   1062 ;------------------------------------------------------------
                                   1063 ;v                         Allocated with name '_usb_write_hex32_v_65536_240'
                                   1064 ;------------------------------------------------------------
                                   1065 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:197: static void usb_write_hex32(uint32_t v) {
                                   1066 ;	-----------------------------------------
                                   1067 ;	 function usb_write_hex32
                                   1068 ;	-----------------------------------------
      000B59                       1069 _usb_write_hex32:
      000B59 AF 82            [24] 1070 	mov	r7,dpl
      000B5B AE 83            [24] 1071 	mov	r6,dph
      000B5D AD F0            [24] 1072 	mov	r5,b
      000B5F FC               [12] 1073 	mov	r4,a
      000B60 90 01 77         [24] 1074 	mov	dptr,#_usb_write_hex32_v_65536_240
      000B63 EF               [12] 1075 	mov	a,r7
      000B64 F0               [24] 1076 	movx	@dptr,a
      000B65 EE               [12] 1077 	mov	a,r6
      000B66 A3               [24] 1078 	inc	dptr
      000B67 F0               [24] 1079 	movx	@dptr,a
      000B68 ED               [12] 1080 	mov	a,r5
      000B69 A3               [24] 1081 	inc	dptr
      000B6A F0               [24] 1082 	movx	@dptr,a
      000B6B EC               [12] 1083 	mov	a,r4
      000B6C A3               [24] 1084 	inc	dptr
      000B6D F0               [24] 1085 	movx	@dptr,a
                                   1086 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:198: usb_write_hex8((uint8_t)(v >> 24));
      000B6E 90 01 77         [24] 1087 	mov	dptr,#_usb_write_hex32_v_65536_240
      000B71 E0               [24] 1088 	movx	a,@dptr
      000B72 FC               [12] 1089 	mov	r4,a
      000B73 A3               [24] 1090 	inc	dptr
      000B74 E0               [24] 1091 	movx	a,@dptr
      000B75 FD               [12] 1092 	mov	r5,a
      000B76 A3               [24] 1093 	inc	dptr
      000B77 E0               [24] 1094 	movx	a,@dptr
      000B78 FE               [12] 1095 	mov	r6,a
      000B79 A3               [24] 1096 	inc	dptr
      000B7A E0               [24] 1097 	movx	a,@dptr
      000B7B FF               [12] 1098 	mov	r7,a
      000B7C F5 82            [12] 1099 	mov	dpl,a
      000B7E C0 07            [24] 1100 	push	ar7
      000B80 C0 06            [24] 1101 	push	ar6
      000B82 C0 05            [24] 1102 	push	ar5
      000B84 C0 04            [24] 1103 	push	ar4
      000B86 12 0B 40         [24] 1104 	lcall	_usb_write_hex8
      000B89 D0 04            [24] 1105 	pop	ar4
      000B8B D0 05            [24] 1106 	pop	ar5
      000B8D D0 06            [24] 1107 	pop	ar6
                                   1108 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:199: usb_write_hex8((uint8_t)(v >> 16));
      000B8F 8E 03            [24] 1109 	mov	ar3,r6
      000B91 8B 82            [24] 1110 	mov	dpl,r3
      000B93 C0 06            [24] 1111 	push	ar6
      000B95 C0 05            [24] 1112 	push	ar5
      000B97 C0 04            [24] 1113 	push	ar4
      000B99 12 0B 40         [24] 1114 	lcall	_usb_write_hex8
      000B9C D0 04            [24] 1115 	pop	ar4
      000B9E D0 05            [24] 1116 	pop	ar5
                                   1117 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:200: usb_write_hex8((uint8_t)(v >> 8));
      000BA0 8D 03            [24] 1118 	mov	ar3,r5
      000BA2 8B 82            [24] 1119 	mov	dpl,r3
      000BA4 C0 05            [24] 1120 	push	ar5
      000BA6 C0 04            [24] 1121 	push	ar4
      000BA8 12 0B 40         [24] 1122 	lcall	_usb_write_hex8
      000BAB D0 04            [24] 1123 	pop	ar4
      000BAD D0 05            [24] 1124 	pop	ar5
      000BAF D0 06            [24] 1125 	pop	ar6
      000BB1 D0 07            [24] 1126 	pop	ar7
                                   1127 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:201: usb_write_hex8((uint8_t)v);
      000BB3 8C 82            [24] 1128 	mov	dpl,r4
                                   1129 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:202: }
      000BB5 02 0B 40         [24] 1130 	ljmp	_usb_write_hex8
                                   1131 ;------------------------------------------------------------
                                   1132 ;Allocation info for local variables in function 'main2'
                                   1133 ;------------------------------------------------------------
                                   1134 ;sloc0                     Allocated with name '_main2_sloc0_1_0'
                                   1135 ;sloc1                     Allocated with name '_main2_sloc1_1_0'
                                   1136 ;now                       Allocated with name '_main2_now_65536_243'
                                   1137 ;last_report               Allocated with name '_main2_last_report_65536_243'
                                   1138 ;temp_c                    Allocated with name '_main2_temp_c_65536_243'
                                   1139 ;temp_ok                   Allocated with name '_main2_temp_ok_65536_243'
                                   1140 ;actual_v                  Allocated with name '_main2_actual_v_65536_243'
                                   1141 ;target_v                  Allocated with name '_main2_target_v_65536_243'
                                   1142 ;rpm                       Allocated with name '_main2_rpm_65536_243'
                                   1143 ;temp_bits                 Allocated with name '_main2_temp_bits_65536_243'
                                   1144 ;actual_bits               Allocated with name '_main2_actual_bits_65536_243'
                                   1145 ;expect_bits               Allocated with name '_main2_expect_bits_65536_243'
                                   1146 ;------------------------------------------------------------
                                   1147 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:204: void main2(void) {
                                   1148 ;	-----------------------------------------
                                   1149 ;	 function main2
                                   1150 ;	-----------------------------------------
      000BB8                       1151 _main2:
                                   1152 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:205: unsigned long now = millis();
      000BB8 12 23 F7         [24] 1153 	lcall	_millis
      000BBB AC 82            [24] 1154 	mov	r4,dpl
      000BBD AD 83            [24] 1155 	mov	r5,dph
      000BBF AE F0            [24] 1156 	mov	r6,b
      000BC1 FF               [12] 1157 	mov	r7,a
                                   1158 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:207: float temp_c = -999.0f;
      000BC2 90 01 7F         [24] 1159 	mov	dptr,#_main2_temp_c_65536_243
      000BC5 E4               [12] 1160 	clr	a
      000BC6 F0               [24] 1161 	movx	@dptr,a
      000BC7 74 C0            [12] 1162 	mov	a,#0xc0
      000BC9 A3               [24] 1163 	inc	dptr
      000BCA F0               [24] 1164 	movx	@dptr,a
      000BCB 74 79            [12] 1165 	mov	a,#0x79
      000BCD A3               [24] 1166 	inc	dptr
      000BCE F0               [24] 1167 	movx	@dptr,a
      000BCF 74 C4            [12] 1168 	mov	a,#0xc4
      000BD1 A3               [24] 1169 	inc	dptr
      000BD2 F0               [24] 1170 	movx	@dptr,a
                                   1171 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:217: if ((now - last_report) < 1000) {
      000BD3 90 01 7B         [24] 1172 	mov	dptr,#_main2_last_report_65536_243
      000BD6 E0               [24] 1173 	movx	a,@dptr
      000BD7 F8               [12] 1174 	mov	r0,a
      000BD8 A3               [24] 1175 	inc	dptr
      000BD9 E0               [24] 1176 	movx	a,@dptr
      000BDA F9               [12] 1177 	mov	r1,a
      000BDB A3               [24] 1178 	inc	dptr
      000BDC E0               [24] 1179 	movx	a,@dptr
      000BDD FA               [12] 1180 	mov	r2,a
      000BDE A3               [24] 1181 	inc	dptr
      000BDF E0               [24] 1182 	movx	a,@dptr
      000BE0 FB               [12] 1183 	mov	r3,a
      000BE1 EC               [12] 1184 	mov	a,r4
      000BE2 C3               [12] 1185 	clr	c
      000BE3 98               [12] 1186 	subb	a,r0
      000BE4 F8               [12] 1187 	mov	r0,a
      000BE5 ED               [12] 1188 	mov	a,r5
      000BE6 99               [12] 1189 	subb	a,r1
      000BE7 F9               [12] 1190 	mov	r1,a
      000BE8 EE               [12] 1191 	mov	a,r6
      000BE9 9A               [12] 1192 	subb	a,r2
      000BEA FA               [12] 1193 	mov	r2,a
      000BEB EF               [12] 1194 	mov	a,r7
      000BEC 9B               [12] 1195 	subb	a,r3
      000BED FB               [12] 1196 	mov	r3,a
      000BEE C3               [12] 1197 	clr	c
      000BEF E8               [12] 1198 	mov	a,r0
      000BF0 94 E8            [12] 1199 	subb	a,#0xe8
      000BF2 E9               [12] 1200 	mov	a,r1
      000BF3 94 03            [12] 1201 	subb	a,#0x03
      000BF5 EA               [12] 1202 	mov	a,r2
      000BF6 94 00            [12] 1203 	subb	a,#0x00
      000BF8 EB               [12] 1204 	mov	a,r3
      000BF9 94 00            [12] 1205 	subb	a,#0x00
      000BFB 50 01            [24] 1206 	jnc	00102$
                                   1207 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:218: return;
      000BFD 22               [24] 1208 	ret
      000BFE                       1209 00102$:
                                   1210 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:220: last_report = now;
      000BFE 90 01 7B         [24] 1211 	mov	dptr,#_main2_last_report_65536_243
      000C01 EC               [12] 1212 	mov	a,r4
      000C02 F0               [24] 1213 	movx	@dptr,a
      000C03 ED               [12] 1214 	mov	a,r5
      000C04 A3               [24] 1215 	inc	dptr
      000C05 F0               [24] 1216 	movx	@dptr,a
      000C06 EE               [12] 1217 	mov	a,r6
      000C07 A3               [24] 1218 	inc	dptr
      000C08 F0               [24] 1219 	movx	@dptr,a
      000C09 EF               [12] 1220 	mov	a,r7
      000C0A A3               [24] 1221 	inc	dptr
      000C0B F0               [24] 1222 	movx	@dptr,a
                                   1223 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:262: temp_ok = TempController_update(&tempCtrl);
      000C0C 90 00 D9         [24] 1224 	mov	dptr,#_tempCtrl
      000C0F 75 F0 00         [24] 1225 	mov	b,#0x00
      000C12 12 12 EC         [24] 1226 	lcall	_TempController_update
      000C15 E5 82            [12] 1227 	mov	a,dpl
                                   1228 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:263: if (temp_ok) {
      000C17 60 20            [24] 1229 	jz	00104$
                                   1230 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:264: temp_c = TempController_getTemperature(&tempCtrl);
      000C19 90 00 D9         [24] 1231 	mov	dptr,#_tempCtrl
      000C1C 75 F0 00         [24] 1232 	mov	b,#0x00
      000C1F 12 14 CD         [24] 1233 	lcall	_TempController_getTemperature
      000C22 AC 82            [24] 1234 	mov	r4,dpl
      000C24 AD 83            [24] 1235 	mov	r5,dph
      000C26 AE F0            [24] 1236 	mov	r6,b
      000C28 FF               [12] 1237 	mov	r7,a
      000C29 90 01 7F         [24] 1238 	mov	dptr,#_main2_temp_c_65536_243
      000C2C EC               [12] 1239 	mov	a,r4
      000C2D F0               [24] 1240 	movx	@dptr,a
      000C2E ED               [12] 1241 	mov	a,r5
      000C2F A3               [24] 1242 	inc	dptr
      000C30 F0               [24] 1243 	movx	@dptr,a
      000C31 EE               [12] 1244 	mov	a,r6
      000C32 A3               [24] 1245 	inc	dptr
      000C33 F0               [24] 1246 	movx	@dptr,a
      000C34 EF               [12] 1247 	mov	a,r7
      000C35 A3               [24] 1248 	inc	dptr
      000C36 F0               [24] 1249 	movx	@dptr,a
      000C37 80 17            [24] 1250 	sjmp	00105$
      000C39                       1251 00104$:
                                   1252 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:267: VoltageController_setVoltage(&voltageCtrl, VOUT_DEFAULT);
      000C39 90 01 D8         [24] 1253 	mov	dptr,#_VoltageController_setVoltage_PARM_2
      000C3C E4               [12] 1254 	clr	a
      000C3D F0               [24] 1255 	movx	@dptr,a
      000C3E A3               [24] 1256 	inc	dptr
      000C3F F0               [24] 1257 	movx	@dptr,a
      000C40 74 40            [12] 1258 	mov	a,#0x40
      000C42 A3               [24] 1259 	inc	dptr
      000C43 F0               [24] 1260 	movx	@dptr,a
      000C44 04               [12] 1261 	inc	a
      000C45 A3               [24] 1262 	inc	dptr
      000C46 F0               [24] 1263 	movx	@dptr,a
      000C47 90 00 CD         [24] 1264 	mov	dptr,#_voltageCtrl
      000C4A 75 F0 00         [24] 1265 	mov	b,#0x00
      000C4D 12 19 F7         [24] 1266 	lcall	_VoltageController_setVoltage
      000C50                       1267 00105$:
                                   1268 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:271: FanMonitor_updateRPM(&fanMonitor);
      000C50 90 00 E8         [24] 1269 	mov	dptr,#_fanMonitor
      000C53 75 F0 00         [24] 1270 	mov	b,#0x00
      000C56 12 06 9D         [24] 1271 	lcall	_FanMonitor_updateRPM
                                   1272 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:272: rpm = FanMonitor_getRPM(&fanMonitor);
      000C59 90 00 E8         [24] 1273 	mov	dptr,#_fanMonitor
      000C5C 75 F0 00         [24] 1274 	mov	b,#0x00
      000C5F 12 08 B2         [24] 1275 	lcall	_FanMonitor_getRPM
      000C62 AC 82            [24] 1276 	mov	r4,dpl
      000C64 AD 83            [24] 1277 	mov	r5,dph
      000C66 AE F0            [24] 1278 	mov	r6,b
      000C68 FF               [12] 1279 	mov	r7,a
                                   1280 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:274: actual_v = VoltageController_updateVoltage(&voltageCtrl);
      000C69 90 00 CD         [24] 1281 	mov	dptr,#_voltageCtrl
      000C6C 75 F0 00         [24] 1282 	mov	b,#0x00
      000C6F C0 07            [24] 1283 	push	ar7
      000C71 C0 06            [24] 1284 	push	ar6
      000C73 C0 05            [24] 1285 	push	ar5
      000C75 C0 04            [24] 1286 	push	ar4
      000C77 12 1B 86         [24] 1287 	lcall	_VoltageController_updateVoltage
      000C7A 85 82 10         [24] 1288 	mov	_main2_sloc0_1_0,dpl
      000C7D 85 83 11         [24] 1289 	mov	(_main2_sloc0_1_0 + 1),dph
      000C80 85 F0 12         [24] 1290 	mov	(_main2_sloc0_1_0 + 2),b
      000C83 F5 13            [12] 1291 	mov	(_main2_sloc0_1_0 + 3),a
                                   1292 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:276: target_v = VoltageController_getTargetVoltage(&voltageCtrl);
      000C85 90 00 CD         [24] 1293 	mov	dptr,#_voltageCtrl
      000C88 75 F0 00         [24] 1294 	mov	b,#0x00
      000C8B 12 1D 68         [24] 1295 	lcall	_VoltageController_getTargetVoltage
      000C8E 85 82 14         [24] 1296 	mov	_main2_sloc1_1_0,dpl
      000C91 85 83 15         [24] 1297 	mov	(_main2_sloc1_1_0 + 1),dph
      000C94 85 F0 16         [24] 1298 	mov	(_main2_sloc1_1_0 + 2),b
      000C97 F5 17            [12] 1299 	mov	(_main2_sloc1_1_0 + 3),a
                                   1300 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:279: temp_bits.f = temp_c;
      000C99 90 01 7F         [24] 1301 	mov	dptr,#_main2_temp_c_65536_243
      000C9C E0               [24] 1302 	movx	a,@dptr
      000C9D F8               [12] 1303 	mov	r0,a
      000C9E A3               [24] 1304 	inc	dptr
      000C9F E0               [24] 1305 	movx	a,@dptr
      000CA0 F9               [12] 1306 	mov	r1,a
      000CA1 A3               [24] 1307 	inc	dptr
      000CA2 E0               [24] 1308 	movx	a,@dptr
      000CA3 FA               [12] 1309 	mov	r2,a
      000CA4 A3               [24] 1310 	inc	dptr
      000CA5 E0               [24] 1311 	movx	a,@dptr
      000CA6 FB               [12] 1312 	mov	r3,a
      000CA7 90 01 83         [24] 1313 	mov	dptr,#_main2_temp_bits_65536_243
      000CAA E8               [12] 1314 	mov	a,r0
      000CAB F0               [24] 1315 	movx	@dptr,a
      000CAC E9               [12] 1316 	mov	a,r1
      000CAD A3               [24] 1317 	inc	dptr
      000CAE F0               [24] 1318 	movx	@dptr,a
      000CAF EA               [12] 1319 	mov	a,r2
      000CB0 A3               [24] 1320 	inc	dptr
      000CB1 F0               [24] 1321 	movx	@dptr,a
      000CB2 EB               [12] 1322 	mov	a,r3
      000CB3 A3               [24] 1323 	inc	dptr
      000CB4 F0               [24] 1324 	movx	@dptr,a
                                   1325 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:280: actual_bits.f = actual_v;
      000CB5 90 01 87         [24] 1326 	mov	dptr,#_main2_actual_bits_65536_243
      000CB8 E5 10            [12] 1327 	mov	a,_main2_sloc0_1_0
      000CBA F0               [24] 1328 	movx	@dptr,a
      000CBB E5 11            [12] 1329 	mov	a,(_main2_sloc0_1_0 + 1)
      000CBD A3               [24] 1330 	inc	dptr
      000CBE F0               [24] 1331 	movx	@dptr,a
      000CBF E5 12            [12] 1332 	mov	a,(_main2_sloc0_1_0 + 2)
      000CC1 A3               [24] 1333 	inc	dptr
      000CC2 F0               [24] 1334 	movx	@dptr,a
      000CC3 E5 13            [12] 1335 	mov	a,(_main2_sloc0_1_0 + 3)
      000CC5 A3               [24] 1336 	inc	dptr
      000CC6 F0               [24] 1337 	movx	@dptr,a
                                   1338 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:281: expect_bits.f = target_v;
      000CC7 90 01 8B         [24] 1339 	mov	dptr,#_main2_expect_bits_65536_243
      000CCA E5 14            [12] 1340 	mov	a,_main2_sloc1_1_0
      000CCC F0               [24] 1341 	movx	@dptr,a
      000CCD E5 15            [12] 1342 	mov	a,(_main2_sloc1_1_0 + 1)
      000CCF A3               [24] 1343 	inc	dptr
      000CD0 F0               [24] 1344 	movx	@dptr,a
      000CD1 E5 16            [12] 1345 	mov	a,(_main2_sloc1_1_0 + 2)
      000CD3 A3               [24] 1346 	inc	dptr
      000CD4 F0               [24] 1347 	movx	@dptr,a
      000CD5 E5 17            [12] 1348 	mov	a,(_main2_sloc1_1_0 + 3)
      000CD7 A3               [24] 1349 	inc	dptr
      000CD8 F0               [24] 1350 	movx	@dptr,a
                                   1351 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:288: usb_write_hex32(temp_bits.u);
      000CD9 90 01 83         [24] 1352 	mov	dptr,#_main2_temp_bits_65536_243
      000CDC E0               [24] 1353 	movx	a,@dptr
      000CDD F8               [12] 1354 	mov	r0,a
      000CDE A3               [24] 1355 	inc	dptr
      000CDF E0               [24] 1356 	movx	a,@dptr
      000CE0 F9               [12] 1357 	mov	r1,a
      000CE1 A3               [24] 1358 	inc	dptr
      000CE2 E0               [24] 1359 	movx	a,@dptr
      000CE3 FA               [12] 1360 	mov	r2,a
      000CE4 A3               [24] 1361 	inc	dptr
      000CE5 E0               [24] 1362 	movx	a,@dptr
      000CE6 88 82            [24] 1363 	mov	dpl,r0
      000CE8 89 83            [24] 1364 	mov	dph,r1
      000CEA 8A F0            [24] 1365 	mov	b,r2
      000CEC 12 0B 59         [24] 1366 	lcall	_usb_write_hex32
                                   1367 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:289: USBSerial_write(',');
      000CEF 75 82 2C         [24] 1368 	mov	dpl,#0x2c
      000CF2 12 2D B0         [24] 1369 	lcall	_USBSerial_write
      000CF5 D0 04            [24] 1370 	pop	ar4
      000CF7 D0 05            [24] 1371 	pop	ar5
      000CF9 D0 06            [24] 1372 	pop	ar6
      000CFB D0 07            [24] 1373 	pop	ar7
                                   1374 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:290: usb_write_hex32(rpm);
      000CFD 8C 82            [24] 1375 	mov	dpl,r4
      000CFF 8D 83            [24] 1376 	mov	dph,r5
      000D01 8E F0            [24] 1377 	mov	b,r6
      000D03 EF               [12] 1378 	mov	a,r7
      000D04 12 0B 59         [24] 1379 	lcall	_usb_write_hex32
                                   1380 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:291: USBSerial_write(',');
      000D07 75 82 2C         [24] 1381 	mov	dpl,#0x2c
      000D0A 12 2D B0         [24] 1382 	lcall	_USBSerial_write
                                   1383 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:292: usb_write_hex32(actual_bits.u);
      000D0D 90 01 87         [24] 1384 	mov	dptr,#_main2_actual_bits_65536_243
      000D10 E0               [24] 1385 	movx	a,@dptr
      000D11 FC               [12] 1386 	mov	r4,a
      000D12 A3               [24] 1387 	inc	dptr
      000D13 E0               [24] 1388 	movx	a,@dptr
      000D14 FD               [12] 1389 	mov	r5,a
      000D15 A3               [24] 1390 	inc	dptr
      000D16 E0               [24] 1391 	movx	a,@dptr
      000D17 FE               [12] 1392 	mov	r6,a
      000D18 A3               [24] 1393 	inc	dptr
      000D19 E0               [24] 1394 	movx	a,@dptr
      000D1A 8C 82            [24] 1395 	mov	dpl,r4
      000D1C 8D 83            [24] 1396 	mov	dph,r5
      000D1E 8E F0            [24] 1397 	mov	b,r6
      000D20 12 0B 59         [24] 1398 	lcall	_usb_write_hex32
                                   1399 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:293: USBSerial_write(',');
      000D23 75 82 2C         [24] 1400 	mov	dpl,#0x2c
      000D26 12 2D B0         [24] 1401 	lcall	_USBSerial_write
                                   1402 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:294: usb_write_hex32(expect_bits.u);
      000D29 90 01 8B         [24] 1403 	mov	dptr,#_main2_expect_bits_65536_243
      000D2C E0               [24] 1404 	movx	a,@dptr
      000D2D FC               [12] 1405 	mov	r4,a
      000D2E A3               [24] 1406 	inc	dptr
      000D2F E0               [24] 1407 	movx	a,@dptr
      000D30 FD               [12] 1408 	mov	r5,a
      000D31 A3               [24] 1409 	inc	dptr
      000D32 E0               [24] 1410 	movx	a,@dptr
      000D33 FE               [12] 1411 	mov	r6,a
      000D34 A3               [24] 1412 	inc	dptr
      000D35 E0               [24] 1413 	movx	a,@dptr
      000D36 8C 82            [24] 1414 	mov	dpl,r4
      000D38 8D 83            [24] 1415 	mov	dph,r5
      000D3A 8E F0            [24] 1416 	mov	b,r6
      000D3C 12 0B 59         [24] 1417 	lcall	_usb_write_hex32
                                   1418 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:295: usb_write_str("\r\n");
      000D3F 90 35 99         [24] 1419 	mov	dptr,#___str_0
      000D42 75 F0 80         [24] 1420 	mov	b,#0x80
                                   1421 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:296: }
      000D45 02 0A C4         [24] 1422 	ljmp	_usb_write_str
                                   1423 ;------------------------------------------------------------
                                   1424 ;Allocation info for local variables in function 'loop'
                                   1425 ;------------------------------------------------------------
                                   1426 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:446: void loop() {
                                   1427 ;	-----------------------------------------
                                   1428 ;	 function loop
                                   1429 ;	-----------------------------------------
      000D48                       1430 _loop:
                                   1431 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:447: main2();
                                   1432 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:448: }
      000D48 02 0B B8         [24] 1433 	ljmp	_main2
                                   1434 	.area CSEG    (CODE)
                                   1435 	.area CONST   (CODE)
                                   1436 	.area CONST   (CODE)
      003599                       1437 ___str_0:
      003599 0D                    1438 	.db 0x0d
      00359A 0A                    1439 	.db 0x0a
      00359B 00                    1440 	.db 0x00
                                   1441 	.area CSEG    (CODE)
                                   1442 	.area XINIT   (CODE)
      0036E3                       1443 __xinit__last_temp_update:
      0036E3 00 00 00 00           1444 	.byte #0x00, #0x00, #0x00, #0x00	; 0
      0036E7                       1445 __xinit__last_status_send:
      0036E7 00 00 00 00           1446 	.byte #0x00, #0x00, #0x00, #0x00	; 0
      0036EB                       1447 __xinit__last_voltage_check:
      0036EB 00 00 00 00           1448 	.byte #0x00, #0x00, #0x00, #0x00	; 0
      0036EF                       1449 __xinit__stall_detect_time:
      0036EF 00 00 00 00           1450 	.byte #0x00, #0x00, #0x00, #0x00	; 0
      0036F3                       1451 __xinit__stall_retry_count:
      0036F3 00                    1452 	.db #0x00	; 0
      0036F4                       1453 __xinit__usb_was_connected:
      0036F4 00                    1454 	.db #0x00	;  0
                                   1455 	.area CABS    (ABS,CODE)
