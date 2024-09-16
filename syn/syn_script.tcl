#################################### Set System top ##################################
set Design_Top System_top
########################################## Set SVF ########################################
set_svf System.svf
#################################### derfine work path ##################################
define_design_lib work -path ./work
#######################################################################################
#################################### STD cell's search path ###########################
lappend search_path ../rtl
lappend search_path ../rtl/ALU
lappend search_path ../rtl/CLK_div
lappend search_path ../rtl/CLK_gate
lappend search_path ../rtl/REG_FILE
lappend search_path ../rtl/Sync
lappend search_path ../rtl/SYS_CTRL
lappend search_path ../rtl/UART_RX
lappend search_path ../rtl/UART_TOP
lappend search_path ../rtl/UART_TX
lappend search_path ../rtl/Sys_top

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
read_file {../rtl/} -autoread -recursive -format verilog -top System_top
###################################### define top level ##########################################
current_design System_top
###################################### link #####################################################
link
######################################## check design ###########################################
uniquify
check_design
##########################################define design Constraints#############################
source ./cons.tcl

########################################## Compile ########################
compile 


########################################## write op file ########################
write_file -format verilog -hierarchy -output netlists/SYS_TOP_Netlist.ddc
write_file -format verilog -hierarchy -output netlists/SYS_TOP_Netlist.v
write_sdf  sdf/SYS_TOP.sdf
write_sdc  -nosplit sdc/SYS_TOP.sdc

set_svf -off

report_area -hierarchy > reports/area.rpt
report_power  -verbose > reports/power.rpt
report_timing -max_paths 10 -delay_type min > reports/hold.rpt
report_timing -max_paths 10 -delay_type max > reports/setup.rpt
report_clock -attributes > reports/clocks.rpt
report_constraint -all_violators > reports/constraints.rpt

##################### Num of FF in chain for DFT ###############
set flops_per_chain 100

set num_flops [sizeof_collection [all_registers -edge_triggered]]

set num_chains [expr $num_flops / $flops_per_chain + 1 ]

