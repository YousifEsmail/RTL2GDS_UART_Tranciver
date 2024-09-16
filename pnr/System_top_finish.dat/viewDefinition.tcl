create_library_set -name max_library\
   -timing\
    [list ../std_cells/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib]
create_library_set -name typ_library\
   -timing\
    [list ../std_cells/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib]
create_library_set -name min_library\
   -timing\
    [list ../std_cells/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib]
create_rc_corner -name RCcorner\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 25
create_delay_corner -name min_corner\
   -library_set min_library\
   -rc_corner RCcorner
create_delay_corner -name max_corner\
   -library_set max_library\
   -rc_corner RCcorner
create_constraint_mode -name cap_mode\
   -sdc_files\
    [list System_top_finish.dat/mmmc/modes/cap_mode/cap_mode.sdc]
create_constraint_mode -name func_mode\
   -sdc_files\
    [list System_top_finish.dat/mmmc/modes/func_mode/func_mode.sdc]
create_constraint_mode -name scan_mode\
   -sdc_files\
    [list System_top_finish.dat/mmmc/modes/scan_mode/scan_mode.sdc]
create_analysis_view -name setup_scan_analysis_view -constraint_mode scan_mode -delay_corner max_corner
create_analysis_view -name setup_cap_analysis_view -constraint_mode cap_mode -delay_corner max_corner
create_analysis_view -name hold_scan_analysis_view -constraint_mode scan_mode -delay_corner min_corner
create_analysis_view -name setup_func_analysis_view -constraint_mode func_mode -delay_corner max_corner
create_analysis_view -name hold_func_analysis_view -constraint_mode func_mode -delay_corner min_corner
create_analysis_view -name hold_cap_analysis_view -constraint_mode cap_mode -delay_corner min_corner
set_analysis_view -setup [list setup_func_analysis_view setup_cap_analysis_view setup_scan_analysis_view] -hold [list hold_func_analysis_view hold_cap_analysis_view hold_scan_analysis_view]
