library verilog;
use verilog.vl_types.all;
entity System_top is
    generic(
        DATA_WIDTH      : integer := 8;
        DATA_DEPTH      : integer := 16;
        PRESCALE_WIDTH  : integer := 5;
        NUM_STAGES      : integer := 2;
        RATIO_WD        : integer := 4
    );
    port(
        REF_CLK         : in     vl_logic;
        UART_CLK        : in     vl_logic;
        RST             : in     vl_logic;
        RX_IN           : in     vl_logic;
        TX_OUT          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DATA_DEPTH : constant is 1;
    attribute mti_svvh_generic_type of PRESCALE_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of NUM_STAGES : constant is 1;
    attribute mti_svvh_generic_type of RATIO_WD : constant is 1;
end System_top;
