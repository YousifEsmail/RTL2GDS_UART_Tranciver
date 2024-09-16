library verilog;
use verilog.vl_types.all;
entity UART_RX is
    port(
        RX_in           : in     vl_logic;
        PAR_en          : in     vl_logic;
        PAR_TYP         : in     vl_logic;
        CLK_top         : in     vl_logic;
        RST_top         : in     vl_logic;
        prescale_top    : in     vl_logic_vector(4 downto 0);
        data_valid      : out    vl_logic;
        P_DAta          : out    vl_logic_vector(7 downto 0)
    );
end UART_RX;
