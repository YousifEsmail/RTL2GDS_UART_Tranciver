library verilog;
use verilog.vl_types.all;
entity BIT_SYNC is
    generic(
        NUM_STAGES      : integer := 2
    );
    port(
        ASYNC           : in     vl_logic;
        RST             : in     vl_logic;
        CLK             : in     vl_logic;
        SYNC            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NUM_STAGES : constant is 1;
end BIT_SYNC;
