library verilog;
use verilog.vl_types.all;
entity FSM_RX is
    port(
        RX_in           : in     vl_logic;
        PAR_en          : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        Par_err         : in     vl_logic;
        STR_err         : in     vl_logic;
        STP_err         : in     vl_logic;
        bit_cnt         : in     vl_logic_vector(3 downto 0);
        edge_cnt        : in     vl_logic_vector(4 downto 0);
        prescale        : in     vl_logic_vector(4 downto 0);
        par_chk_en      : out    vl_logic;
        enable          : out    vl_logic;
        dat_samp_en     : out    vl_logic;
        str_chk_en      : out    vl_logic;
        stp_chk_en      : out    vl_logic;
        data_valid      : out    vl_logic;
        deser_en        : out    vl_logic;
        PAR_CHK_New_bit : out    vl_logic;
        reset_bit_cnt   : out    vl_logic;
        deser_New_bit   : out    vl_logic
    );
end FSM_RX;
