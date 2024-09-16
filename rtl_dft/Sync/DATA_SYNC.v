module DATA_SYNC #(
    parameter NUM_STAGES=4,parameter BUS_WIDTH=8
) (
    input wire [BUS_WIDTH-1:0] Unsync_bus,
    input wire  bus_enable,
    input wire  CLK,
    input wire  RST,
    output reg [BUS_WIDTH-1:0] sync_bus,
    output reg  enable_pulse
    );
    


   reg [NUM_STAGES-1:0] MULT_FLOP_SYNC;
   reg SYNC_enable;
always @(posedge CLK or negedge RST) begin
    if(!RST)
    begin
       MULT_FLOP_SYNC<=0; 
    end
    else
    begin
        
        {SYNC_enable,MULT_FLOP_SYNC}<={MULT_FLOP_SYNC,bus_enable};
    end
end

reg pulse_Gen_ff;
always @(posedge CLK or negedge RST) begin
    if(!RST)
    begin
       pulse_Gen_ff<=0; 
    end
    else
    begin
        
        pulse_Gen_ff<=SYNC_enable;
    end
end

wire pulse_gen_comp;
assign pulse_gen_comp =(~(pulse_Gen_ff) & SYNC_enable);

always @(posedge CLK or negedge RST) begin
    if(!RST)
    begin
       enable_pulse<=0; 
    end
    else
    begin
        
        enable_pulse<=pulse_gen_comp;
    end
end


always @(posedge CLK or negedge RST) begin
    if(!RST)
    begin
       sync_bus<=0; 
    end
    else
    begin
        
       if(pulse_gen_comp)
       begin
        sync_bus<=Unsync_bus;
       end
       else
       begin
        sync_bus<=sync_bus;
       end 
    end
end



endmodule
