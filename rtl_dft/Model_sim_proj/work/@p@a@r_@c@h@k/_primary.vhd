library verilog;
use verilog.vl_types.all;
entity PAR_CHK is
    port(
        PAR_en          : in     vl_logic;
        sampled_bit     : in     vl_logic;
        par_chk_en      : in     vl_logic;
        PAR_TYP         : in     vl_logic;
        PAR_CHK_New_bit : in     vl_logic;
        RST             : in     vl_logic;
        CLK             : in     vl_logic;
        Par_err         : out    vl_logic
    );
end PAR_CHK;
