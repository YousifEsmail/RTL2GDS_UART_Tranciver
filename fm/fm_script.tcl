######################### Set Lib's ############################
set TTLIB "../std_cells/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "../std_cells/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"
set SSLIB "../std_cells/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"

######################### Set SVF file ############################

set_svf "../syn/System.svf"

################################ Read REF design####################
set RTL_Design_Top System_top
read_db -container Ref [list $TTLIB $FFLIB $SSLIB]
read_verilog -container Ref "../rtl/*/*.v"
set_reference_design $RTL_Design_Top
set_top $RTL_Design_Top

set Netlist_Design_Top System_top
read_db -container Imp [list $TTLIB $FFLIB $SSLIB]
read_verilog -container Imp -netlist  "../syn/netlists/SYS_TOP_Netlist.v"
set_implementation_design $Netlist_Design_Top
set_top $Netlist_Design_Top

################################ Match #######################################
match
################################# verify ####################################
set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}


################################## reporting #################################
report_passing_points > "reports/passing_points.rpt"
report_failing_points > "reports/failing_points.rpt"
report_aborted_points > "reports/aborted_points.rpt"
report_unverified_points > "reports/unverified_points.rpt"

start_gui

