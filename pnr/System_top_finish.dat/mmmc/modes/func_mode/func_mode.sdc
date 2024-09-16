###############################################################
#  Generated by:      Cadence Innovus 15.20-p005_1
#  OS:                Linux x86_64(Host ID IC)
#  Generated on:      Sun Sep  4 06:45:29 2022
#  Design:            System_top
#  Command:           saveDesign System_top_finish
###############################################################
current_design System_top
create_clock [get_ports {UART_CLK}]  -name UART_CLK -period 1085.000000 -waveform {0.000000 542.000000}
create_clock [get_ports {REF_CLK}]  -name REF_CLK -period 20.000000 -waveform {0.000000 10.000000}
create_generated_clock -name DIV_CLK -source [get_ports {UART_CLK}] -divide_by 8 -master_clock [get_clocks {UART_CLK}] -add [get_pins {U0_ClkDiv/o_div_clk}]
create_generated_clock -name GATED_CLK -source [get_ports {REF_CLK}] -divide_by 1 -master_clock [get_clocks {REF_CLK}] -add [get_pins {u_CLK_GATE/GATED_CLK}]
set_propagated_clock  [get_pins {U0_ClkDiv/o_div_clk}]
set_propagated_clock  [get_ports {UART_CLK}]
set_propagated_clock  [get_pins {u_CLK_GATE/GATED_CLK}]
set_propagated_clock  [get_ports {REF_CLK}]
set_load -pin_load -max  0.5  [get_ports {SO[2]}]
set_load -pin_load -min  0.5  [get_ports {SO[2]}]
set_load -pin_load -max  0.5  [get_ports {SO[1]}]
set_load -pin_load -min  0.5  [get_ports {SO[1]}]
set_load -pin_load -max  0.5  [get_ports {SO[0]}]
set_load -pin_load -min  0.5  [get_ports {SO[0]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -rise -min -pin Y [get_ports {RX_IN}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -fall -min -pin Y [get_ports {RX_IN}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -rise -max -pin Y [get_ports {RX_IN}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -fall -max -pin Y [get_ports {RX_IN}]
set_load -pin_load -max  0.5  [get_ports {TX_OUT}]
set_load -pin_load -min  0.5  [get_ports {TX_OUT}]
set_case_analysis 0 [get_ports {SE}]
set_case_analysis 0 [get_ports {test_mode}]
set_wire_load_model -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -max -name tsmc13_wl10
set_wire_load_model -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -min -name tsmc13_wl10
set_input_delay -add_delay 217 -clock [get_clocks {UART_CLK}] [get_ports {RX_IN}]
set_output_delay -add_delay 27 -clock [get_clocks {UART_CLK}] [get_ports {TX_OUT}]
set_clock_uncertainty 0.05 -hold [get_clocks {UART_CLK}]
set_clock_uncertainty 0.2 -setup [get_clocks {UART_CLK}]
set_clock_uncertainty 0.05 -hold [get_clocks {REF_CLK}]
set_clock_uncertainty 0.2 -setup [get_clocks {REF_CLK}]
set_multicycle_path 7 -hold  -from [get_clocks { DIV_CLK }] -to [get_clocks { UART_CLK }]
set_multicycle_path 8 -setup  -from [get_clocks { DIV_CLK }] -to [get_clocks { UART_CLK }]
set_clock_groups -name UART_CLK_1 -asynchronous  -group  [get_clocks {UART_CLK DIV_CLK}] -group  [get_clocks {REF_CLK GATED_CLK}]
