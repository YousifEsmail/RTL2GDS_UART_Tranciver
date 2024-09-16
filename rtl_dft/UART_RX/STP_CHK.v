module STP_CHK (
    input wire stp_chk_en ,
    input wire RST ,
    input wire sampled_bit,
    output reg STP_err 
);
    

always @(*) 
begin
    if (!RST) 
        begin
        STP_err=0;
        end
    else
        begin
            if (stp_chk_en) 
            begin
            STP_err=!sampled_bit;
            end
            else
            STP_err=1'b0;
        end

end

endmodule

