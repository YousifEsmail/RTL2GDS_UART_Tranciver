###################################################################

# Created by write_sdc on Sun Sep 4 00:40:06 2022

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -min scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c
set_wire_load_model -name tsmc13_wl10 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports RX_IN]
set_load -pin_load 0.5 [get_ports SO]
set_load -pin_load 0.5 [get_ports TX_OUT]
create_clock [get_ports REF_CLK]  -period 20  -waveform {0 10}
set_clock_uncertainty -setup 0.2  [get_clocks REF_CLK]
set_clock_uncertainty -hold 0.05  [get_clocks REF_CLK]
create_clock [get_ports UART_CLK]  -period 1085  -waveform {0 542}
set_clock_uncertainty -setup 0.2  [get_clocks UART_CLK]
set_clock_uncertainty -hold 0.05  [get_clocks UART_CLK]
create_generated_clock [get_pins U0_ClkDiv/o_div_clk]  -name DIV_CLK  -source [get_ports UART_CLK]  -master_clock UART_CLK  -divide_by 8  -add
create_generated_clock [get_pins u_CLK_GATE/GATED_CLK]  -name GATED_CLK  -source [get_ports REF_CLK]  -master_clock REF_CLK  -divide_by 1  -add
group_path -name INOUT  -from [list [get_ports scan_clk] [get_ports scan_rst] [get_ports test_mode] [get_ports SE] [get_ports SI] [get_ports REF_CLK] [get_ports UART_CLK] [get_ports RST] [get_ports RX_IN]]  -to [list [get_ports SO] [get_ports TX_OUT]]
group_path -name INREG  -from [list [get_ports scan_clk] [get_ports scan_rst] [get_ports test_mode] [get_ports SE] [get_ports SI] [get_ports REF_CLK] [get_ports UART_CLK] [get_ports RST] [get_ports RX_IN]]
group_path -name REGOUT  -to [list [get_ports SO] [get_ports TX_OUT]]
set_multicycle_path 7 -hold -from [get_clocks DIV_CLK] -to [get_clocks UART_CLK]
set_multicycle_path 8 -setup -from [get_clocks DIV_CLK] -to [get_clocks UART_CLK]
set_input_delay -clock UART_CLK  217  [get_ports RX_IN]
set_output_delay -clock UART_CLK  27  [get_ports TX_OUT]
set_clock_groups -asynchronous -name UART_CLK_1 -group [list [get_clocks UART_CLK] [get_clocks DIV_CLK]] -group [list [get_clocks REF_CLK] [get_clocks GATED_CLK]]
set_case_analysis 0 SE
set_case_analysis 1 test_mode