module ALU_TOP  #(
    parameter DATA_WIDTH =8
) 
(
    input wire [DATA_WIDTH-1:0] A ,
    input wire  [DATA_WIDTH-1:0] B ,
    input wire [3:0] ALU_FUNC,
    input wire CLK,
    input wire ALU_EN,
    output wire ALU_vld_OUT,
    output wire [(2*DATA_WIDTH-1):0] ALU_OUT 


);



wire  [DATA_WIDTH-1:0] Arith_OUT ;
wire  [DATA_WIDTH-1:0] Logic_OUT;
wire  [DATA_WIDTH-1:0] CMP_OUT ;
wire  [DATA_WIDTH-1:0] SHIFT_OUT;
wire  [DATA_WIDTH-1:0] Carry_OUT ;


wire  Arith_Flag ;
wire  Logic_Flag ;
wire    CMP_Flag ;
wire  SHIFT_Flag; 


//internal connections
wire  Arith_Enable;
wire  LOGIC_Enable;
wire  CMP_Enable;
wire  SHIFT_Enable;




// block instants

MUX4x1 #(
    .DATA_WIDTH (16)
)
u_ALUout_MUX4x1(
    .IN1  ({Carry_OUT,Arith_OUT} ),
    .IN2  ({8'b0,Logic_OUT[DATA_WIDTH-1:0]}  ),
    .IN3  ({8'b0,CMP_OUT[DATA_WIDTH-1:0]}  ),
    .IN4  ({8'b0,SHIFT_OUT[DATA_WIDTH-1:0]}  ),
    .Sel1 (Arith_Enable ),
    .Sel2 (LOGIC_Enable ),
    .Sel3 (CMP_Enable ),
    .Sel4 (SHIFT_Enable ),
    .OUT  (ALU_OUT  )
);


MUX4x1 #(
    .DATA_WIDTH (1)
)
u_ALU_vld_MUX4x1(
    .IN1  (Arith_Flag&ALU_EN  ),
    .IN2  (Logic_Flag&ALU_EN  ),
    .IN3  (CMP_Flag&ALU_EN  ),
    .IN4  (SHIFT_Flag&ALU_EN  ),
    .Sel1 (Arith_Enable ),
    .Sel2 (LOGIC_Enable ),
    .Sel3 (CMP_Enable ),
    .Sel4 (SHIFT_Enable ),
    .OUT  (ALU_vld_OUT  )
);





Decoder_Unit U_Decoder_Unit 
(.ALU_FUN_MS(ALU_FUNC[3:2]),
.Arith_En(Arith_Enable),
.Logic_En(LOGIC_Enable),
.CMP_EN(CMP_Enable),
.SHIFT_EN(SHIFT_Enable)

);
ARITHMETIC_UNIT #(.DATA_WIDTH(8)) U_ARITHMETIC_UNIT 
(
.clk(CLK),
.A_Arith(A),
.B_Arith(B),
.Arith_En(Arith_Enable|ALU_EN),
.ALU_FUN_LS(ALU_FUNC[1:0]),
.Arith_OUT_reg(Arith_OUT),
.Carry_OUT_reg(Carry_OUT),
.Arith_Flag_reg(Arith_Flag)

 
    );

LOGIC_UNIT #(.DATA_WIDTH(8)) U_LOGIC_UNIT
(
.clk(CLK),
.A_Logic(A),
.B_Logic(B),
.ALU_FUN_LS(ALU_FUNC[1:0]),
.Logic_En(LOGIC_Enable|ALU_EN),
.Logic_OUT_reg(Logic_OUT),
.Logic_Flag_reg(Logic_Flag)
);

CMP_UNIT #(.DATA_WIDTH(8)) U_CMP_UNIT
(
.clk(CLK),
.A_Cmp(A),
.B_Cmp(B),
.ALU_FUN_LS(ALU_FUNC[1:0]),
.CMP_EN(CMP_Enable|ALU_EN),
.CMP_OUT_reg(CMP_OUT),
.CMP_Flag_reg(CMP_Flag)
);

SHIFT_UNIT #(.DATA_WIDTH(8)) U_SHIFT_UNIT
(
.clk(CLK),
.A_Shift(A),
.B_Shift(B),
.ALU_FUN_LS(ALU_FUNC[1:0]),
.SHIFT_EN(SHIFT_Enable|ALU_EN),
.SHIFT_OUT_reg(SHIFT_OUT),
.SHIFT_Flag_reg(SHIFT_Flag)
);

    
endmodule
