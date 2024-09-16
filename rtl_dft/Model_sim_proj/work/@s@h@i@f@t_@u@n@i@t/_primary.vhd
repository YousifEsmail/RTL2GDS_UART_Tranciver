library verilog;
use verilog.vl_types.all;
entity SHIFT_UNIT is
    generic(
        DATA_WIDTH      : integer := 8
    );
    port(
        A_Shift         : in     vl_logic_vector;
        B_Shift         : in     vl_logic_vector;
        clk             : in     vl_logic;
        SHIFT_EN        : in     vl_logic;
        ALU_FUN_LS      : in     vl_logic_vector(1 downto 0);
        SHIFT_OUT_reg   : out    vl_logic_vector;
        SHIFT_Flag_reg  : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
end SHIFT_UNIT;
