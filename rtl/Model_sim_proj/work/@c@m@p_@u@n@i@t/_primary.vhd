library verilog;
use verilog.vl_types.all;
entity CMP_UNIT is
    generic(
        DATA_WIDTH      : integer := 8
    );
    port(
        A_Cmp           : in     vl_logic_vector;
        B_Cmp           : in     vl_logic_vector;
        clk             : in     vl_logic;
        CMP_EN          : in     vl_logic;
        ALU_FUN_LS      : in     vl_logic_vector(1 downto 0);
        CMP_OUT_reg     : out    vl_logic_vector;
        CMP_Flag_reg    : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
end CMP_UNIT;
