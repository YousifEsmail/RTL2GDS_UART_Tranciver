library verilog;
use verilog.vl_types.all;
entity data_sampler is
    port(
        RX_in           : in     vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        dat_samp_en     : in     vl_logic;
        edge_cnt        : in     vl_logic_vector(4 downto 0);
        prescale        : in     vl_logic_vector(4 downto 0);
        sampled_bit     : out    vl_logic
    );
end data_sampler;
