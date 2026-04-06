                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.2 #13407 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module serial_compat
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _UIF_BUS_RST
                                     12 	.globl _UIF_DETECT
                                     13 	.globl _UIF_TRANSFER
                                     14 	.globl _UIF_SUSPEND
                                     15 	.globl _UIF_HST_SOF
                                     16 	.globl _UIF_FIFO_OV
                                     17 	.globl _U_SIE_FREE
                                     18 	.globl _U_TOG_OK
                                     19 	.globl _U_IS_NAK
                                     20 	.globl _ADC_CHAN0
                                     21 	.globl _ADC_CHAN1
                                     22 	.globl _CMP_CHAN
                                     23 	.globl _ADC_START
                                     24 	.globl _ADC_IF
                                     25 	.globl _CMP_IF
                                     26 	.globl _CMPO
                                     27 	.globl _U1RI
                                     28 	.globl _U1TI
                                     29 	.globl _U1RB8
                                     30 	.globl _U1TB8
                                     31 	.globl _U1REN
                                     32 	.globl _U1SMOD
                                     33 	.globl _U1SM0
                                     34 	.globl _S0_R_FIFO
                                     35 	.globl _S0_T_FIFO
                                     36 	.globl _S0_FREE
                                     37 	.globl _S0_IF_BYTE
                                     38 	.globl _S0_IF_FIRST
                                     39 	.globl _S0_IF_OV
                                     40 	.globl _S0_FST_ACT
                                     41 	.globl _CP_RL2
                                     42 	.globl _C_T2
                                     43 	.globl _TR2
                                     44 	.globl _EXEN2
                                     45 	.globl _TCLK
                                     46 	.globl _RCLK
                                     47 	.globl _EXF2
                                     48 	.globl _CAP1F
                                     49 	.globl _TF2
                                     50 	.globl _RI
                                     51 	.globl _TI
                                     52 	.globl _RB8
                                     53 	.globl _TB8
                                     54 	.globl _REN
                                     55 	.globl _SM2
                                     56 	.globl _SM1
                                     57 	.globl _SM0
                                     58 	.globl _IT0
                                     59 	.globl _IE0
                                     60 	.globl _IT1
                                     61 	.globl _IE1
                                     62 	.globl _TR0
                                     63 	.globl _TF0
                                     64 	.globl _TR1
                                     65 	.globl _TF1
                                     66 	.globl _P3_0
                                     67 	.globl _P3_1
                                     68 	.globl _P3_2
                                     69 	.globl _P3_3
                                     70 	.globl _P3_4
                                     71 	.globl _P3_5
                                     72 	.globl _P3_6
                                     73 	.globl _P3_7
                                     74 	.globl _RXD
                                     75 	.globl _PWM1_
                                     76 	.globl _TXD
                                     77 	.globl _PWM2_
                                     78 	.globl _AIN3
                                     79 	.globl _VBUS1
                                     80 	.globl _INT0
                                     81 	.globl _TXD1_
                                     82 	.globl _INT1
                                     83 	.globl _T0
                                     84 	.globl _RXD1_
                                     85 	.globl _PWM2
                                     86 	.globl _T1
                                     87 	.globl _UDP
                                     88 	.globl _UDM
                                     89 	.globl _P1_0
                                     90 	.globl _P1_1
                                     91 	.globl _P1_2
                                     92 	.globl _P1_3
                                     93 	.globl _P1_4
                                     94 	.globl _P1_5
                                     95 	.globl _P1_6
                                     96 	.globl _P1_7
                                     97 	.globl _TIN0
                                     98 	.globl _CAP1
                                     99 	.globl _T2
                                    100 	.globl _AIN0
                                    101 	.globl _VBUS2
                                    102 	.globl _TIN1
                                    103 	.globl _CAP2
                                    104 	.globl _T2EX
                                    105 	.globl _RXD_
                                    106 	.globl _TXD_
                                    107 	.globl _AIN1
                                    108 	.globl _UCC1
                                    109 	.globl _TIN2
                                    110 	.globl _SCS
                                    111 	.globl _CAP1_
                                    112 	.globl _T2_
                                    113 	.globl _AIN2
                                    114 	.globl _UCC2
                                    115 	.globl _TIN3
                                    116 	.globl _PWM1
                                    117 	.globl _MOSI
                                    118 	.globl _TIN4
                                    119 	.globl _RXD1
                                    120 	.globl _MISO
                                    121 	.globl _TIN5
                                    122 	.globl _TXD1
                                    123 	.globl _SCK
                                    124 	.globl _IE_SPI0
                                    125 	.globl _IE_TKEY
                                    126 	.globl _IE_USB
                                    127 	.globl _IE_ADC
                                    128 	.globl _IE_UART1
                                    129 	.globl _IE_PWMX
                                    130 	.globl _IE_GPIO
                                    131 	.globl _IE_WDOG
                                    132 	.globl _PX0
                                    133 	.globl _PT0
                                    134 	.globl _PX1
                                    135 	.globl _PT1
                                    136 	.globl _PS
                                    137 	.globl _PT2
                                    138 	.globl _PL_FLAG
                                    139 	.globl _PH_FLAG
                                    140 	.globl _EX0
                                    141 	.globl _ET0
                                    142 	.globl _EX1
                                    143 	.globl _ET1
                                    144 	.globl _ES
                                    145 	.globl _ET2
                                    146 	.globl _E_DIS
                                    147 	.globl _EA
                                    148 	.globl _P
                                    149 	.globl _F1
                                    150 	.globl _OV
                                    151 	.globl _RS0
                                    152 	.globl _RS1
                                    153 	.globl _F0
                                    154 	.globl _AC
                                    155 	.globl _CY
                                    156 	.globl _UEP1_DMA_H
                                    157 	.globl _UEP1_DMA_L
                                    158 	.globl _UEP1_DMA
                                    159 	.globl _UEP0_DMA_H
                                    160 	.globl _UEP0_DMA_L
                                    161 	.globl _UEP0_DMA
                                    162 	.globl _UEP2_3_MOD
                                    163 	.globl _UEP4_1_MOD
                                    164 	.globl _UEP3_DMA_H
                                    165 	.globl _UEP3_DMA_L
                                    166 	.globl _UEP3_DMA
                                    167 	.globl _UEP2_DMA_H
                                    168 	.globl _UEP2_DMA_L
                                    169 	.globl _UEP2_DMA
                                    170 	.globl _USB_DEV_AD
                                    171 	.globl _USB_CTRL
                                    172 	.globl _USB_INT_EN
                                    173 	.globl _UEP4_T_LEN
                                    174 	.globl _UEP4_CTRL
                                    175 	.globl _UEP0_T_LEN
                                    176 	.globl _UEP0_CTRL
                                    177 	.globl _USB_RX_LEN
                                    178 	.globl _USB_MIS_ST
                                    179 	.globl _USB_INT_ST
                                    180 	.globl _USB_INT_FG
                                    181 	.globl _UEP3_T_LEN
                                    182 	.globl _UEP3_CTRL
                                    183 	.globl _UEP2_T_LEN
                                    184 	.globl _UEP2_CTRL
                                    185 	.globl _UEP1_T_LEN
                                    186 	.globl _UEP1_CTRL
                                    187 	.globl _UDEV_CTRL
                                    188 	.globl _USB_C_CTRL
                                    189 	.globl _TKEY_DATH
                                    190 	.globl _TKEY_DATL
                                    191 	.globl _TKEY_DAT
                                    192 	.globl _TKEY_CTRL
                                    193 	.globl _ADC_DATA
                                    194 	.globl _ADC_CFG
                                    195 	.globl _ADC_CTRL
                                    196 	.globl _SBAUD1
                                    197 	.globl _SBUF1
                                    198 	.globl _SCON1
                                    199 	.globl _SPI0_SETUP
                                    200 	.globl _SPI0_CK_SE
                                    201 	.globl _SPI0_CTRL
                                    202 	.globl _SPI0_DATA
                                    203 	.globl _SPI0_STAT
                                    204 	.globl _PWM_CK_SE
                                    205 	.globl _PWM_CTRL
                                    206 	.globl _PWM_DATA1
                                    207 	.globl _PWM_DATA2
                                    208 	.globl _T2CAP1H
                                    209 	.globl _T2CAP1L
                                    210 	.globl _T2CAP1
                                    211 	.globl _TH2
                                    212 	.globl _TL2
                                    213 	.globl _T2COUNT
                                    214 	.globl _RCAP2H
                                    215 	.globl _RCAP2L
                                    216 	.globl _RCAP2
                                    217 	.globl _T2MOD
                                    218 	.globl _T2CON
                                    219 	.globl _SBUF
                                    220 	.globl _SCON
                                    221 	.globl _TH1
                                    222 	.globl _TH0
                                    223 	.globl _TL1
                                    224 	.globl _TL0
                                    225 	.globl _TMOD
                                    226 	.globl _TCON
                                    227 	.globl _XBUS_AUX
                                    228 	.globl _PIN_FUNC
                                    229 	.globl _P3_DIR_PU
                                    230 	.globl _P3_MOD_OC
                                    231 	.globl _P3
                                    232 	.globl _P2
                                    233 	.globl _P1_DIR_PU
                                    234 	.globl _P1_MOD_OC
                                    235 	.globl _P1
                                    236 	.globl _ROM_CTRL
                                    237 	.globl _ROM_DATA_H
                                    238 	.globl _ROM_DATA_L
                                    239 	.globl _ROM_DATA
                                    240 	.globl _ROM_ADDR_H
                                    241 	.globl _ROM_ADDR_L
                                    242 	.globl _ROM_ADDR
                                    243 	.globl _GPIO_IE
                                    244 	.globl _IP_EX
                                    245 	.globl _IE_EX
                                    246 	.globl _IP
                                    247 	.globl _IE
                                    248 	.globl _WDOG_COUNT
                                    249 	.globl _RESET_KEEP
                                    250 	.globl _WAKE_CTRL
                                    251 	.globl _CLOCK_CFG
                                    252 	.globl _PCON
                                    253 	.globl _GLOBAL_CFG
                                    254 	.globl _SAFE_MOD
                                    255 	.globl _DPH
                                    256 	.globl _DPL
                                    257 	.globl _SP
                                    258 	.globl _B
                                    259 	.globl _ACC
                                    260 	.globl _PSW
                                    261 	.globl _serial_println_float_PARM_2
                                    262 	.globl _serial_print_float_PARM_2
                                    263 	.globl _serial_print_uint_base_PARM_2
                                    264 	.globl _serial_begin
                                    265 	.globl _serial_available
                                    266 	.globl _serial_read
                                    267 	.globl _serial_write
                                    268 	.globl _serial_print_str
                                    269 	.globl _serial_print_int
                                    270 	.globl _serial_print_uint
                                    271 	.globl _serial_print_uint_base
                                    272 	.globl _serial_print_float
                                    273 	.globl _serial_println
                                    274 	.globl _serial_println_str
                                    275 	.globl _serial_println_int
                                    276 	.globl _serial_println_uint
                                    277 	.globl _serial_println_float
                                    278 ;--------------------------------------------------------
                                    279 ; special function registers
                                    280 ;--------------------------------------------------------
                                    281 	.area RSEG    (ABS,DATA)
      000000                        282 	.org 0x0000
                           0000D0   283 _PSW	=	0x00d0
                           0000E0   284 _ACC	=	0x00e0
                           0000F0   285 _B	=	0x00f0
                           000081   286 _SP	=	0x0081
                           000082   287 _DPL	=	0x0082
                           000083   288 _DPH	=	0x0083
                           0000A1   289 _SAFE_MOD	=	0x00a1
                           0000B1   290 _GLOBAL_CFG	=	0x00b1
                           000087   291 _PCON	=	0x0087
                           0000B9   292 _CLOCK_CFG	=	0x00b9
                           0000A9   293 _WAKE_CTRL	=	0x00a9
                           0000FE   294 _RESET_KEEP	=	0x00fe
                           0000FF   295 _WDOG_COUNT	=	0x00ff
                           0000A8   296 _IE	=	0x00a8
                           0000B8   297 _IP	=	0x00b8
                           0000E8   298 _IE_EX	=	0x00e8
                           0000E9   299 _IP_EX	=	0x00e9
                           0000C7   300 _GPIO_IE	=	0x00c7
                           008584   301 _ROM_ADDR	=	0x8584
                           000084   302 _ROM_ADDR_L	=	0x0084
                           000085   303 _ROM_ADDR_H	=	0x0085
                           008F8E   304 _ROM_DATA	=	0x8f8e
                           00008E   305 _ROM_DATA_L	=	0x008e
                           00008F   306 _ROM_DATA_H	=	0x008f
                           000086   307 _ROM_CTRL	=	0x0086
                           000090   308 _P1	=	0x0090
                           000092   309 _P1_MOD_OC	=	0x0092
                           000093   310 _P1_DIR_PU	=	0x0093
                           0000A0   311 _P2	=	0x00a0
                           0000B0   312 _P3	=	0x00b0
                           000096   313 _P3_MOD_OC	=	0x0096
                           000097   314 _P3_DIR_PU	=	0x0097
                           0000C6   315 _PIN_FUNC	=	0x00c6
                           0000A2   316 _XBUS_AUX	=	0x00a2
                           000088   317 _TCON	=	0x0088
                           000089   318 _TMOD	=	0x0089
                           00008A   319 _TL0	=	0x008a
                           00008B   320 _TL1	=	0x008b
                           00008C   321 _TH0	=	0x008c
                           00008D   322 _TH1	=	0x008d
                           000098   323 _SCON	=	0x0098
                           000099   324 _SBUF	=	0x0099
                           0000C8   325 _T2CON	=	0x00c8
                           0000C9   326 _T2MOD	=	0x00c9
                           00CBCA   327 _RCAP2	=	0xcbca
                           0000CA   328 _RCAP2L	=	0x00ca
                           0000CB   329 _RCAP2H	=	0x00cb
                           00CDCC   330 _T2COUNT	=	0xcdcc
                           0000CC   331 _TL2	=	0x00cc
                           0000CD   332 _TH2	=	0x00cd
                           00CFCE   333 _T2CAP1	=	0xcfce
                           0000CE   334 _T2CAP1L	=	0x00ce
                           0000CF   335 _T2CAP1H	=	0x00cf
                           00009B   336 _PWM_DATA2	=	0x009b
                           00009C   337 _PWM_DATA1	=	0x009c
                           00009D   338 _PWM_CTRL	=	0x009d
                           00009E   339 _PWM_CK_SE	=	0x009e
                           0000F8   340 _SPI0_STAT	=	0x00f8
                           0000F9   341 _SPI0_DATA	=	0x00f9
                           0000FA   342 _SPI0_CTRL	=	0x00fa
                           0000FB   343 _SPI0_CK_SE	=	0x00fb
                           0000FC   344 _SPI0_SETUP	=	0x00fc
                           0000C0   345 _SCON1	=	0x00c0
                           0000C1   346 _SBUF1	=	0x00c1
                           0000C2   347 _SBAUD1	=	0x00c2
                           000080   348 _ADC_CTRL	=	0x0080
                           00009A   349 _ADC_CFG	=	0x009a
                           00009F   350 _ADC_DATA	=	0x009f
                           0000C3   351 _TKEY_CTRL	=	0x00c3
                           00C5C4   352 _TKEY_DAT	=	0xc5c4
                           0000C4   353 _TKEY_DATL	=	0x00c4
                           0000C5   354 _TKEY_DATH	=	0x00c5
                           000091   355 _USB_C_CTRL	=	0x0091
                           0000D1   356 _UDEV_CTRL	=	0x00d1
                           0000D2   357 _UEP1_CTRL	=	0x00d2
                           0000D3   358 _UEP1_T_LEN	=	0x00d3
                           0000D4   359 _UEP2_CTRL	=	0x00d4
                           0000D5   360 _UEP2_T_LEN	=	0x00d5
                           0000D6   361 _UEP3_CTRL	=	0x00d6
                           0000D7   362 _UEP3_T_LEN	=	0x00d7
                           0000D8   363 _USB_INT_FG	=	0x00d8
                           0000D9   364 _USB_INT_ST	=	0x00d9
                           0000DA   365 _USB_MIS_ST	=	0x00da
                           0000DB   366 _USB_RX_LEN	=	0x00db
                           0000DC   367 _UEP0_CTRL	=	0x00dc
                           0000DD   368 _UEP0_T_LEN	=	0x00dd
                           0000DE   369 _UEP4_CTRL	=	0x00de
                           0000DF   370 _UEP4_T_LEN	=	0x00df
                           0000E1   371 _USB_INT_EN	=	0x00e1
                           0000E2   372 _USB_CTRL	=	0x00e2
                           0000E3   373 _USB_DEV_AD	=	0x00e3
                           00E5E4   374 _UEP2_DMA	=	0xe5e4
                           0000E4   375 _UEP2_DMA_L	=	0x00e4
                           0000E5   376 _UEP2_DMA_H	=	0x00e5
                           00E7E6   377 _UEP3_DMA	=	0xe7e6
                           0000E6   378 _UEP3_DMA_L	=	0x00e6
                           0000E7   379 _UEP3_DMA_H	=	0x00e7
                           0000EA   380 _UEP4_1_MOD	=	0x00ea
                           0000EB   381 _UEP2_3_MOD	=	0x00eb
                           00EDEC   382 _UEP0_DMA	=	0xedec
                           0000EC   383 _UEP0_DMA_L	=	0x00ec
                           0000ED   384 _UEP0_DMA_H	=	0x00ed
                           00EFEE   385 _UEP1_DMA	=	0xefee
                           0000EE   386 _UEP1_DMA_L	=	0x00ee
                           0000EF   387 _UEP1_DMA_H	=	0x00ef
                                    388 ;--------------------------------------------------------
                                    389 ; special function bits
                                    390 ;--------------------------------------------------------
                                    391 	.area RSEG    (ABS,DATA)
      000000                        392 	.org 0x0000
                           0000D7   393 _CY	=	0x00d7
                           0000D6   394 _AC	=	0x00d6
                           0000D5   395 _F0	=	0x00d5
                           0000D4   396 _RS1	=	0x00d4
                           0000D3   397 _RS0	=	0x00d3
                           0000D2   398 _OV	=	0x00d2
                           0000D1   399 _F1	=	0x00d1
                           0000D0   400 _P	=	0x00d0
                           0000AF   401 _EA	=	0x00af
                           0000AE   402 _E_DIS	=	0x00ae
                           0000AD   403 _ET2	=	0x00ad
                           0000AC   404 _ES	=	0x00ac
                           0000AB   405 _ET1	=	0x00ab
                           0000AA   406 _EX1	=	0x00aa
                           0000A9   407 _ET0	=	0x00a9
                           0000A8   408 _EX0	=	0x00a8
                           0000BF   409 _PH_FLAG	=	0x00bf
                           0000BE   410 _PL_FLAG	=	0x00be
                           0000BD   411 _PT2	=	0x00bd
                           0000BC   412 _PS	=	0x00bc
                           0000BB   413 _PT1	=	0x00bb
                           0000BA   414 _PX1	=	0x00ba
                           0000B9   415 _PT0	=	0x00b9
                           0000B8   416 _PX0	=	0x00b8
                           0000EF   417 _IE_WDOG	=	0x00ef
                           0000EE   418 _IE_GPIO	=	0x00ee
                           0000ED   419 _IE_PWMX	=	0x00ed
                           0000EC   420 _IE_UART1	=	0x00ec
                           0000EB   421 _IE_ADC	=	0x00eb
                           0000EA   422 _IE_USB	=	0x00ea
                           0000E9   423 _IE_TKEY	=	0x00e9
                           0000E8   424 _IE_SPI0	=	0x00e8
                           000097   425 _SCK	=	0x0097
                           000097   426 _TXD1	=	0x0097
                           000097   427 _TIN5	=	0x0097
                           000096   428 _MISO	=	0x0096
                           000096   429 _RXD1	=	0x0096
                           000096   430 _TIN4	=	0x0096
                           000095   431 _MOSI	=	0x0095
                           000095   432 _PWM1	=	0x0095
                           000095   433 _TIN3	=	0x0095
                           000095   434 _UCC2	=	0x0095
                           000095   435 _AIN2	=	0x0095
                           000094   436 _T2_	=	0x0094
                           000094   437 _CAP1_	=	0x0094
                           000094   438 _SCS	=	0x0094
                           000094   439 _TIN2	=	0x0094
                           000094   440 _UCC1	=	0x0094
                           000094   441 _AIN1	=	0x0094
                           000093   442 _TXD_	=	0x0093
                           000092   443 _RXD_	=	0x0092
                           000091   444 _T2EX	=	0x0091
                           000091   445 _CAP2	=	0x0091
                           000091   446 _TIN1	=	0x0091
                           000091   447 _VBUS2	=	0x0091
                           000091   448 _AIN0	=	0x0091
                           000090   449 _T2	=	0x0090
                           000090   450 _CAP1	=	0x0090
                           000090   451 _TIN0	=	0x0090
                           000097   452 _P1_7	=	0x0097
                           000096   453 _P1_6	=	0x0096
                           000095   454 _P1_5	=	0x0095
                           000094   455 _P1_4	=	0x0094
                           000093   456 _P1_3	=	0x0093
                           000092   457 _P1_2	=	0x0092
                           000091   458 _P1_1	=	0x0091
                           000090   459 _P1_0	=	0x0090
                           0000B7   460 _UDM	=	0x00b7
                           0000B6   461 _UDP	=	0x00b6
                           0000B5   462 _T1	=	0x00b5
                           0000B4   463 _PWM2	=	0x00b4
                           0000B4   464 _RXD1_	=	0x00b4
                           0000B4   465 _T0	=	0x00b4
                           0000B3   466 _INT1	=	0x00b3
                           0000B2   467 _TXD1_	=	0x00b2
                           0000B2   468 _INT0	=	0x00b2
                           0000B2   469 _VBUS1	=	0x00b2
                           0000B2   470 _AIN3	=	0x00b2
                           0000B1   471 _PWM2_	=	0x00b1
                           0000B1   472 _TXD	=	0x00b1
                           0000B0   473 _PWM1_	=	0x00b0
                           0000B0   474 _RXD	=	0x00b0
                           0000B7   475 _P3_7	=	0x00b7
                           0000B6   476 _P3_6	=	0x00b6
                           0000B5   477 _P3_5	=	0x00b5
                           0000B4   478 _P3_4	=	0x00b4
                           0000B3   479 _P3_3	=	0x00b3
                           0000B2   480 _P3_2	=	0x00b2
                           0000B1   481 _P3_1	=	0x00b1
                           0000B0   482 _P3_0	=	0x00b0
                           00008F   483 _TF1	=	0x008f
                           00008E   484 _TR1	=	0x008e
                           00008D   485 _TF0	=	0x008d
                           00008C   486 _TR0	=	0x008c
                           00008B   487 _IE1	=	0x008b
                           00008A   488 _IT1	=	0x008a
                           000089   489 _IE0	=	0x0089
                           000088   490 _IT0	=	0x0088
                           00009F   491 _SM0	=	0x009f
                           00009E   492 _SM1	=	0x009e
                           00009D   493 _SM2	=	0x009d
                           00009C   494 _REN	=	0x009c
                           00009B   495 _TB8	=	0x009b
                           00009A   496 _RB8	=	0x009a
                           000099   497 _TI	=	0x0099
                           000098   498 _RI	=	0x0098
                           0000CF   499 _TF2	=	0x00cf
                           0000CF   500 _CAP1F	=	0x00cf
                           0000CE   501 _EXF2	=	0x00ce
                           0000CD   502 _RCLK	=	0x00cd
                           0000CC   503 _TCLK	=	0x00cc
                           0000CB   504 _EXEN2	=	0x00cb
                           0000CA   505 _TR2	=	0x00ca
                           0000C9   506 _C_T2	=	0x00c9
                           0000C8   507 _CP_RL2	=	0x00c8
                           0000FF   508 _S0_FST_ACT	=	0x00ff
                           0000FE   509 _S0_IF_OV	=	0x00fe
                           0000FD   510 _S0_IF_FIRST	=	0x00fd
                           0000FC   511 _S0_IF_BYTE	=	0x00fc
                           0000FB   512 _S0_FREE	=	0x00fb
                           0000FA   513 _S0_T_FIFO	=	0x00fa
                           0000F8   514 _S0_R_FIFO	=	0x00f8
                           0000C7   515 _U1SM0	=	0x00c7
                           0000C5   516 _U1SMOD	=	0x00c5
                           0000C4   517 _U1REN	=	0x00c4
                           0000C3   518 _U1TB8	=	0x00c3
                           0000C2   519 _U1RB8	=	0x00c2
                           0000C1   520 _U1TI	=	0x00c1
                           0000C0   521 _U1RI	=	0x00c0
                           000087   522 _CMPO	=	0x0087
                           000086   523 _CMP_IF	=	0x0086
                           000085   524 _ADC_IF	=	0x0085
                           000084   525 _ADC_START	=	0x0084
                           000083   526 _CMP_CHAN	=	0x0083
                           000081   527 _ADC_CHAN1	=	0x0081
                           000080   528 _ADC_CHAN0	=	0x0080
                           0000DF   529 _U_IS_NAK	=	0x00df
                           0000DE   530 _U_TOG_OK	=	0x00de
                           0000DD   531 _U_SIE_FREE	=	0x00dd
                           0000DC   532 _UIF_FIFO_OV	=	0x00dc
                           0000DB   533 _UIF_HST_SOF	=	0x00db
                           0000DA   534 _UIF_SUSPEND	=	0x00da
                           0000D9   535 _UIF_TRANSFER	=	0x00d9
                           0000D8   536 _UIF_DETECT	=	0x00d8
                           0000D8   537 _UIF_BUS_RST	=	0x00d8
                                    538 ;--------------------------------------------------------
                                    539 ; overlayable register banks
                                    540 ;--------------------------------------------------------
                                    541 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        542 	.ds 8
                                    543 ;--------------------------------------------------------
                                    544 ; internal ram data
                                    545 ;--------------------------------------------------------
                                    546 	.area DSEG    (DATA)
                                    547 ;--------------------------------------------------------
                                    548 ; overlayable items in internal ram
                                    549 ;--------------------------------------------------------
                                    550 ;--------------------------------------------------------
                                    551 ; indirectly addressable internal ram data
                                    552 ;--------------------------------------------------------
                                    553 	.area ISEG    (DATA)
                                    554 ;--------------------------------------------------------
                                    555 ; absolute internal ram data
                                    556 ;--------------------------------------------------------
                                    557 	.area IABS    (ABS,DATA)
                                    558 	.area IABS    (ABS,DATA)
                                    559 ;--------------------------------------------------------
                                    560 ; bit data
                                    561 ;--------------------------------------------------------
                                    562 	.area BSEG    (BIT)
                                    563 ;--------------------------------------------------------
                                    564 ; paged external ram data
                                    565 ;--------------------------------------------------------
                                    566 	.area PSEG    (PAG,XDATA)
                                    567 ;--------------------------------------------------------
                                    568 ; uninitialized external ram data
                                    569 ;--------------------------------------------------------
                                    570 	.area XSEG    (XDATA)
      00018F                        571 _serial_print_uint_base_PARM_2:
      00018F                        572 	.ds 2
      000191                        573 _serial_print_float_PARM_2:
      000191                        574 	.ds 2
      000193                        575 _serial_println_float_PARM_2:
      000193                        576 	.ds 2
                                    577 ;--------------------------------------------------------
                                    578 ; absolute external ram data
                                    579 ;--------------------------------------------------------
                                    580 	.area XABS    (ABS,XDATA)
                                    581 ;--------------------------------------------------------
                                    582 ; initialized external ram data
                                    583 ;--------------------------------------------------------
                                    584 	.area XISEG   (XDATA)
                                    585 	.area HOME    (CODE)
                                    586 	.area GSINIT0 (CODE)
                                    587 	.area GSINIT1 (CODE)
                                    588 	.area GSINIT2 (CODE)
                                    589 	.area GSINIT3 (CODE)
                                    590 	.area GSINIT4 (CODE)
                                    591 	.area GSINIT5 (CODE)
                                    592 	.area GSINIT  (CODE)
                                    593 	.area GSFINAL (CODE)
                                    594 	.area CSEG    (CODE)
                                    595 ;--------------------------------------------------------
                                    596 ; global & static initialisations
                                    597 ;--------------------------------------------------------
                                    598 	.area HOME    (CODE)
                                    599 	.area GSINIT  (CODE)
                                    600 	.area GSFINAL (CODE)
                                    601 	.area GSINIT  (CODE)
                                    602 ;--------------------------------------------------------
                                    603 ; Home
                                    604 ;--------------------------------------------------------
                                    605 	.area HOME    (CODE)
                                    606 	.area HOME    (CODE)
                                    607 ;--------------------------------------------------------
                                    608 ; code
                                    609 ;--------------------------------------------------------
                                    610 	.area CSEG    (CODE)
                                    611 ;------------------------------------------------------------
                                    612 ;Allocation info for local variables in function 'serial_begin'
                                    613 ;------------------------------------------------------------
                                    614 ;baud                      Allocated with name '_serial_begin_baud_65536_183'
                                    615 ;------------------------------------------------------------
                                    616 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:152: void serial_begin(unsigned long baud) {
                                    617 ;	-----------------------------------------
                                    618 ;	 function serial_begin
                                    619 ;	-----------------------------------------
      000D4C                        620 _serial_begin:
                           000007   621 	ar7 = 0x07
                           000006   622 	ar6 = 0x06
                           000005   623 	ar5 = 0x05
                           000004   624 	ar4 = 0x04
                           000003   625 	ar3 = 0x03
                           000002   626 	ar2 = 0x02
                           000001   627 	ar1 = 0x01
                           000000   628 	ar0 = 0x00
                                    629 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:153: (void)baud;
                                    630 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:154: }
      000D4C 22               [24]  631 	ret
                                    632 ;------------------------------------------------------------
                                    633 ;Allocation info for local variables in function 'serial_available'
                                    634 ;------------------------------------------------------------
                                    635 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:156: int serial_available(void) {
                                    636 ;	-----------------------------------------
                                    637 ;	 function serial_available
                                    638 ;	-----------------------------------------
      000D4D                        639 _serial_available:
                                    640 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:157: return 0;
      000D4D 90 00 00         [24]  641 	mov	dptr,#0x0000
                                    642 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:158: }
      000D50 22               [24]  643 	ret
                                    644 ;------------------------------------------------------------
                                    645 ;Allocation info for local variables in function 'serial_read'
                                    646 ;------------------------------------------------------------
                                    647 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:160: int serial_read(void) {
                                    648 ;	-----------------------------------------
                                    649 ;	 function serial_read
                                    650 ;	-----------------------------------------
      000D51                        651 _serial_read:
                                    652 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:161: return -1;
      000D51 90 FF FF         [24]  653 	mov	dptr,#0xffff
                                    654 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:162: }
      000D54 22               [24]  655 	ret
                                    656 ;------------------------------------------------------------
                                    657 ;Allocation info for local variables in function 'serial_write'
                                    658 ;------------------------------------------------------------
                                    659 ;c                         Allocated with name '_serial_write_c_65536_189'
                                    660 ;------------------------------------------------------------
                                    661 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:164: size_t serial_write(char c) {
                                    662 ;	-----------------------------------------
                                    663 ;	 function serial_write
                                    664 ;	-----------------------------------------
      000D55                        665 _serial_write:
                                    666 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:166: return (size_t)1;
      000D55 90 00 01         [24]  667 	mov	dptr,#0x0001
                                    668 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:167: }
      000D58 22               [24]  669 	ret
                                    670 ;------------------------------------------------------------
                                    671 ;Allocation info for local variables in function 'serial_print_str'
                                    672 ;------------------------------------------------------------
                                    673 ;text                      Allocated with name '_serial_print_str_text_65536_191'
                                    674 ;------------------------------------------------------------
                                    675 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:169: void serial_print_str(const char* text) {
                                    676 ;	-----------------------------------------
                                    677 ;	 function serial_print_str
                                    678 ;	-----------------------------------------
      000D59                        679 _serial_print_str:
                                    680 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:170: (void)text;
                                    681 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:171: }
      000D59 22               [24]  682 	ret
                                    683 ;------------------------------------------------------------
                                    684 ;Allocation info for local variables in function 'serial_print_int'
                                    685 ;------------------------------------------------------------
                                    686 ;value                     Allocated with name '_serial_print_int_value_65536_193'
                                    687 ;------------------------------------------------------------
                                    688 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:173: void serial_print_int(int value) {
                                    689 ;	-----------------------------------------
                                    690 ;	 function serial_print_int
                                    691 ;	-----------------------------------------
      000D5A                        692 _serial_print_int:
                                    693 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:174: (void)value;
                                    694 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:175: }
      000D5A 22               [24]  695 	ret
                                    696 ;------------------------------------------------------------
                                    697 ;Allocation info for local variables in function 'serial_print_uint'
                                    698 ;------------------------------------------------------------
                                    699 ;value                     Allocated with name '_serial_print_uint_value_65536_195'
                                    700 ;------------------------------------------------------------
                                    701 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:177: void serial_print_uint(unsigned long value) {
                                    702 ;	-----------------------------------------
                                    703 ;	 function serial_print_uint
                                    704 ;	-----------------------------------------
      000D5B                        705 _serial_print_uint:
                                    706 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:178: (void)value;
                                    707 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:179: }
      000D5B 22               [24]  708 	ret
                                    709 ;------------------------------------------------------------
                                    710 ;Allocation info for local variables in function 'serial_print_uint_base'
                                    711 ;------------------------------------------------------------
                                    712 ;base                      Allocated with name '_serial_print_uint_base_PARM_2'
                                    713 ;value                     Allocated with name '_serial_print_uint_base_value_65536_197'
                                    714 ;------------------------------------------------------------
                                    715 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:181: void serial_print_uint_base(unsigned long value, int base) {
                                    716 ;	-----------------------------------------
                                    717 ;	 function serial_print_uint_base
                                    718 ;	-----------------------------------------
      000D5C                        719 _serial_print_uint_base:
                                    720 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:183: (void)base;
                                    721 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:184: }
      000D5C 22               [24]  722 	ret
                                    723 ;------------------------------------------------------------
                                    724 ;Allocation info for local variables in function 'serial_print_float'
                                    725 ;------------------------------------------------------------
                                    726 ;digits                    Allocated with name '_serial_print_float_PARM_2'
                                    727 ;value                     Allocated with name '_serial_print_float_value_65536_199'
                                    728 ;------------------------------------------------------------
                                    729 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:186: void serial_print_float(float value, int digits) {
                                    730 ;	-----------------------------------------
                                    731 ;	 function serial_print_float
                                    732 ;	-----------------------------------------
      000D5D                        733 _serial_print_float:
                                    734 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:188: (void)digits;
                                    735 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:189: }
      000D5D 22               [24]  736 	ret
                                    737 ;------------------------------------------------------------
                                    738 ;Allocation info for local variables in function 'serial_println'
                                    739 ;------------------------------------------------------------
                                    740 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:191: void serial_println(void) {
                                    741 ;	-----------------------------------------
                                    742 ;	 function serial_println
                                    743 ;	-----------------------------------------
      000D5E                        744 _serial_println:
                                    745 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:192: }
      000D5E 22               [24]  746 	ret
                                    747 ;------------------------------------------------------------
                                    748 ;Allocation info for local variables in function 'serial_println_str'
                                    749 ;------------------------------------------------------------
                                    750 ;text                      Allocated with name '_serial_println_str_text_65536_204'
                                    751 ;------------------------------------------------------------
                                    752 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:194: void serial_println_str(const char* text) {
                                    753 ;	-----------------------------------------
                                    754 ;	 function serial_println_str
                                    755 ;	-----------------------------------------
      000D5F                        756 _serial_println_str:
                                    757 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:195: (void)text;
                                    758 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:196: }
      000D5F 22               [24]  759 	ret
                                    760 ;------------------------------------------------------------
                                    761 ;Allocation info for local variables in function 'serial_println_int'
                                    762 ;------------------------------------------------------------
                                    763 ;value                     Allocated with name '_serial_println_int_value_65536_206'
                                    764 ;------------------------------------------------------------
                                    765 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:198: void serial_println_int(int value) {
                                    766 ;	-----------------------------------------
                                    767 ;	 function serial_println_int
                                    768 ;	-----------------------------------------
      000D60                        769 _serial_println_int:
                                    770 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:199: (void)value;
                                    771 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:200: }
      000D60 22               [24]  772 	ret
                                    773 ;------------------------------------------------------------
                                    774 ;Allocation info for local variables in function 'serial_println_uint'
                                    775 ;------------------------------------------------------------
                                    776 ;value                     Allocated with name '_serial_println_uint_value_65536_208'
                                    777 ;------------------------------------------------------------
                                    778 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:202: void serial_println_uint(unsigned long value) {
                                    779 ;	-----------------------------------------
                                    780 ;	 function serial_println_uint
                                    781 ;	-----------------------------------------
      000D61                        782 _serial_println_uint:
                                    783 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:203: (void)value;
                                    784 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:204: }
      000D61 22               [24]  785 	ret
                                    786 ;------------------------------------------------------------
                                    787 ;Allocation info for local variables in function 'serial_println_float'
                                    788 ;------------------------------------------------------------
                                    789 ;digits                    Allocated with name '_serial_println_float_PARM_2'
                                    790 ;value                     Allocated with name '_serial_println_float_value_65536_210'
                                    791 ;------------------------------------------------------------
                                    792 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:206: void serial_println_float(float value, int digits) {
                                    793 ;	-----------------------------------------
                                    794 ;	 function serial_println_float
                                    795 ;	-----------------------------------------
      000D62                        796 _serial_println_float:
                                    797 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:208: (void)digits;
                                    798 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:209: }
      000D62 22               [24]  799 	ret
                                    800 	.area CSEG    (CODE)
                                    801 	.area CONST   (CODE)
                                    802 	.area XINIT   (CODE)
                                    803 	.area CABS    (ABS,CODE)
