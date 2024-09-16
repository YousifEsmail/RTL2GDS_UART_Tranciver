
module CMP_UNIT #(
    parameter DATA_WIDTH =8
) (
    input wire [DATA_WIDTH-1:0] A_Cmp,
    input wire [DATA_WIDTH-1:0] B_Cmp,
    input wire clk,
    input wire CMP_EN,
    input wire [1:0] ALU_FUN_LS,
    output reg [DATA_WIDTH-1:0] CMP_OUT_reg,
    output reg CMP_Flag_reg 
);

reg [DATA_WIDTH-1:0] CMP_OUT;
 reg CMP_Flag;

always @(*) 
begin
    if (CMP_EN) 
    begin
        CMP_Flag=1'b1;
        case (ALU_FUN_LS)
           2'b00  :CMP_OUT = 'b0;
           2'b01  :
           begin
               if (A_Cmp==B_Cmp) begin
                   CMP_OUT ='b01 ;
               end else begin
                   CMP_OUT = 'b0;
               end
            end
           2'b10  :
            begin
               if (A_Cmp>B_Cmp) begin
                   CMP_OUT ='b10 ;
               end else begin
                   CMP_OUT = 'b0;
               end
            end          
            2'b11  :
            begin
               if (A_Cmp>B_Cmp) begin
                   CMP_OUT ='b11 ;
               end else begin
                   CMP_OUT = 'b0;
               end
            end            
            endcase
    end else
         begin
                CMP_Flag=1'b0;
                CMP_OUT = 'b0;
                
            end
    
end

always @(posedge clk)
begin
    CMP_Flag_reg<=CMP_Flag;
    CMP_OUT_reg<=CMP_OUT;
end

    
endmodule

