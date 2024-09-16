library verilog;
use verilog.vl_types.all;
entity Decoder_Unit is
    port(
        ALU_FUN_MS      : in     vl_logic_vector(1 downto 0);
        Arith_En        : out    vl_logic;
        Logic_En        : out    vl_logic;
        CMP_EN          : out    vl_logic;
        SHIFT_EN        : out    vl_logic
    );
end Decoder_Unit;
