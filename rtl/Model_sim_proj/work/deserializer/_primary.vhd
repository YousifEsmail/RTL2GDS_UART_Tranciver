library verilog;
use verilog.vl_types.all;
entity deserializer is
    port(
        sampled_bit     : in     vl_logic;
        deser_en        : in     vl_logic;
        RST             : in     vl_logic;
        CLK             : in     vl_logic;
        deser_New_bit   : in     vl_logic;
        P_DAta          : out    vl_logic_vector(7 downto 0)
    );
end deserializer;
