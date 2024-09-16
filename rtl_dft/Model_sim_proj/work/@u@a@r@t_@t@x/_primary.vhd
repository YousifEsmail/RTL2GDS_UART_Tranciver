library verilog;
use verilog.vl_types.all;
entity UART_TX is
    port(
        P_DATA          : in     vl_logic_vector(7 downto 0);
        Data_Valid      : in     vl_logic;
        PAR_EN          : in     vl_logic;
        PAR_TYP         : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        TX_OUT_top      : out    vl_logic;
        busy_top        : out    vl_logic
    );
end UART_TX;
