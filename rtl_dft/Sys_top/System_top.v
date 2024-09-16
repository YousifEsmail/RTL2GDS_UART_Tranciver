module System_top #(
    parameter  DATA_WIDTH='d8 ,
                DATA_DEPTH='d16,
                PRESCALE_WIDTH='d5,
                NUM_STAGES='d2,
                RATIO_WD='d4
) (
    
    input   wire                          scan_clk,    
    input   wire                         scan_rst,    
    input   wire                          test_mode,    
    input   wire                          SE,    
    input   wire [2:0]                          SI,    
    output   wire [2:0]                          SO,
    input wire REF_CLK,
    input wire UART_CLK,
    input wire RST,
    input wire RX_IN,
    output wire TX_OUT
);


wire SYNC_RST_1;
wire SYNC_RST_2;
wire [7:0] Reg_2_top;
wire [7:0] Reg_3_top;
wire [7:0] RdData;
wire [15:0] ALU_OUT;
wire [7:0] TX_IN;
wire [7:0] RX_out;
wire [7:0] Address;
wire [7:0] ALU_FUNC;
wire [7:0] Reg_0;
wire [7:0] Reg_1;
wire [7:0] RX_OUT_P;
wire [7:0] WrData;
wire [7:0] TX_IN_P;

wire RST_M,REF_CLK_M,UART_RX_CLK_M,UART_TX_CLK_M,RST_SYNC1_M,RST_SYNC2_M;
MUX2 u_RST_MUX2(
    .IN0     (RST     ),
    .IN1     (scan_rst     ),
    .SL      (test_mode      ),
    .MUX_out (RST_M )
);


MUX2 u_REF_CLK_MUX2(
    .IN0     (REF_CLK     ),
    .IN1     (scan_clk     ),
    .SL      (test_mode      ),
    .MUX_out (REF_CLK_M )
);

/*
MUX2 u_UART_RX_CLK_MUX2(
    .IN0     (UART_CLK     ),
    .IN1     (scan_clk     ),
    .SL      (test_mode      ),
    .MUX_out (UART_RX_CLK_M )
);
*/

MUX2 u_UART_TX_CLK_MUX2(
    .IN0     (TX_CLK     ),
    .IN1     (scan_clk     ),
    .SL      (test_mode      ),
    .MUX_out (UART_TX_CLK_M )
);


MUX2 u_RST_SYNC1_MUX2(
    .IN0     (SYNC_RST_1     ),
    .IN1     (scan_rst     ),
    .SL      (test_mode      ),
    .MUX_out (RST_SYNC1_M )
);



MUX2 u_RST_SYNC2_MUX2(
    .IN0     (SYNC_RST_2     ),
    .IN1     (scan_rst     ),
    .SL      (test_mode      ),
    .MUX_out (RST_SYNC2_M )
);

SYS_CTRL u_SYS_CTRL(
    .CLK      (REF_CLK_M      ),
    .RST      (RST_SYNC1_M   ),
    .Rd_D     (RdData[7:0]     ),
    .Rd_D_VLD (Rd_VLD ),
    .ALU_OUT  (ALU_OUT[15:0]  ),
    .ALU_VLD  (ALU_vld_OUT  ),
    .BUSY     (BUSY     ),
    .TX_VLD   (TX_VLD   ),
    .TX_IN    (TX_IN[7:0]    ),
    .Rx_valid (Rx_valid ),
    .RX_out   (RX_out[7:0]   ),
    .RdEn     (RdEn     ),
    .Addr     (Address[7:0]     ),
    .WrEn     (WrEn     ),
    .Gate_En  (Gate_En  ),
    .Wr_D     (WrData[7:0]     ),
    .Func     (ALU_FUNC[7:0]     ),
    .ALU_EN   (ALU_EN   )
);


REG_FILE #(
    .DATA_WIDTH (DATA_WIDTH ),
    .DATA_DEPTH (DATA_DEPTH )
)
u_REG_FILE(
    .WrData  (WrData[7:0]  ),
    .Address (Address[3:0] ),
    .WrEn    (WrEn    ),
    .RdEn    (RdEn    ),
    .CLK     (REF_CLK_M ),
    .RST     (RST_SYNC1_M ),
    .RdData  (RdData[7:0]  ),
    .Rd_VLD  (Rd_VLD  ),
    .Reg_0   (Reg_0[7:0]   ),
    .Reg_1   (Reg_1[7:0]   ),
    .Reg_2   (Reg_2_top[7:0]),
    .Reg_3   (Reg_3_top[7:0])
);




ALU_TOP #(.DATA_WIDTH (DATA_WIDTH )) u_ALU_TOP(
    .A           (Reg_0[7:0]  ),
    .B           (Reg_1[7:0]  ),
    .ALU_FUNC    (ALU_FUNC[3:0] ),
    .CLK         (GATED_CLK),
    .ALU_EN      (ALU_EN   ),
    .ALU_vld_OUT (ALU_vld_OUT ),
    .ALU_OUT     (ALU_OUT [15:0]    )
);





UART #(
    .DATA_WIDTH     (DATA_WIDTH    ),
    .PRESCALE_WIDTH (PRESCALE_WIDTH )
)
u_UART(
    .RST           (RST_SYNC2_M  ),
    .TX_CLK        (UART_TX_CLK_M      ),
    .RX_CLK        (REF_CLK_M     ),
    .RX_IN_S       (RX_IN       ),
    .RX_OUT_P      (RX_OUT_P[7:0]),
    .RX_OUT_V      (RX_OUT_V      ),
    .TX_IN_P       (TX_IN_P [7:0]      ),
    .TX_IN_V       (TX_IN_V       ),
    .TX_OUT_S      (TX_OUT      ),
    .TX_OUT_V      (TX_OUT_V      ),
    .Prescale      (Reg_2_top[6:2]   ),
    .parity_enable (Reg_2_top[0] ),
    .parity_type   (Reg_2_top[1]   )
);


DATA_SYNC #(
    .NUM_STAGES (NUM_STAGES ),
    .BUS_WIDTH  (DATA_WIDTH  )
)
u_SYSCTRL_2_TX_DATA_SYNC(
    .Unsync_bus   (TX_IN [7:0]  ),
    .bus_enable   (TX_VLD   ),
    .CLK          (UART_TX_CLK_M          ),
    .RST          (RST_SYNC2_M          ),
    .sync_bus     (TX_IN_P[7:0]),
    .enable_pulse (TX_IN_V )
);



DATA_SYNC #(
    .NUM_STAGES (NUM_STAGES ),
    .BUS_WIDTH  (DATA_WIDTH  )
)
u_RX_2_SYSCTRL_DATA_SYNC(
    .Unsync_bus   (RX_OUT_P[7:0]   ),
    .bus_enable   (RX_OUT_V   ),
    .CLK          (REF_CLK_M          ),
    .RST          (RST_SYNC2_M ),
    .sync_bus     (RX_out[7:0]   ),
    .enable_pulse (Rx_valid )
);


BIT_SYNC #(
    .NUM_STAGES (NUM_STAGES )
)
u_BIT_SYNC(
    .ASYNC (TX_OUT_V ),
    .RST   (RST_SYNC2_M   ),
    .CLK   (REF_CLK_M   ),
    .SYNC  (BUSY  )
);





RST_SYNC #(
    .NUM_STAGES (NUM_STAGES )
)
u_RST_1_SYNC(
    .RST      (RST_M      ),
    .CLK      (REF_CLK_M  ),
    .SYNC_RST (SYNC_RST_1 )
);


RST_SYNC #(
    .NUM_STAGES (NUM_STAGES )
)
u_RST_2_SYNC(
    .RST      (RST_M      ),
    .CLK      (UART_CLK ),
    .SYNC_RST (SYNC_RST_2 )
);




ClkDiv #(
    .RATIO_WD (RATIO_WD )
)
U0_ClkDiv(
    .i_ref_clk   (REF_CLK_M   ),
    .i_rst       (RST_SYNC2_M),
    .i_clk_en    (1'b1    ),
    .i_div_ratio (Reg_3_top[3:0] ),
    .o_div_clk   (TX_CLK   )
);


CLK_GATE u_CLK_GATE(
    .CLK_EN    (Gate_En|test_mode),
    .CLK       (REF_CLK_M       ),
    .GATED_CLK (GATED_CLK )
);


    
endmodule