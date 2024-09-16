library verilog;
use verilog.vl_types.all;
entity STR_CHK is
    port(
        str_chk_en      : in     vl_logic;
        RST             : in     vl_logic;
        sampled_bit     : in     vl_logic;
        STR_err         : out    vl_logic
    );
end STR_CHK;
