module ARITHMETIC_UNIT  #(
    parameter DATA_WIDTH =8
) (
    input wire [DATA_WIDTH-1:0] A_Arith,
    input wire [DATA_WIDTH-1:0] B_Arith,
    input wire clk,
    input wire Arith_En,
    input wire [1:0] ALU_FUN_LS,
    output reg [DATA_WIDTH-1:0] Arith_OUT_reg,
    output reg [DATA_WIDTH-1:0] Carry_OUT_reg,
    output reg Arith_Flag_reg 
);

reg [DATA_WIDTH-1:0] Arith_OUT;
reg [DATA_WIDTH-1:0] Carry_OUT;
reg Arith_Flag; 

always @(*) 
begin
    if (Arith_En) 
    begin
        Arith_Flag=1'b1;
        case (ALU_FUN_LS)
           2'b00  : {Carry_OUT,Arith_OUT} = A_Arith + B_Arith;
           2'b01  : {Carry_OUT,Arith_OUT} = A_Arith - B_Arith;
           2'b10  : {Carry_OUT,Arith_OUT} = A_Arith * B_Arith; 
           2'b11  : {Carry_OUT,Arith_OUT} = A_Arith / B_Arith; 
        endcase
    end else
         begin
                Arith_Flag=1'b0;
                {Carry_OUT, Arith_OUT} = 'b0;
                
            end
    
end
    
    always @(posedge clk)
begin
    Arith_Flag_reg<=Arith_Flag;
    {Carry_OUT_reg,Arith_OUT_reg}<={Carry_OUT, Arith_OUT};
end

endmodule