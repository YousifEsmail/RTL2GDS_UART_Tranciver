library verilog;
use verilog.vl_types.all;
entity serializer is
    port(
        P_DATA          : in     vl_logic_vector(7 downto 0);
        ser_en          : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        ser_done        : out    vl_logic;
        ser_data        : out    vl_logic
    );
end serializer;
