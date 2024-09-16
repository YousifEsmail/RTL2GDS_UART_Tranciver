library verilog;
use verilog.vl_types.all;
entity ARITHMETIC_UNIT is
    generic(
        DATA_WIDTH      : integer := 8
    );
    port(
        A_Arith         : in     vl_logic_vector;
        B_Arith         : in     vl_logic_vector;
        clk             : in     vl_logic;
        Arith_En        : in     vl_logic;
        ALU_FUN_LS      : in     vl_logic_vector(1 downto 0);
        Arith_OUT_reg   : out    vl_logic_vector;
        Carry_OUT_reg   : out    vl_logic_vector;
        Arith_Flag_reg  : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
end ARITHMETIC_UNIT;
