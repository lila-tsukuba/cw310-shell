## This XDC file is based on the original CW310 XDC file (https://github.com/newaetech/cw310-bergen-board/blob/6ceac0065fca25ca307650f9d8a4f984daa73b87/pins/bergen.xdc)

############################
####   Voltage rules    ####
############################
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

############################
####    DIP Switches    ####
############################

set_property -dict { PACKAGE_PIN   U9  IOSTANDARD   LVCMOS18 } [get_ports { USR_DIP[0] }]; #IO_0_VRN_33
set_property -dict { PACKAGE_PIN   V7  IOSTANDARD   LVCMOS18 } [get_ports { USR_DIP[1] }]; #IO_L2N_T0_33
set_property -dict { PACKAGE_PIN   V8  IOSTANDARD   LVCMOS18 } [get_ports { USR_DIP[2] }]; #IO_L2P_T0_33
set_property -dict { PACKAGE_PIN   W9  IOSTANDARD   LVCMOS18 } [get_ports { USR_DIP[3] }]; #IO_L3N_T0_DQS_33
set_property -dict { PACKAGE_PIN   V9  IOSTANDARD   LVCMOS18 } [get_ports { USR_DIP[4] }]; #IO_L6P_T0_33
set_property -dict { PACKAGE_PIN   W8  IOSTANDARD   LVCMOS18 } [get_ports { USR_DIP[5] }]; #IO_L6N_T0_VREF_33
set_property -dict { PACKAGE_PIN  W10  IOSTANDARD   LVCMOS18 } [get_ports { USR_DIP[6] }]; #IO_L3P_T0_DQS_33
set_property -dict { PACKAGE_PIN  V11  IOSTANDARD   LVCMOS18 } [get_ports { USR_DIP[7] }]; #IO_L1P_T0_33


############################
####       LEDs         ####
############################

set_property -dict { PACKAGE_PIN  M26  IOSTANDARD   LVCMOS33 } [get_ports { USR_LED[0] }]; #IO_L5N_T0_13
set_property -dict { PACKAGE_PIN  M25  IOSTANDARD   LVCMOS33 } [get_ports { USR_LED[1] }]; #IO_L3P_T0_DQS_13
set_property -dict { PACKAGE_PIN  M24  IOSTANDARD   LVCMOS33 } [get_ports { USR_LED[2] }]; #IO_L8P_T1_13
set_property -dict { PACKAGE_PIN  M19  IOSTANDARD   LVCMOS33 } [get_ports { USR_LED[3] }]; #IO_L22N_T3_13
set_property -dict { PACKAGE_PIN  L25  IOSTANDARD   LVCMOS33 } [get_ports { USR_LED[4] }]; #IO_L3N_T0_DQS_13
set_property -dict { PACKAGE_PIN  K26  IOSTANDARD   LVCMOS33 } [get_ports { USR_LED[5] }]; #IO_L1N_T0_13
set_property -dict { PACKAGE_PIN  L24  IOSTANDARD   LVCMOS33 } [get_ports { USR_LED[6] }]; #IO_L8N_T1_13
set_property -dict { PACKAGE_PIN  K25  IOSTANDARD   LVCMOS33 } [get_ports { USR_LED[7] }]; #IO_L1P_T0_13


############################
####    User switches   ####
############################
# set_property -dict { PACKAGE_PIN  Y11  IOSTANDARD   LVCMOS18 } [get_ports { USRSW0 }]; #IO_L5P_T0_33
# set_property -dict { PACKAGE_PIN  Y10  IOSTANDARD   LVCMOS18 } [get_ports { USRSW1 }]; #IO_L5N_T0_33
set_property -dict { PACKAGE_PIN   Y7  IOSTANDARD   LVCMOS18 } [get_ports { RESET_N }]; #IO_L4N_T0_33


############################
####   Clock settings   ####
############################
# The signal labeled PLL_CLK1 in the schematic is named PLL_CLK2 here
# to match output index 2 in the ChipWhisperer Python API (CDCE906 Y4).
set_property -dict { PACKAGE_PIN  N21  IOSTANDARD   LVCMOS33 } [get_ports { PLL_CLK1 }]; #IO_L12P_T1_MRCC_13
set_property -dict { PACKAGE_PIN  R22  IOSTANDARD   LVCMOS33 } [get_ports { PLL_CLK2 }]; #IO_L14P_T2_SRCC_13



##############################
#### ChipWhisperer Header ####
##############################
# set_property -dict { PACKAGE_PIN AB21  IOSTANDARD   LVCMOS33 } [get_ports { CWIO_HS1 }]; #IO_L18P_T2_12; clock out to chipwhisperer
# set_property -dict { PACKAGE_PIN  Y22  IOSTANDARD   LVCMOS33 } [get_ports { CWIO_HS2 }]; #IO_L13P_T2_MRCC_12;  clock in from chipwhisperer
set_property -dict { PACKAGE_PIN AE25  IOSTANDARD   LVCMOS33 } [get_ports { CWIO_TIO1 }]; #IO_L23N_T3_12
set_property -dict { PACKAGE_PIN AF25  IOSTANDARD   LVCMOS33 } [get_ports { CWIO_TIO2 }]; #IO_L20N_T3_12
set_property -dict { PACKAGE_PIN AF23  IOSTANDARD   LVCMOS33 } [get_ports { CWIO_TIO3 }]; #IO_L22N_T3_12
set_property -dict { PACKAGE_PIN AF24  IOSTANDARD   LVCMOS33 } [get_ports { CWIO_TIO4 }]; #IO_L20P_T3_12
# set_property -dict { PACKAGE_PIN AE21  IOSTANDARD   LVCMOS33 } [get_ports { CWIO_MISO }]; #IO_L19N_T3_VREF_12
# set_property -dict { PACKAGE_PIN AF22  IOSTANDARD   LVCMOS33 } [get_ports { CWIO_MOSI }]; #IO_L24N_T3_12
# set_property -dict { PACKAGE_PIN  Y20  IOSTANDARD   LVCMOS33 } [get_ports { CWIO_RESET_N }]; #IO_25_12
# set_property -dict { PACKAGE_PIN AD21  IOSTANDARD   LVCMOS33 } [get_ports { CWIO_TPDIC }]; #IO_L19P_T3_12
# set_property -dict { PACKAGE_PIN AE23  IOSTANDARD   LVCMOS33 } [get_ports { CWIO_TPDID }]; #IO_L22P_T3_12
# set_property -dict { PACKAGE_PIN AE22  IOSTANDARD   LVCMOS33 } [get_ports { CWIO_TSCK }]; #IO_L24P_T3_12


############################
####    USB Interface   ####
############################
set_property -dict { PACKAGE_PIN  Y23  IOSTANDARD   LVCMOS33 } [get_ports { USB_CLK0  }]; #IO_L12P_T1_MRCC_12

# set_property -dict { PACKAGE_PIN  Y25  IOSTANDARD   LVCMOS33 } [get_ports { USB_nALE }]; #IO_L10P_T1_12
set_property -dict { PACKAGE_PIN AA23  IOSTANDARD   LVCMOS33 } [get_ports { USB_CE_N }]; #IO_L11P_T1_SRCC_12
set_property -dict { PACKAGE_PIN AC23  IOSTANDARD   LVCMOS33 } [get_ports { USB_RD_N }]; #IO_L14P_T2_SRCC_12
set_property -dict { PACKAGE_PIN AA25  IOSTANDARD   LVCMOS33 } [get_ports { USB_WR_N }]; #IO_L7P_T1_12
set_property -dict { PACKAGE_PIN AC26  IOSTANDARD   LVCMOS33 } [get_ports { USB_ADDR[0]  }]; #IO_L9N_T1_DQS_12
set_property -dict { PACKAGE_PIN AD26  IOSTANDARD   LVCMOS33 } [get_ports { USB_ADDR[1]  }]; #IO_L21P_T3_DQS_12
set_property -dict { PACKAGE_PIN AD25  IOSTANDARD   LVCMOS33 } [get_ports { USB_ADDR[2]  }]; #IO_L23P_T3_12
set_property -dict { PACKAGE_PIN AE26  IOSTANDARD   LVCMOS33 } [get_ports { USB_ADDR[3]  }]; #IO_L21N_T3_DQS_12
set_property -dict { PACKAGE_PIN AB24  IOSTANDARD   LVCMOS33 } [get_ports { USB_ADDR[4]  }]; #IO_L11N_T1_SRCC_12
set_property -dict { PACKAGE_PIN AC24  IOSTANDARD   LVCMOS33 } [get_ports { USB_ADDR[5]  }]; #IO_L14N_T2_SRCC_12
set_property -dict { PACKAGE_PIN AD24  IOSTANDARD   LVCMOS33 } [get_ports { USB_ADDR[6]  }]; #IO_L16N_T2_12
set_property -dict { PACKAGE_PIN AD23  IOSTANDARD   LVCMOS33 } [get_ports { USB_ADDR[7]  }]; #IO_L16P_T2_12
set_property -dict { PACKAGE_PIN AB26  IOSTANDARD   LVCMOS33 } [get_ports { USB_ADDR[8]  }]; #IO_L9P_T1_DQS_12
set_property -dict { PACKAGE_PIN AB25  IOSTANDARD   LVCMOS33 } [get_ports { USB_ADDR[9]  }]; #IO_L7N_T1_12
set_property -dict { PACKAGE_PIN  W23  IOSTANDARD   LVCMOS33 } [get_ports { USB_ADDR[10] }]; #IO_L8P_T1_12
set_property -dict { PACKAGE_PIN  V23  IOSTANDARD   LVCMOS33 } [get_ports { USB_ADDR[11] }]; #IO_L3P_T0_DQS_12
set_property -dict { PACKAGE_PIN  Y21  IOSTANDARD   LVCMOS33 } [get_ports { USB_ADDR[12] }]; #IO_L15N_T2_DQS_12
set_property -dict { PACKAGE_PIN  U24  IOSTANDARD   LVCMOS33 } [get_ports { USB_ADDR[13] }]; #IO_L2P_T0_12
set_property -dict { PACKAGE_PIN  U22  IOSTANDARD   LVCMOS33 } [get_ports { USB_ADDR[14] }]; #IO_L1P_T0_12
set_property -dict { PACKAGE_PIN  V22  IOSTANDARD   LVCMOS33 } [get_ports { USB_ADDR[15] }]; #IO_L1N_T0_12
set_property -dict { PACKAGE_PIN  U21  IOSTANDARD   LVCMOS33 } [get_ports { USB_ADDR[16] }]; #IO_0_12

### upper 3bits are not used.
# set_property -dict { PACKAGE_PIN  V21  IOSTANDARD   LVCMOS33 } [get_ports { USB_ADDR[17] }]; #IO_L6P_T0_12
# set_property -dict { PACKAGE_PIN  W21  IOSTANDARD   LVCMOS33 } [get_ports { USB_ADDR[18] }]; #IO_L6N_T0_VREF_12
# set_property -dict { PACKAGE_PIN  W20  IOSTANDARD   LVCMOS33 } [get_ports { USB_ADDR[19] }]; #IO_L15P_T2_DQS_12

set_property -dict { PACKAGE_PIN  U25  IOSTANDARD   LVCMOS33 } [get_ports { USB_DATA[0] }]; #IO_L2N_T0_12
set_property -dict { PACKAGE_PIN  U26  IOSTANDARD   LVCMOS33 } [get_ports { USB_DATA[1] }]; #IO_L4P_T0_12
set_property -dict { PACKAGE_PIN AC21  IOSTANDARD   LVCMOS33 } [get_ports { USB_DATA[2] }]; #IO_L18N_T2_12
set_property -dict { PACKAGE_PIN  V24  IOSTANDARD   LVCMOS33 } [get_ports { USB_DATA[3] }]; #IO_L3N_T0_DQS_12
set_property -dict { PACKAGE_PIN  V26  IOSTANDARD   LVCMOS33 } [get_ports { USB_DATA[4] }]; #IO_L4N_T0_12
set_property -dict { PACKAGE_PIN  W26  IOSTANDARD   LVCMOS33 } [get_ports { USB_DATA[5] }]; #IO_L5N_T0_12
set_property -dict { PACKAGE_PIN  W25  IOSTANDARD   LVCMOS33 } [get_ports { USB_DATA[6] }]; #IO_L5P_T0_12
set_property -dict { PACKAGE_PIN  Y26  IOSTANDARD   LVCMOS33 } [get_ports { USB_DATA[7] }]; #IO_L10N_T1_12

# set_property -dict { PACKAGE_PIN  B22  IOSTANDARD   LVCMOS33 } [get_ports { USB_CLK1_SPARE }]; #IO_L2P_T0_D02_14
# set_property -dict { PACKAGE_PIN  T25  IOSTANDARD   LVCMOS33 } [get_ports { USB_SPARE0 }]; #IO_L15N_T2_DQS_13
# set_property -dict { PACKAGE_PIN  G25  IOSTANDARD   LVCMOS33 } [get_ports { USB_SPARE1 }]; #IO_L16P_T2_CSI_B_14
# set_property -dict { PACKAGE_PIN  E25  IOSTANDARD   LVCMOS33 } [get_ports { USB_SPARE2 }]; #IO_L15P_T2_DQS_RDWR_B_14
set_property -dict { PACKAGE_PIN  A23  IOSTANDARD   LVCMOS33 } [get_ports { USB_TRIGGER }]; #IO_L4P_T0_D04_14

# #############################
# #### SAM3X SPI Interface ####
# #############################

# set_property -dict { PACKAGE_PIN  A22  IOSTANDARD   LVCMOS33 } [get_ports { USB_SPI_CIPO }]; #IO_L2N_T0_D03_14
# set_property -dict { PACKAGE_PIN  A24  IOSTANDARD   LVCMOS33 } [get_ports { USB_SPI_COPI }]; #IO_L4N_T0_D05_14
# set_property -dict { PACKAGE_PIN  C26  IOSTANDARD   LVCMOS33 } [get_ports { USB_SPI_CS }]; #IO_L5N_T0_D07_14
# set_property -dict { PACKAGE_PIN  D26  IOSTANDARD   LVCMOS33 } [get_ports { USB_SPI_SCK }]; #IO_L5P_T0_D06_14

# ####################################
# #### SAM3X UART/USART Interface ####
# ####################################
# set_property -dict { PACKAGE_PIN AB22  IOSTANDARD   LVCMOS33 } [get_ports { SAM_RXD0 }]; #IO_L17P_T2_12 - This is an OUTPUT from the FPGA
# set_property -dict { PACKAGE_PIN AA24  IOSTANDARD   LVCMOS33 } [get_ports { SAM_TXD0 }]; #IO_L12N_T1_MRCC_12 - This is an INPUT to the FPGA
# set_property -dict { PACKAGE_PIN AA22  IOSTANDARD   LVCMOS33 } [get_ports { SAM_RXD1 }]; #IO_L13N_T2_MRCC_12 - This is an OUTPUT from FPGA
# set_property -dict { PACKAGE_PIN  W24  IOSTANDARD   LVCMOS33 } [get_ports { SAM_TXD1 }]; #IO_L8N_T1_12 - This is an INPUT to the FPGA

# #####
# # PMODs
# #####

# set_property -dict { PACKAGE_PIN  N17  IOSTANDARD   LVCMOS33 } [get_ports { PMOD1_IO1 }]; #IO_L20N_T3_13
# set_property -dict { PACKAGE_PIN  R26  IOSTANDARD   LVCMOS33 } [get_ports { PMOD1_IO2 }]; #IO_L2P_T0_13
# set_property -dict { PACKAGE_PIN  R23  IOSTANDARD   LVCMOS33 } [get_ports { PMOD1_IO3 }]; #IO_L14N_T2_SRCC_13
# set_property -dict { PACKAGE_PIN  T22  IOSTANDARD   LVCMOS33 } [get_ports { PMOD1_IO4 }]; #IO_L17P_T2_13
# set_property -dict { PACKAGE_PIN  R25  IOSTANDARD   LVCMOS33 } [get_ports { PMOD1_IO5 }]; #IO_L6P_T0_13
# set_property -dict { PACKAGE_PIN  P24  IOSTANDARD   LVCMOS33 } [get_ports { PMOD1_IO6 }]; #IO_L4P_T0_13
# set_property -dict { PACKAGE_PIN  P23  IOSTANDARD   LVCMOS33 } [get_ports { PMOD1_IO7 }]; #IO_L11P_T1_SRCC_13
# set_property -dict { PACKAGE_PIN  T23  IOSTANDARD   LVCMOS33 } [get_ports { PMOD1_IO8 }]; #IO_L17N_T2_13

# set_property -dict { PACKAGE_PIN  M22  IOSTANDARD   LVCMOS33 } [get_ports { PMOD2_IO1 }]; #IO_L10N_T1_13
# set_property -dict { PACKAGE_PIN  M21  IOSTANDARD   LVCMOS33 } [get_ports { PMOD2_IO2 }]; #IO_L10P_T1_13
# set_property -dict { PACKAGE_PIN  N19  IOSTANDARD   LVCMOS33 } [get_ports { PMOD2_IO3 }]; #IO_L7P_T1_13
# set_property -dict { PACKAGE_PIN  P26  IOSTANDARD   LVCMOS33 } [get_ports { PMOD2_IO4 }]; #IO_L2N_T0_13
# set_property -dict { PACKAGE_PIN  N23  IOSTANDARD   LVCMOS33 } [get_ports { PMOD2_IO5 }]; #IO_L11N_T1_SRCC_13
# set_property -dict { PACKAGE_PIN  N26  IOSTANDARD   LVCMOS33 } [get_ports { PMOD2_IO6 }]; #IO_L5P_T0_13
# set_property -dict { PACKAGE_PIN  M20  IOSTANDARD   LVCMOS33 } [get_ports { PMOD2_IO7 }]; #IO_L7N_T1_13
# set_property -dict { PACKAGE_PIN  P25  IOSTANDARD   LVCMOS33 } [get_ports { PMOD2_IO8 }]; #IO_L6N_T0_VREF_13


# #####
# # MicroSD Card - 1.8V Only
# #####

# set_property -dict { PACKAGE_PIN  AD8  IOSTANDARD   LVCMOS18 } [get_ports { SDCLK }]; #IO_L9N_T1_DQS_33
# set_property -dict { PACKAGE_PIN  AF7  IOSTANDARD   LVCMOS18 } [get_ports { SDCMD }]; #IO_L7N_T1_33
# set_property -dict { PACKAGE_PIN AD10  IOSTANDARD   LVCMOS18 } [get_ports { SDDAT0 }]; #IO_L20P_T3_33
# set_property -dict { PACKAGE_PIN  AB9  IOSTANDARD   LVCMOS18 } [get_ports { SDDAT1 }]; #IO_L11N_T1_SRCC_33
# set_property -dict { PACKAGE_PIN  AC7  IOSTANDARD   LVCMOS18 } [get_ports { SDDAT2 }]; #IO_L10N_T1_33
# set_property -dict { PACKAGE_PIN  AE7  IOSTANDARD   LVCMOS18 } [get_ports { SDDAT3 }]; #IO_L7P_T1_33
# set_property -dict { PACKAGE_PIN AD11  IOSTANDARD   LVCMOS18 } [get_ports { SDDETECT }]; #IO_L19P_T3_33

# #####
# # SDRAM - 3.3V Only
# #####

# set_property -dict { PACKAGE_PIN  F23  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_A[0]  }]; #IO_L13N_T2_MRCC_14
# set_property -dict { PACKAGE_PIN  F25  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_A[1]  }]; #IO_L17P_T2_A14_D30_14
# set_property -dict { PACKAGE_PIN  G22  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_A[10] }]; #IO_L13P_T2_MRCC_14
# set_property -dict { PACKAGE_PIN  F24  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_A[11] }]; #IO_L14N_T2_SRCC_14
# set_property -dict { PACKAGE_PIN  H21  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_A[12] }]; #IO_L19P_T3_A10_D26_14
# set_property -dict { PACKAGE_PIN  E23  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_A[13] }]; #IO_L12N_T1_MRCC_14
# set_property -dict { PACKAGE_PIN  H22  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_A[14] }]; #IO_L21N_T3_DQS_A06_D22_14
# set_property -dict { PACKAGE_PIN  E22  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_A[15] }]; #IO_L9N_T1_DQS_D13_14
# set_property -dict { PACKAGE_PIN  H23  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_A[16] }]; #IO_L20P_T3_A08_D24_14
# set_property -dict { PACKAGE_PIN  H24  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_A[17] }]; #IO_L20N_T3_A07_D23_14
# set_property -dict { PACKAGE_PIN  J26  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_A[18] }]; #IO_L18P_T2_A12_D28_14
# set_property -dict { PACKAGE_PIN  H26  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_A[19] }]; #IO_L18N_T2_A11_D27_14
# set_property -dict { PACKAGE_PIN  G24  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_A[2 ] }]; #IO_L14P_T2_SRCC_14
# set_property -dict { PACKAGE_PIN  L23  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_A[20] }]; #IO_25_14
# set_property -dict { PACKAGE_PIN  F22  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_A[3]  }]; #IO_L12P_T1_MRCC_14
# set_property -dict { PACKAGE_PIN  G21  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_A[4]  }]; #IO_L19N_T3_A09_D25_VREF_14
# set_property -dict { PACKAGE_PIN  B20  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_A[5]  }]; #IO_L8P_T1_D11_14
# set_property -dict { PACKAGE_PIN  A20  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_A[6]  }]; #IO_L8N_T1_D12_14
# set_property -dict { PACKAGE_PIN  K22  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_A[7]  }]; #IO_L23N_T3_A02_D18_14
# set_property -dict { PACKAGE_PIN  B21  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_A[8]  }]; #IO_L10N_T1_D15_14
# set_property -dict { PACKAGE_PIN  E21  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_A[9]  }]; #IO_L9P_T1_DQS_14
# set_property -dict { PACKAGE_PIN  J21  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_CE2 }]; #IO_L21P_T3_DQS_14
# set_property -dict { PACKAGE_PIN  G26  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_CEn }]; #IO_L16N_T2_A15_D31_14
# set_property -dict { PACKAGE_PIN  J24  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_DQ[0] }]; #IO_L22P_T3_A05_D21_14
# set_property -dict { PACKAGE_PIN  E26  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_DQ[1] }]; #IO_L17N_T2_A13_D29_14
# set_property -dict { PACKAGE_PIN  K23  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_DQ[2] }]; #IO_L24P_T3_A01_D17_14
# set_property -dict { PACKAGE_PIN  D21  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_DQ[3] }]; #IO_L7P_T1_D09_14
# set_property -dict { PACKAGE_PIN  C24  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_DQ[4] }]; #IO_L6N_T0_D08_VREF_14
# set_property -dict { PACKAGE_PIN  D24  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_DQ[5] }]; #IO_L11N_T1_SRCC_14
# set_property -dict { PACKAGE_PIN  D23  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_DQ[6] }]; #IO_L11P_T1_SRCC_14
# set_property -dict { PACKAGE_PIN  C22  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_DQ[7] }]; #IO_L7N_T1_D10_14
# set_property -dict { PACKAGE_PIN  C21  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_OEn }]; #IO_L10P_T1_D14_14
# set_property -dict { PACKAGE_PIN  J23  IOSTANDARD   LVCMOS33 } [get_ports { SRAM_WEn }]; #IO_L24N_T3_A00_D16_14



# #### USER IO/HEADER A ####
# ## WARNING: Be sure to specify the correct IOSTANDARD depending on your jumper setting

# set_property IOSTANDARD LVCMOS33 [get_ports USERIOA_*]

# set_property -dict { PACKAGE_PIN  K15                        } [get_ports { USERIOA-1 }]; #IO_0_15
# set_property -dict { PACKAGE_PIN  H17                        } [get_ports { USERIOA-11 }]; #IO_L14P_T2_SRCC_15
# set_property -dict { PACKAGE_PIN  G15                        } [get_ports { USERIOA-12 }]; #IO_L8P_T1_AD3P_15
# set_property -dict { PACKAGE_PIN  G16                        } [get_ports { USERIOA-13 }]; #IO_L7N_T1_AD10N_15
# set_property -dict { PACKAGE_PIN  F15                        } [get_ports { USERIOA-14 }]; #IO_L8N_T1_AD3N_15
# set_property -dict { PACKAGE_PIN  K20                        } [get_ports { USERIOA-15 }]; #IO_L19P_T3_A22_15
# set_property -dict { PACKAGE_PIN  D15                        } [get_ports { USERIOA-16 }]; #IO_L6P_T0_15
# set_property -dict { PACKAGE_PIN  E16                        } [get_ports { USERIOA-17 }]; #IO_L10N_T1_AD4N_15
# set_property -dict { PACKAGE_PIN  D16                        } [get_ports { USERIOA-18 }]; #IO_L6N_T0_VREF_15
# set_property -dict { PACKAGE_PIN  F20                        } [get_ports { USERIOA-21 }]; #IO_L16N_T2_A27_15
# set_property -dict { PACKAGE_PIN  D19                        } [get_ports { USERIOA-23 }]; #IO_L15P_T2_DQS_15
# set_property -dict { PACKAGE_PIN  E20                        } [get_ports { USERIOA-24 }]; #IO_L17N_T2_A25_15
# set_property -dict { PACKAGE_PIN  C19                        } [get_ports { USERIOA-25 }]; #IO_L4P_T0_AD9P_15
# set_property -dict { PACKAGE_PIN  C18                        } [get_ports { USERIOA-26 }]; #IO_L5N_T0_AD2N_15
# set_property -dict { PACKAGE_PIN  K17                        } [get_ports { USERIOA-27 }]; #IO_L22N_T3_A16_15
# set_property -dict { PACKAGE_PIN  D20                        } [get_ports { USERIOA-28 }]; #IO_L15N_T2_DQS_ADV_B_15
# set_property -dict { PACKAGE_PIN  K18                        } [get_ports { USERIOA-29 }]; #IO_L24N_T3_RS0_15
# set_property -dict { PACKAGE_PIN  J15                        } [get_ports { USERIOA-3 }]; #IO_L9P_T1_DQS_AD11P_15
# set_property -dict { PACKAGE_PIN  G19                        } [get_ports { USERIOA-30 }]; #IO_L16P_T2_A28_15
# set_property -dict { PACKAGE_PIN  G17                        } [get_ports { USERIOA-31 }]; #IO_L11P_T1_SRCC_AD12P_15
# set_property -dict { PACKAGE_PIN  E18                        } [get_ports { USERIOA-32 }]; #IO_L13P_T2_MRCC_15
# set_property -dict { PACKAGE_PIN  H18                        } [get_ports { USERIOA-33 }]; #IO_L14N_T2_SRCC_15
# set_property -dict { PACKAGE_PIN  F17                        } [get_ports { USERIOA-35 }]; #IO_L12P_T1_MRCC_AD5P_15
# set_property -dict { PACKAGE_PIN  F19                        } [get_ports { USERIOA-36 }]; #IO_L17P_T2_A26_15
# set_property -dict { PACKAGE_PIN  F18                        } [get_ports { USERIOA-37 }]; #IO_L11N_T1_SRCC_AD12N_15
# set_property -dict { PACKAGE_PIN  G20                        } [get_ports { USERIOA-38 }]; #IO_L18N_T2_A23_15
# set_property -dict { PACKAGE_PIN  E15                        } [get_ports { USERIOA-39 }]; #IO_L10P_T1_AD4P_15
# set_property -dict { PACKAGE_PIN  B19                        } [get_ports { USERIOA-40 }]; #IO_L4N_T0_AD9N_15
# set_property -dict { PACKAGE_PIN  K16                        } [get_ports { USERIOA-5 }]; #IO_L22P_T3_A17_15
# set_property -dict { PACKAGE_PIN  J16                        } [get_ports { USERIOA-7 }]; #IO_L9N_T1_DQS_AD11N_15
# set_property -dict { PACKAGE_PIN  H16                        } [get_ports { USERIOA-9 }]; #IO_L7P_T1_AD10P_15

# #### USER IO/HEADER B ####
# ## WARNING: Be sure to specify the correct IOSTANDARD depending on your jumper setting

# set_property IOSTANDARD LVCMOS33 [get_ports USERIOB_*]
# set_property IOSTANDARD LVCMOS33 [get_ports USR_SPI1*]; #USR_SPI1 must match USERIOB header! Same bank.

# set_property -dict { PACKAGE_PIN  C12                        } [get_ports { USERIOB-1 }]; #IO_L13P_T2_MRCC_16
# set_property -dict { PACKAGE_PIN   F8                        } [get_ports { USERIOB-10 }]; #IO_L7N_T1_16
# set_property -dict { PACKAGE_PIN   B9                        } [get_ports { USERIOB-11 }]; #IO_L10N_T1_16
# set_property -dict { PACKAGE_PIN   F9                        } [get_ports { USERIOB-12 }]; #IO_L7P_T1_16
# set_property -dict { PACKAGE_PIN  E10                        } [get_ports { USERIOB-14 }]; #IO_L12P_T1_MRCC_16
# set_property -dict { PACKAGE_PIN   A9                        } [get_ports { USERIOB-15 }]; #IO_L9P_T1_DQS_16
# set_property -dict { PACKAGE_PIN   D8                        } [get_ports { USERIOB-16 }]; #IO_L8N_T1_16
# set_property -dict { PACKAGE_PIN  B10                        } [get_ports { USERIOB-17 }]; #IO_L22P_T3_16
# set_property -dict { PACKAGE_PIN   D9                        } [get_ports { USERIOB-18 }]; #IO_L8P_T1_16
# set_property -dict { PACKAGE_PIN  A10                        } [get_ports { USERIOB-19 }]; #IO_L22N_T3_16
# set_property -dict { PACKAGE_PIN  B11                        } [get_ports { USERIOB-21 }]; #IO_L20N_T3_16
# set_property -dict { PACKAGE_PIN  B12                        } [get_ports { USERIOB-23 }]; #IO_L20P_T3_16
# set_property -dict { PACKAGE_PIN   C9                        } [get_ports { USERIOB-24 }]; #IO_L10P_T1_16
# set_property -dict { PACKAGE_PIN  A12                        } [get_ports { USERIOB-25 }]; #IO_L24N_T3_16
# set_property -dict { PACKAGE_PIN  D10                        } [get_ports { USERIOB-26 }]; #IO_L12N_T1_MRCC_16
# set_property -dict { PACKAGE_PIN  A13                        } [get_ports { USERIOB-27 }]; #IO_L24P_T3_16
# set_property -dict { PACKAGE_PIN  E12                        } [get_ports { USERIOB-28 }]; #IO_L18N_T2_16
# set_property -dict { PACKAGE_PIN  C14                        } [get_ports { USERIOB-29 }]; #IO_L19P_T3_16
# set_property -dict { PACKAGE_PIN  D13                        } [get_ports { USERIOB-3 }]; #IO_L17N_T2_16
# set_property -dict { PACKAGE_PIN  C11                        } [get_ports { USERIOB-30 }]; #IO_L13N_T2_MRCC_16
# set_property -dict { PACKAGE_PIN  A14                        } [get_ports { USERIOB-31 }]; #IO_L21N_T3_DQS_16
# set_property -dict { PACKAGE_PIN  D11                        } [get_ports { USERIOB-32 }]; #IO_L14N_T2_SRCC_16
# set_property -dict { PACKAGE_PIN  B14                        } [get_ports { USERIOB-33 }]; #IO_L21P_T3_DQS_16
# set_property -dict { PACKAGE_PIN  C13                        } [get_ports { USERIOB-5 }]; #IO_L19N_T3_VREF_16
# set_property -dict { PACKAGE_PIN  F10                        } [get_ports { USERIOB-6 }]; #IO_L11N_T1_SRCC_16
# set_property -dict { PACKAGE_PIN  E13                        } [get_ports { USERIOB-7 }]; #IO_L18P_T2_16
# set_property -dict { PACKAGE_PIN   H8                        } [get_ports { USERIOB-8 }]; #IO_L1N_T0_16
# set_property -dict { PACKAGE_PIN   A8                        } [get_ports { USERIOB-9 }]; #IO_L9N_T1_DQS_16

# #####
# # QSPI Socket tracking USERIO-B Voltage ""
# #####

# set_property -dict { PACKAGE_PIN  F12                        } [get_ports { USR_SPI1CLK }]; #IO_L16N_T2_16
# set_property -dict { PACKAGE_PIN  F14                        } [get_ports { USR_SPI1CS }]; #IO_L15P_T2_DQS_16
# set_property -dict { PACKAGE_PIN  E11                        } [get_ports { USR_SPI1DQ0 }]; #IO_L14P_T2_SRCC_16
# set_property -dict { PACKAGE_PIN  A15                        } [get_ports { USR_SPI1DQ1 }]; #IO_L23N_T3_16
# set_property -dict { PACKAGE_PIN  B15                        } [get_ports { USR_SPI1DQ2 }]; #IO_L23P_T3_16
# set_property -dict { PACKAGE_PIN  F13                        } [get_ports { USR_SPI1DQ3 }]; #IO_L15N_T2_DQS_16

# #####
# # 1.8V QSPI Socket "U4"
# #####

# set_property -dict { PACKAGE_PIN  AF8  IOSTANDARD   LVCMOS18 } [get_ports { USR_SPI0CLK }]; #IO_L22N_T3_33
# set_property -dict { PACKAGE_PIN AE11  IOSTANDARD   LVCMOS18 } [get_ports { USR_SPI0CS }]; #IO_L19N_T3_VREF_33
# set_property -dict { PACKAGE_PIN  AE8  IOSTANDARD   LVCMOS18 } [get_ports { USR_SPI0DQ0 }]; #IO_L22P_T3_33
# set_property -dict { PACKAGE_PIN AE10  IOSTANDARD   LVCMOS18 } [get_ports { USR_SPI0DQ1 }]; #IO_L20N_T3_33
# set_property -dict { PACKAGE_PIN  AF9  IOSTANDARD   LVCMOS18 } [get_ports { USR_SPI0DQ2 }]; #IO_L24N_T3_33
# set_property -dict { PACKAGE_PIN AF10  IOSTANDARD   LVCMOS18 } [get_ports { USR_SPI0DQ3 }]; #IO_L24P_T3_33

# #####
# # Debug / JTAG user headers
# #####

# set_property -dict { PACKAGE_PIN  R20  IOSTANDARD   LVCMOS33 } [get_ports { USR_DBG_NC0 }]; #IO_L16N_T2_13
# set_property -dict { PACKAGE_PIN  T17  IOSTANDARD   LVCMOS33 } [get_ports { USR_DBG_nRST }]; #IO_L23N_T3_13
# set_property -dict { PACKAGE_PIN  N18  IOSTANDARD   LVCMOS33 } [get_ports { USR_DBG_TCK }]; #IO_L22P_T3_13
# set_property -dict { PACKAGE_PIN  P21  IOSTANDARD   LVCMOS33 } [get_ports { USR_DBG_TDAT0 }]; #IO_L13N_T2_MRCC_13
# set_property -dict { PACKAGE_PIN  U19  IOSTANDARD   LVCMOS33 } [get_ports { USR_DBG_TDAT1 }]; #IO_L18P_T2_13
# set_property -dict { PACKAGE_PIN  U20  IOSTANDARD   LVCMOS33 } [get_ports { USR_DBG_TDAT2 }]; #IO_L18N_T2_13
# set_property -dict { PACKAGE_PIN  T20  IOSTANDARD   LVCMOS33 } [get_ports { USR_DBG_TDAT3 }]; #IO_L16P_T2_13
# set_property -dict { PACKAGE_PIN  R16  IOSTANDARD   LVCMOS33 } [get_ports { USR_DBG_TDI }]; #IO_L21P_T3_DQS_13
# set_property -dict { PACKAGE_PIN  P16  IOSTANDARD   LVCMOS33 } [get_ports { USR_DBG_TDO }]; #IO_L20P_T3_13
# set_property -dict { PACKAGE_PIN  N16  IOSTANDARD   LVCMOS33 } [get_ports { USR_DBG_TMS }]; #IO_0_13
# set_property -dict { PACKAGE_PIN  R21  IOSTANDARD   LVCMOS33 } [get_ports { USR_DBG_TRACECLK }]; #IO_L13P_T2_MRCC_13
# set_property -dict { PACKAGE_PIN  T19  IOSTANDARD   LVCMOS33 } [get_ports { USR_DBG_VCCDETECT }]; #IO_L19N_T3_VREF_13

# #####
# # USB Phy chip
# #####

# set_property -dict { PACKAGE_PIN AE15  IOSTANDARD   LVCMOS33 } [get_ports { USRUSB_OE }]; #IO_L4N_T0_32
# set_property -dict { PACKAGE_PIN  P19  IOSTANDARD   LVCMOS33 } [get_ports { USRUSB_PWREN }]; #IO_L9P_T1_DQS_13
# set_property -dict { PACKAGE_PIN  V17  IOSTANDARD   LVCMOS18 } [get_ports { USRUSB_RCV }]; #IO_L20N_T3_32
# set_property -dict { PACKAGE_PIN AF14  IOSTANDARD   LVCMOS18 } [get_ports { USRUSB_SOFTCN }]; #IO_L2P_T0_32
# set_property -dict { PACKAGE_PIN AE16  IOSTANDARD   LVCMOS18 } [get_ports { USRUSB_SPD }]; #IO_L6N_T0_VREF_32
# set_property -dict { PACKAGE_PIN AF15  IOSTANDARD   LVCMOS18 } [get_ports { USRUSB_SUS }]; #IO_L2N_T0_32
# set_property -dict { PACKAGE_PIN  V13  IOSTANDARD   LVCMOS18 } [get_ports { USRUSB_VM }]; #IO_0_VRN_32
# set_property -dict { PACKAGE_PIN AF20  IOSTANDARD   LVCMOS18 } [get_ports { USRUSB_VMO }]; #IO_L5N_T0_32
# set_property -dict { PACKAGE_PIN  V16  IOSTANDARD   LVCMOS18 } [get_ports { USRUSB_VP }]; #IO_L20P_T3_32
# set_property -dict { PACKAGE_PIN AF19  IOSTANDARD   LVCMOS18 } [get_ports { USRUSB_VPO }]; #IO_L5P_T0_32
# set_property -dict { PACKAGE_PIN  P18  IOSTANDARD   LVCMOS33 } [get_ports { USRUSB_VBUS_DETECT }]; #IO_L24N_T3_13

# #####
# # XADC Inputs
# #####

# set_property -dict { PACKAGE_PIN  C16  IOSTANDARD   LVCMOS33 } [get_ports { vauxp0 }]; #IO_L1P_T0_AD0P_15
# set_property -dict { PACKAGE_PIN  B16  IOSTANDARD   LVCMOS33 } [get_ports { vauxn1 }]; #Shorted to GND
# set_property -dict { PACKAGE_PIN  B17  IOSTANDARD   LVCMOS33 } [get_ports { vauxp1 }]; #IO_L3P_T0_DQS_AD1P_15
# set_property -dict { PACKAGE_PIN  A19  IOSTANDARD   LVCMOS33 } [get_ports { vauxn1 }]; #Shorted to GND
# set_property -dict { PACKAGE_PIN  A18  IOSTANDARD   LVCMOS33 } [get_ports { vauxp8 }]; #IO_L2P_T0_AD8P_15
# set_property -dict { PACKAGE_PIN  B16  IOSTANDARD   LVCMOS33 } [get_ports { vauxn8 }]; #Shorted to GND


# #####
# # ETH 10/100 Mac Chip
# #####

# set_property -dict { PACKAGE_PIN AA17  IOSTANDARD   LVCMOS18 } [get_ports { FPGA_ETH_CRSDV }]; #IO_L11P_T1_SRCC_32
# set_property -dict { PACKAGE_PIN AA20  IOSTANDARD   LVCMOS18 } [get_ports { FPGA_ETH_MDC }]; #IO_L16N_T2_32
# set_property -dict { PACKAGE_PIN AA19  IOSTANDARD   LVCMOS18 } [get_ports { FPGA_ETH_MDIO }]; #IO_L16P_T2_32
# set_property -dict { PACKAGE_PIN AC18  IOSTANDARD   LVCMOS18 } [get_ports { FPGA_ETH_nRST }]; #IO_L13P_T2_MRCC_32
# set_property -dict { PACKAGE_PIN AB20  IOSTANDARD   LVCMOS18 } [get_ports { FPGA_ETH_REFCLK }]; #IO_L18N_T2_32
# set_property -dict { PACKAGE_PIN AD19  IOSTANDARD   LVCMOS18 } [get_ports { FPGA_ETH_RX0 }]; #IO_L17N_T2_32
# set_property -dict { PACKAGE_PIN AD18  IOSTANDARD   LVCMOS18 } [get_ports { FPGA_ETH_RX1 }]; #IO_L13N_T2_MRCC_32
# set_property -dict { PACKAGE_PIN AD20  IOSTANDARD   LVCMOS18 } [get_ports { FPGA_ETH_RXER }]; #IO_L15P_T2_DQS_32
# set_property -dict { PACKAGE_PIN  V19  IOSTANDARD   LVCMOS18 } [get_ports { FPGA_ETH_TXEN }]; #IO_L23N_T3_32
# set_property -dict { PACKAGE_PIN  W19  IOSTANDARD   LVCMOS18 } [get_ports { FPGA_ETH_TX0 }]; #IO_L21N_T3_DQS_32
# set_property -dict { PACKAGE_PIN  W16  IOSTANDARD   LVCMOS18 } [get_ports { FPGA_ETH_TX1 }]; #IO_L22N_T3_32


############################
#### Timing constraints ####
############################
# # PCK0 clock is programmed to 84MHz in its firmware.
create_clock -period 11.904 -name usb_clk -waveform {0.000 5.952} [get_nets USB_CLK0];

set_input_delay -clock usb_clk -add_delay 2.000 [get_ports USB_ADDR]
set_input_delay -clock usb_clk -add_delay 2.000 [get_ports USB_DATA]
set_input_delay -clock usb_clk -add_delay 2.000 [get_ports USB_RD_N]
set_input_delay -clock usb_clk -add_delay 2.000 [get_ports USB_CE_N]
set_input_delay -clock usb_clk -add_delay 2.000 [get_ports USB_WR_N]
set_input_delay -clock usb_clk -add_delay 2.000 [get_ports USB_TRIGGER]

set_output_delay -add_delay 0.0 [get_ports USB_DATA]
set_false_path -to [get_ports USR_LED]

set_false_path -to [get_ports USB_DATA]
set_false_path -to [get_ports USR_LED]

set_property BITSTREAM.CONFIG.USR_ACCESS TIMESTAMP [current_design]