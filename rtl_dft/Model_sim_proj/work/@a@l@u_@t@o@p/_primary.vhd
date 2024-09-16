library verilog;
use verilog.vl_types.all;
entity ALU_TOP is
    generic(
        DATA_WIDTH      : integer := 8
    );
    port(
        A               : in     vl_logic_vector;
        B               : in     vl_logic_vector;
        ALU_FUNC        : in     vl_logic_vector(3 downto 0);
        CLK             : in     vl_logic;
        ALU_EN          : in     vl_logic;
        ALU_vld_OUT     : out    vl_logic;
        ALU_OUT         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
end ALU_TOP;
