
create_library_set -name min_library -timing "../std_cells/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib"
create_library_set -name max_library -timing "../std_cells/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib"
create_library_set -name typ_library -timing "../std_cells/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib"

create_constraint_mode -name func_mode -sdc_files {../dft/sdc/System_DFT_func.sdc}
create_constraint_mode -name cap_mode -sdc_files {../dft/sdc/System_DFT_capture.sdc}
create_constraint_mode -name scan_mode -sdc_files {../dft/sdc/System_DFT_scan.sdc}


create_rc_corner -name RCcorner -T {25}

create_delay_corner -name min_corner -library_set min_library -rc_corner RCcorner
create_delay_corner -name max_corner -library_set max_library -rc_corner RCcorner

create_analysis_view -name setup_func_analysis_view -delay_corner max_corner -constraint_mode func_mode
create_analysis_view -name hold_func_analysis_view  -delay_corner min_corner -constraint_mode func_mode

create_analysis_view -name setup_cap_analysis_view -delay_corner max_corner -constraint_mode cap_mode
create_analysis_view -name hold_cap_analysis_view  -delay_corner min_corner -constraint_mode cap_mode

create_analysis_view -name setup_scan_analysis_view -delay_corner max_corner -constraint_mode scan_mode
create_analysis_view -name hold_scan_analysis_view  -delay_corner min_corner -constraint_mode scan_mode


set_analysis_view -setup {setup_func_analysis_view setup_cap_analysis_view setup_scan_analysis_view} -hold {hold_func_analysis_view hold_cap_analysis_view hold_scan_analysis_view}
