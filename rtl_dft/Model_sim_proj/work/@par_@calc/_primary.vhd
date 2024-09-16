library verilog;
use verilog.vl_types.all;
entity Par_Calc is
    port(
        PAR_TYP         : in     vl_logic;
        Data_Valid      : in     vl_logic;
        PAR_Calc_en     : in     vl_logic;
        P_DATA          : in     vl_logic_vector(7 downto 0);
        PAR_bit         : out    vl_logic
    );
end Par_Calc;
