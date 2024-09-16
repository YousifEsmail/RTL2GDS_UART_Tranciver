
module UART #( parameter DATA_WIDTH = 8 , PRESCALE_WIDTH = 5 )

(/*
 input   wire                          scan_clk,    
  input   wire                         scan_rst,    
 input   wire                          test_mode,    
 input   wire                          SE,    
 input   wire                          SI,    
 output   wire                          SO,*/
 input   wire                          RST,
 input   wire                          TX_CLK,
 input   wire                          RX_CLK,
 input   wire                          RX_IN_S,
 output  wire   [DATA_WIDTH-1:0]       RX_OUT_P, 
 output  wire                          RX_OUT_V,
 input   wire   [DATA_WIDTH-1:0]       TX_IN_P, 
 input   wire                          TX_IN_V, 
 output  wire                          TX_OUT_S,
 output  wire                          TX_OUT_V,  
 input   wire   [PRESCALE_WIDTH-1:0]   Prescale,
 input   wire                          parity_enable,
 input   wire                          parity_type
);
/*
wire TX_CLK_MUX,RX_CLK_MUX,RST_MUX;
MUX2 u_MUX2_TX_CLOCK(
    .IN0     (TX_CLK     ),
    .IN1     (scan_clk     ),
    .SL      (test_mode      ),
    .MUX_out (TX_CLK_MUX )
);

MUX2 u_MUX2_RX_CLOCK(
    .IN0     (RX_CLK     ),
    .IN1     (scan_clk     ),
    .SL      (test_mode      ),
    .MUX_out (RX_CLK_MUX )
);

MUX2 u_MUX2_RST(
    .IN0     (RST  ),
    .IN1     (scan_rst     ),
    .SL      (test_mode      ),
    .MUX_out (RST_MUX )
);
*/
UART_TX u_UART_TX_top(
    .P_DATA     (TX_IN_P     ),
    .Data_Valid (TX_IN_V ),
    .PAR_EN     (parity_enable     ),
    .PAR_TYP    (parity_type    ),
    .clk        (TX_CLK        ),
    .rst        (RST        ),
    .TX_OUT_top (TX_OUT_S ),
    .busy_top   (TX_OUT_V   )
);

UART_RX u_UART_RX_top(
    .RX_in        (RX_IN_S        ),
    .PAR_en       (parity_enable       ),
    .PAR_TYP      (parity_type      ),
    .CLK_top      (RX_CLK      ),
    .RST_top      (RST      ),
    .prescale_top (Prescale ),
    .data_valid   (RX_OUT_V   ),
    .P_DAta       (RX_OUT_P       )
);



endmodule
 
