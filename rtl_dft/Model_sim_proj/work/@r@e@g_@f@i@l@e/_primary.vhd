library verilog;
use verilog.vl_types.all;
entity REG_FILE is
    generic(
        DATA_WIDTH      : integer := 8;
        DATA_DEPTH      : integer := 16
    );
    port(
        WrData          : in     vl_logic_vector;
        Address         : in     vl_logic_vector(3 downto 0);
        WrEn            : in     vl_logic;
        RdEn            : in     vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        RdData          : out    vl_logic_vector;
        Rd_VLD          : out    vl_logic;
        Reg_0           : out    vl_logic_vector;
        Reg_1           : out    vl_logic_vector;
        Reg_2           : out    vl_logic_vector;
        Reg_3           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DATA_DEPTH : constant is 1;
end REG_FILE;
