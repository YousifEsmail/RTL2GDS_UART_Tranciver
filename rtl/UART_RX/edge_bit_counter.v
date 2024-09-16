module edge_bit_counter (
   input wire enable,
   input wire reset_bit_cnt,
    input wire CLK,
    input wire RST,
    input wire [4:0] prescale,
    output reg [3:0] bit_cnt,
    output reg  [4:0] edge_cnt
);

always @(posedge CLK or negedge RST ) 
begin
    if (!RST) 
        begin
            edge_cnt<=4'b0; 
        end
    else
     begin
        
    
        if (enable) 
            begin 
                if (edge_cnt==prescale) 
                    begin
                    edge_cnt<='b0;   
                    end   
                 else edge_cnt<=edge_cnt+'b0001;
            end
        else edge_cnt<='b0;   
        end
end    



always @(posedge CLK or negedge RST) begin
   if (!RST) 
        begin
            bit_cnt<=4'b0; 
        end
    else
    if (reset_bit_cnt) 
                begin
            bit_cnt<=4'b0; 
                end
    else
        begin
        if (enable) 
            begin 
                if (edge_cnt==prescale) 
                    begin
                    bit_cnt<=bit_cnt+1'b1;   
                    end   
                 else bit_cnt<=bit_cnt;   

            end
        else     bit_cnt<=4'b0;  
        end 

end

    
endmodule
