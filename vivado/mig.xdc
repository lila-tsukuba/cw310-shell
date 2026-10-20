#
#    Copyright (C) 2026 University of Tsukuba
#    
#    File:          /vivado/mig.xdc
#    Project:       cw310-shell
#    Author:        Takuya Kojima in University of Tsukuba (tkojima@lila.cs.tsukuba.ac.jp)
#    Created Date:  20-10-2026 11:37:07
#    Last Modified: 20-10-2026 11:37:08
#
# differential clock input for MIG sys clock
set_property -dict { PACKAGE_PIN  AD9  IOSTANDARD    LVDS } [get_ports { OSC_clk_n }]; #IO_L12N_T1_MRCC_33
set_property -dict { PACKAGE_PIN  AC9  IOSTANDARD    LVDS } [get_ports { OSC_clk_p }]; #IO_L12P_T1_MRCC_33
create_clock -period 5.000 -name osc_clk -waveform {0.000 2.500} [get_ports OSC_clk_p]

# MIG related IO
set_property -dict { PACKAGE_PIN  AB7  IOSTANDARD   LVCMOS18 } [get_ports { OSC_EN }]; #IO_L10P_T1_33
set_property -dict { PACKAGE_PIN  N24  IOSTANDARD   LVCMOS33 } [get_ports { VDDR_ENABLE }]; #IO_L4N_T0_13