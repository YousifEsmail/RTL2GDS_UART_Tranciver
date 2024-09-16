#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sun Sep  4 02:56:48 2022                
#                                                     
#######################################################

#@(#)CDS: Innovus v15.20-p005_1 (64bit) 11/11/2015 11:16 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 15.20-p005_1 NR151028-1715/15_20-UB (database version 2.30, 298.6.1) {superthreading v1.26}
#@(#)CDS: AAE 15.20-p002 (64bit) 11/11/2015 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 15.20-p001_1 () Oct 29 2015 01:50:39 ( )
#@(#)CDS: SYNTECH 15.20-b002_1 () Oct 20 2015 02:35:29 ( )
#@(#)CDS: CPE v15.20-p002
#@(#)CDS: IQRC/TQRC 15.1.2-s269 (64bit) Mon Aug 24 18:22:18 PDT 2015 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getDrawView
loadWorkspace -name Physical
win
set init_gnd_net VSS
set init_lef_file {../std_cells/lef/tsmc13fsg_6lm_tech.lef ../std_cells/lef/tsmc13_m_macros.lef SYS_TOP.lef}
set init_verilog ../dft/netlists/System_DFT_Netlist.v
set init_mmmc_file MMC.tcl
set init_top_cell System_top
set init_pwr_net VDD
init_design
set init_gnd_net VSS
set init_lef_file {../std_cells/lef/tsmc13fsg_6lm_tech.lef ../std_cells/lef/tsmc13_m_macros.lef SYS_TOP.lef}
set init_verilog ../dft/netlists/System_DFT_Netlist.v
set init_mmmc_file MMC.tcl
set init_top_cell System_top
set init_pwr_net VDD
init_design
set init_gnd_net VSS
set init_lef_file {../std_cells/lef/tsmc13fsg_6lm_tech.lef ../std_cells/lef/tsmc13_m_macros.lef SYS_TOP.lef}
set init_verilog ../dft/netlists/System_DFT_Netlist.v
set init_mmmc_file MMC.tcl
set init_top_cell System_top
set init_pwr_net VDD
init_design
set init_gnd_net VSS
set init_lef_file {../std_cells/lef/tsmc13fsg_6lm_tech.lef ../std_cells/lef/tsmc13_m_macros.lef SYS_TOP.lef}
set init_verilog ../dft/netlists/System_DFT_Netlist.v
set init_mmmc_file MMC.tcl
set init_top_cell System_top
set init_pwr_net VDD
init_design
fit
floorPlan -d 120.13 120.13 0.0 0.0 0.0 0.0
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VSS -type pgpin -pin VSS -inst *
fit
fit
fit
init_design
