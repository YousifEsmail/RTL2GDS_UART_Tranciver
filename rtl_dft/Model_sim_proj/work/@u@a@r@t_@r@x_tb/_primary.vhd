library verilog;
use verilog.vl_types.all;
entity UART_RX_tb is
    generic(
        clk_period      : integer := 5;
        enable_parity   : integer := 1;
        disable_parity  : integer := 0;
        even_parity     : integer := 0;
        odd_parity      : integer := 1
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of clk_period : constant is 1;
    attribute mti_svvh_generic_type of enable_parity : constant is 1;
    attribute mti_svvh_generic_type of disable_parity : constant is 1;
    attribute mti_svvh_generic_type of even_parity : constant is 1;
    attribute mti_svvh_generic_type of odd_parity : constant is 1;
end UART_RX_tb;
