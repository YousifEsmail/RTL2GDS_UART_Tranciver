module STR_CHK (
    input wire str_chk_en ,
    input wire RST ,
    input wire sampled_bit,
    output reg STR_err 
);
    

always @(*) begin
    if(!RST)
    begin
        STR_err=0;
    end
    else 
    begin 
    if (str_chk_en) 
        begin
            STR_err=sampled_bit;
        end
    else
        STR_err=1'b0;

    end
end

endmodule
