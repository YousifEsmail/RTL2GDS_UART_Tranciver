module Decoder_Unit (
    input wire [1:0] ALU_FUN_MS,
    output  reg Arith_En,
    output  reg Logic_En,
    output  reg CMP_EN,
    output  reg SHIFT_EN
    );

    // ALU_FUN_DECODER

    always @(*) 
    begin
        Arith_En=1'b0;
        Logic_En=1'b0;
        CMP_EN=1'b0;
        SHIFT_EN=1'b0;

    case (ALU_FUN_MS)
       2'b00 :begin
           Arith_En=1'b1;
       end 
       2'b01 :begin
           Logic_En=1'b1;
       end 
       2'b10 :begin
           CMP_EN=1'b1;
       end 
       2'b11 :begin
           SHIFT_EN=1'b1;
       end 
        default:begin
            Arith_En=1'b0;
            Logic_En=1'b0;
            CMP_EN=1'b0;
            SHIFT_EN=1'b0;
        end
        
    endcase
    
    end
    
endmodule
