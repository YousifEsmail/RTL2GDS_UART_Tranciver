library verilog;
use verilog.vl_types.all;
entity FSM_2_SYS_CTRL is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        Rd_D            : in     vl_logic_vector(7 downto 0);
        Rd_D_VLD        : in     vl_logic;
        ALU_OUT         : in     vl_logic_vector(15 downto 0);
        ALU_VLD         : in     vl_logic;
        BUSY            : in     vl_logic;
        TX_VLD          : out    vl_logic;
        TX_IN           : out    vl_logic_vector(7 downto 0)
    );
end FSM_2_SYS_CTRL;
