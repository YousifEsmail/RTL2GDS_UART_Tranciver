library verilog;
use verilog.vl_types.all;
entity STP_CHK is
    port(
        stp_chk_en      : in     vl_logic;
        RST             : in     vl_logic;
        sampled_bit     : in     vl_logic;
        STP_err         : out    vl_logic
    );
end STP_CHK;
