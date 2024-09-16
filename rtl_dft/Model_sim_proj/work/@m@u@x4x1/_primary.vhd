library verilog;
use verilog.vl_types.all;
entity MUX4x1 is
    generic(
        DATA_WIDTH      : integer := 8
    );
    port(
        IN1             : in     vl_logic_vector;
        IN2             : in     vl_logic_vector;
        IN3             : in     vl_logic_vector;
        IN4             : in     vl_logic_vector;
        Sel1            : in     vl_logic;
        Sel2            : in     vl_logic;
        Sel3            : in     vl_logic;
        Sel4            : in     vl_logic;
        \OUT\           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
end MUX4x1;
