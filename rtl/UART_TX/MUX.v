module MUX #(parameter start_bit=0,parameter stop_bit=1)
(
    input wire [1:0] mux_sel,
    input wire  ser_data,
    input wire  clk,
    input wire  PAR_bit,
    output reg TX_OUT
);

always @(*) begin
    case (mux_sel)
       2'b00: TX_OUT=start_bit;
       2'b01: TX_OUT=ser_data;
       2'b10: TX_OUT=PAR_bit;
       2'b11: TX_OUT=stop_bit;
       
    endcase

end
    
endmodule