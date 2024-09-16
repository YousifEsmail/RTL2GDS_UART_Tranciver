library verilog;
use verilog.vl_types.all;
entity UART_TX_tb is
    generic(
        CLK_PERIOD      : integer := 5;
        even_PAR        : integer := 0;
        odd_PAR         : integer := 1;
        PAR_ON          : integer := 1;
        PAR_OFF         : integer := 0;
        frame_length    : integer := 8
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CLK_PERIOD : constant is 1;
    attribute mti_svvh_generic_type of even_PAR : constant is 1;
    attribute mti_svvh_generic_type of odd_PAR : constant is 1;
    attribute mti_svvh_generic_type of PAR_ON : constant is 1;
    attribute mti_svvh_generic_type of PAR_OFF : constant is 1;
    attribute mti_svvh_generic_type of frame_length : constant is 1;
end UART_TX_tb;
