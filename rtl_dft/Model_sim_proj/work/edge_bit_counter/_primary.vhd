library verilog;
use verilog.vl_types.all;
entity edge_bit_counter is
    port(
        enable          : in     vl_logic;
        reset_bit_cnt   : in     vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        prescale        : in     vl_logic_vector(4 downto 0);
        bit_cnt         : out    vl_logic_vector(3 downto 0);
        edge_cnt        : out    vl_logic_vector(4 downto 0)
    );
end edge_bit_counter;
