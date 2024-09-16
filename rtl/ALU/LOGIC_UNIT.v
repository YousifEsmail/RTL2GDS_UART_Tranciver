module LOGIC_UNIT  #(
    parameter DATA_WIDTH =8
) (
    input wire [DATA_WIDTH-1:0] A_Logic,
    input wire [DATA_WIDTH-1:0] B_Logic,
    input wire clk,
    input wire Logic_En,
    input wire [1:0] ALU_FUN_LS,
    output reg [DATA_WIDTH-1:0] Logic_OUT_reg,
    output reg Logic_Flag_reg
);

reg [DATA_WIDTH-1:0] Logic_OUT;
reg Logic_Flag;

always @(*) 
begin
    if (Logic_En) 
    begin
        Logic_Flag=1'b1;
        case (ALU_FUN_LS)
           2'b00  :Logic_OUT = A_Logic & B_Logic;
           2'b01  :Logic_OUT = A_Logic | B_Logic;
           2'b10  :Logic_OUT = ~(A_Logic & B_Logic); 
           2'b11  :Logic_OUT = ~(A_Logic | B_Logic); 
        endcase
    end else
         begin
                Logic_Flag=1'b0;
                Logic_OUT = 'b0;
                
            end
    
end

always @(posedge clk)
begin
    Logic_Flag_reg<=Logic_Flag;
    Logic_OUT_reg<=Logic_OUT;
end
    
endmodule
