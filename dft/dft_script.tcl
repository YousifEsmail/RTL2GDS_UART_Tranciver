#################################### Set System top ##################################
set Design_Top System_top
########################################## Set SVF ########################################
set_svf System_dft.svf
#################################### derfine work path ##################################
define_design_lib work -path ./work
#######################################################################################
#################################### STD cell's search path ###########################
lappend search_path ../rtl_dft
lappend search_path ../rtl_dft/ALU
lappend search_path ../rtl_dft/CLK_div
lappend search_path ../rtl_dft/CLK_gate
lappend search_path ../rtl_dft/REG_FILE
lappend search_path ../rtl_dft/Sync
lappend search_path ../rtl_dft/SYS_CTRL
lappend search_path ../rtl_dft/UART_RX
lappend search_path ../rtl_dft/UART_TOP
lappend search_path ../rtl_dft/UART_TX
lappend search_path ../rtl_dft/Sys_top

lappend search_path ../std_cells
###################################### Std lib's ##########################################
set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"
## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]
## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

###################################### Read RTL files ##########################################
read_file {../rtl_dft/} -autoread -recursive -format verilog -top System_top
###################################### define top level ##########################################
current_design System_top
###################################### link #####################################################
link
######################################## check design ###########################################
uniquify
check_design
##########################################define design Constraints#############################
source ./cons.tcl
##############################################################################
#############################################################################
########################################## DFT ##############################

set flops_per_chain 100
set num_flops [sizeof_collection [all_registers -edge_triggered]]

set num_chains [expr $num_flops / $flops_per_chain + 1 ]


set_scan_configuration -clock_mixing no_mix -style multiplexed_flip_flop -replace true -max_length 100
#################################### Complie Scan ############################

compile -scan
######################################## set test time  variable ##################

set test_default_period 100
set test_default_delay 0
set test_default_bidir_delay 0
set test_default_strobe 20
set test_default_strobe_width 0

################################# Set dft signals #############################

set_dft_signal -port [get_ports scan_clk]  -type ScanClock   -view existing_dft  -timing {30 60}
set_dft_signal -port [get_ports scan_rst]  -type Reset       -view existing_dft  -active_state 0
set_dft_signal -port [get_ports test_mode] -type Constant    -view existing_dft  -active_state 1
set_dft_signal -port [get_ports test_mode] -type TestMode    -view spec          -active_state 1
set_dft_signal -port [get_ports SE]        -type ScanEnable  -view spec          -active_state 1   -usage scan
set_dft_signal -port [get_ports SI]        -type ScanDataIn  -view spec 
set_dft_signal -port [get_ports SO]        -type ScanDataOut -view spec  
###################################################################################

create_test_protocol

#########################################  Pre DFT DRC  ############################

dft_drc -verbose

#######################################  previwe DFT ###############################
preview_dft -show scan_summary

########################################## INSERT DFT ##############################
insert_dft

################################### COMPILE INCREMENTAL  ############################

compile -scan -incremental

################################# POST DFT DRC ######################################

dft_drc -verbose -coverage_estimate


###################################### write OP file ###############################

write_file -format verilog -hierarchy -output netlists/System_DFT_Netlist.ddc
write_file -format verilog -hierarchy -output netlists/System_DFT_Netlist.v
write_sdf  sdf/System_DFT.sdf
write_sdc  -nosplit sdc/System_DFT.sdc

report_area -hierarchy > reports/area_dft.rpt
report_power  -verbose > reports/power_dft.rpt
report_timing -max_paths 10 -delay_type min > reports/hold_dft.rpt
report_timing -max_paths 10 -delay_type max > reports/setup_dft.rpt
report_clock -attributes > reports/clocks_dft.rpt
report_constraint -all_violators > reports/constraints_dft.rpt


set_svf -off







