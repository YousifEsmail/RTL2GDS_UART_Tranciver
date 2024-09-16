module RST_SYNC #(parameter NUM_STAGES =2) (
    input wire RST,
    input wire CLK,
    output reg SYNC_RST
);

reg [NUM_STAGES-2:0] MULT_FLOP_SYNC;

always @(posedge CLK or negedge RST) begin
    if(!RST)
    begin
       MULT_FLOP_SYNC<=0;
       SYNC_RST<=0; 
    end
    else
    begin
        
        {SYNC_RST,MULT_FLOP_SYNC}<={MULT_FLOP_SYNC,1'b1};
    end
end
    
endmodule
