library verilog;
use verilog.vl_types.all;
entity LOGIC_UNIT is
    generic(
        DATA_WIDTH      : integer := 8
    );
    port(
        A_Logic         : in     vl_logic_vector;
        B_Logic         : in     vl_logic_vector;
        clk             : in     vl_logic;
        Logic_En        : in     vl_logic;
        ALU_FUN_LS      : in     vl_logic_vector(1 downto 0);
        Logic_OUT_reg   : out    vl_logic_vector;
        Logic_Flag_reg  : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
end LOGIC_UNIT;
