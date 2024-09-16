library verilog;
use verilog.vl_types.all;
entity BUS_SYNC is
    generic(
        NUM_STAGES      : integer := 2;
        BUS_WIDTH       : integer := 4
    );
    port(
        ASYNC_REG       : in     vl_logic_vector;
        RST             : in     vl_logic;
        CLK             : in     vl_logic;
        SYNC_REG        : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NUM_STAGES : constant is 1;
    attribute mti_svvh_generic_type of BUS_WIDTH : constant is 1;
end BUS_SYNC;
