library verilog;
use verilog.vl_types.all;
entity REG_FILE_tb is
    generic(
        clk_period      : integer := 10
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of clk_period : constant is 1;
end REG_FILE_tb;
