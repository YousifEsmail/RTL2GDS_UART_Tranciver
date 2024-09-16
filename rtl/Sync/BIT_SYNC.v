module BIT_SYNC #(parameter NUM_STAGES =2) (
    input wire  ASYNC, 
    input wire RST,
    input wire CLK,
    output reg SYNC
);

reg [NUM_STAGES-2:0] MULT_FLOP_SYNC;

always @(posedge CLK or negedge RST) begin
    if(!RST)
    begin
       MULT_FLOP_SYNC<=0; 
    end
    else
    begin
        
        {SYNC,MULT_FLOP_SYNC}<={MULT_FLOP_SYNC,ASYNC};
    end
end
    
endmodule

module BUS_SYNC #(
    parameter NUM_STAGES =2,parameter BUS_WIDTH =4) (
    input wire  [BUS_WIDTH-1:0] ASYNC_REG, 
    input wire RST,
    input wire CLK,
    output wire [BUS_WIDTH-1:0] SYNC_REG
);

// declare for generate loop variable
genvar i ;

  generate
    for ( i=0 ; i< BUS_WIDTH ; i = i + 1 )
	  begin
        BIT_SYNC #(.NUM_STAGES (NUM_STAGES+1 ))
        u_BIT_SYNC(
        	.ASYNC (ASYNC_REG[i] ),
            .RST   (RST   ),
            .CLK   (CLK   ),
            .SYNC  (SYNC_REG[i]  )
        );
        
	  end
  endgenerate

    
endmodule
