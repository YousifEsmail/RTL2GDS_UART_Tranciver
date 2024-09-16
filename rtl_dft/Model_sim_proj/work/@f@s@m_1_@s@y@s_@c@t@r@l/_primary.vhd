library verilog;
use verilog.vl_types.all;
entity FSM_1_SYS_CTRL is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
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
end FSM_1_SYS_CTRL;
