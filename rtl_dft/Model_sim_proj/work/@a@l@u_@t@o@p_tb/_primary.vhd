library verilog;
use verilog.vl_types.all;
entity ALU_TOP_tb is
    generic(
        DATA_WIDTH      : integer := 16;
        CLK_PERIOD      : integer := 10
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CLK_PERIOD : constant is 1;
end ALU_TOP_tb;
