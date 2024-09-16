module SHIFT_UNIT #(
    parameter DATA_WIDTH =8
) (
    input wire [DATA_WIDTH-1:0] A_Shift,
    input wire [DATA_WIDTH-1:0] B_Shift,
    input wire clk,
    input wire SHIFT_EN,
    input wire [1:0] ALU_FUN_LS,
    output reg [DATA_WIDTH-1:0] SHIFT_OUT_reg,
    output reg SHIFT_Flag_reg 
);



reg [DATA_WIDTH-1:0] SHIFT_OUT;
reg SHIFT_Flag;
    


always @(*) 
begin
    if (SHIFT_EN) 
    begin
        SHIFT_Flag=1'b1;
        case (ALU_FUN_LS)
           2'b00  :SHIFT_OUT = A_Shift>>1;
           2'b01  :SHIFT_OUT = A_Shift<<1;
           2'b10  :SHIFT_OUT = B_Shift>>1; 
           2'b11  :SHIFT_OUT = B_Shift<<1; 
        endcase
    end else
         begin
                SHIFT_Flag=1'b0;
                SHIFT_OUT = 'b0;
                
            end
    
end

always @(posedge clk)
begin
    SHIFT_Flag_reg<=SHIFT_Flag;
    SHIFT_OUT_reg<=SHIFT_OUT;
end

    
endmodule

