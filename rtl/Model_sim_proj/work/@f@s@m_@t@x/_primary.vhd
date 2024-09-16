library verilog;
use verilog.vl_types.all;
entity FSM_TX is
    port(
        Data_Valid      : in     vl_logic;
        rst             : in     vl_logic;
        PAR_EN          : in     vl_logic;
        ser_done        : in     vl_logic;
        clk             : in     vl_logic;
        ser_en          : out    vl_logic;
        PAR_Calc_en     : out    vl_logic;
        mux_sel         : out    vl_logic_vector(1 downto 0);
        busy            : out    vl_logic
    );
end FSM_TX;
