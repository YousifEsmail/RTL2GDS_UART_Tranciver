############################ define group Path ##################################

group_path -name INREG -from [all_inputs]
group_path -name REGOUT -to [all_outputs]
group_path -name INOUT -from [all_inputs] -to [all_outputs]

########################## Define  Master Clock's ##################################

set Sys_clk REF_CLK
set Sys_clk_PERIOD 20
set Sys_clk_WAVEFORM [list 0 [expr $Sys_clk_PERIOD/2] ] 
set Sys_clk_UNCEN_SETUP 0.2
set Sys_clk_UNCEN_HOLD 0.05
set Sys_clk_TRANS 0.1 
create_clock -name $Sys_clk -period $Sys_clk_PERIOD -waveform $Sys_clk_WAVEFORM [get_ports REF_CLK]
set_clock_uncertainty -setup $Sys_clk_UNCEN_SETUP [get_clocks $Sys_clk]
set_clock_uncertainty -hold $Sys_clk_UNCEN_HOLD   [get_clocks $Sys_clk]
#set_clock_transition $Sys_clk_TRANS [get_clocks $Sys_clk]
set_dont_touch_network $Sys_clk

set UART_clk UART_CLK
set UART_clk_PERIOD 1085
set UART_clk_WAVEFORM [list 0 [expr $UART_clk_PERIOD/2] ] 
set UART_clk_UNCEN_SETUP 0.2
set UART_clk_UNCEN_HOLD 0.05
set UART_clk_TRANS 0.1 
create_clock -name $UART_clk -period $UART_clk_PERIOD -waveform $UART_clk_WAVEFORM [get_ports UART_CLK]
set_clock_uncertainty -setup $UART_clk_UNCEN_SETUP [get_clocks $UART_clk]
set_clock_uncertainty -hold $UART_clk_UNCEN_HOLD   [get_clocks $UART_clk]
#set_clock_transition $UART_clk_TRANS [get_clocks $UART_clk]
set_dont_touch_network $UART_clk

########################## Define  Gen Clock's ##################################

set DIV_RATIO 8
create_generated_clock -master_clock $UART_clk -source [get_ports UART_CLK] -name DIV_CLK [get_port U0_ClkDiv/o_div_clk] -divide_by $DIV_RATIO


create_generated_clock -master_clock $Sys_clk -source [get_ports REF_CLK] -name GATED_CLK [get_port u_CLK_GATE/GATED_CLK] -divide_by 1


########################## set opreation conditions ##################################
set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c"  -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"


#################################### set clock grouping ####################################
set_clock_groups -asynchronous -group [get_clocks "$UART_clk DIV_CLK"] \
                                -group [get_clocks "$Sys_clk GATED_CLK"]

##################################### Multicycle_pathes  ##################################
set_multicycle_path -setup $DIV_RATIO -from DIV_CLK -to $UART_clk
set_multicycle_path -hold [expr $DIV_RATIO-1] -from DIV_CLK -to $UART_clk


########################## set input delays &driving cell ##################################

set INPUT_DELAY_VALUE [expr 0.2*$UART_clk_PERIOD]
set_input_delay $INPUT_DELAY_VALUE -clock $UART_clk [get_ports RX_IN]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y  [get_ports RX_IN] 



set Output_DELAY_Value [expr 0.2*[expr $UART_clk_PERIOD/$DIV_RATIO]]
set_output_delay $Output_DELAY_Value -clock $UART_clk [get_ports TX_OUT]

set_load 0.5 [all_outputs]

################################### set wire model #########################################

set_wire_load_model -name tsmc13_wl10 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c

set_dont_touch_network RST
