
module deserializer (
    input wire sampled_bit,
    input wire deser_en ,
    input wire RST ,
    input wire CLK ,
    input wire deser_New_bit ,
    output reg [7:0] P_DAta

);

    reg [7:0] shift_reg;

   always @(posedge CLK or negedge RST) begin
    if(!RST)
        begin
            shift_reg<=8'b0;
        end
    else
        begin
            if (deser_New_bit) 
                begin
                    shift_reg<={sampled_bit,shift_reg[7:1]};
                end
            else
                begin
                    shift_reg<=shift_reg;
                end
        end  
   end 


always @(*) begin
        
            if (deser_en) 
                begin
                    P_DAta=shift_reg;
                end
            else
                begin
                    P_DAta=shift_reg;
                end
        end  


endmodule