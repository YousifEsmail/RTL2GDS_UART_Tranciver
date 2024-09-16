module PAR_CHK (
    input wire PAR_en,
    input wire sampled_bit,
    input wire par_chk_en,
    input wire PAR_TYP,
    input wire PAR_CHK_New_bit ,
    input wire RST ,
    input wire CLK ,
    output wire Par_err
);


reg PAR_bit;
reg TX_Par;
reg [7:0] shift_reg;

always @(posedge CLK or negedge RST) begin
    if(!RST)
        begin
            shift_reg<=8'b0;
        end
    else
        begin
            if (PAR_CHK_New_bit) 
                begin
                    shift_reg<={shift_reg,sampled_bit};
                end
            else
                begin
                    shift_reg<=shift_reg;
                end
        end  
   end 



   
always @(posedge CLK or negedge RST) begin
    if(!RST)
        begin
            PAR_bit<=1'b0;
        end
    else
        begin
            if (par_chk_en) 
                begin
                    TX_Par<=sampled_bit;
                    if (PAR_TYP) 
                        begin
                         //1 :odd parity
                        PAR_bit<=~^shift_reg; 
                        end
                    else
                        begin
                        //0 :even parity
                        PAR_bit<=^shift_reg;   
                        end
                end
            else
                begin
                    PAR_bit<=PAR_bit;
                end
        end  
   end 



assign Par_err =(PAR_en)?(PAR_bit^TX_Par):0; 


    
endmodule
