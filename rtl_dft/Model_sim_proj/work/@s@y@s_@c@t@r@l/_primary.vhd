library verilog;
use verilog.vl_types.all;
entity SYS_CTRL is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        Rd_D            : in     vl_logic_vector(7 downto 0);
        Rd_D_VLD        : in     vl_logic;
        ALU_OUT         : in     vl_logic_vector(15 downto 0);
        ALU_VLD         : in     vl_logic;
        BUSY            : in     vl_logic;
        TX_VLD          : out    vl_logic;
        TX_IN           : out    vl_logic_vector(7 downto 0);
        Rx_valid        : in     vl_logic;
        RX_out          : in     vl_logic_vector(7 downto 0);
        RdEn            : out    vl_logic;
        Addr            : out    vl_logic_vector(7 downto 0);
        WrEn            : out    vl_logic;
        Gate_En         : out    vl_logic;
        Wr_D            : out    vl_logic_vector(7 downto 0);
        Func            : out    vl_logic_vector(7 downto 0);
        ALU_EN          : out    vl_logic
    );
end SYS_CTRL;
