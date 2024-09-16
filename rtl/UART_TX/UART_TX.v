module UART_TX (
    input wire [7:0] P_DATA ,
    input wire Data_Valid,
    input wire PAR_EN,
    input wire PAR_TYP,
    input wire clk,
    input wire rst,
    output wire  TX_OUT_top,
    output wire busy_top

);

wire [1:0] mux_sel_top ;

serializer u_serializer(.P_DATA   (P_DATA   ),
    .ser_en   (ser_en   ),
    .clk      (clk      ),
    .rst      (rst      ),
    .ser_done (ser_done ),
    .ser_data (ser_data )
);

FSM_TX u_FSM(
    .Data_Valid (Data_Valid ),
    .rst        (rst        ),
    .PAR_EN     (PAR_EN     ),
    .ser_done   (ser_done   ),
    .clk        (clk        ),
    .ser_en     (ser_en     ),
    .mux_sel  (mux_sel_top[1:0]    ),
    .busy       (busy_top       ),
    .PAR_Calc_en (PAR_Calc_en)
);

Par_Calc u_Par_Calc(
    .PAR_TYP    (PAR_TYP    ),
    .Data_Valid (Data_Valid ),
    .P_DATA     (P_DATA     ),
    .PAR_bit    (PAR_bit    ),
    .PAR_Calc_en (PAR_Calc_en)

);

MUX #(.start_bit (0 ),.stop_bit  (1))
u_MUX(
    .mux_sel  (mux_sel_top[1:0]  ),
    .ser_data (ser_data ),
    .clk      (clk      ),
    .PAR_bit  (PAR_bit  ),
    .TX_OUT   (TX_OUT_top   )
);





endmodule
