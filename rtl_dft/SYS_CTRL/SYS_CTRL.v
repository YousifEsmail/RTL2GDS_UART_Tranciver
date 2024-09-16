module SYS_CTRL (

    input   wire    CLK,
    input   wire    RST,
    input   wire    [7:0] Rd_D,
    input   wire    Rd_D_VLD,
    input   wire    [15:0] ALU_OUT,
    input   wire    ALU_VLD,
    input   wire    BUSY,
    output  wire     TX_VLD,
    output  wire [7:0] TX_IN,
    //=====================
    input   wire    Rx_valid,
    input   wire    [7:0] RX_out,
    output  wire     RdEn,
    output  wire     [7:0] Addr,
    output  wire     WrEn,
    output  wire     Gate_En,
    output  wire     [7:0]Wr_D,
    output  wire     [7:0] Func,
    output  wire     ALU_EN


);
    




FSM_1_SYS_CTRL u_FSM_1_SYS_CTRL(
    .CLK      (CLK      ),
    .RST      (RST      ),
    .Rx_valid (Rx_valid ),
    .RX_out   (RX_out   ),
    .RdEn     (RdEn     ),
    .Addr    (Addr     ),
    .WrEn     (WrEn     ),
    .Gate_En  (Gate_En  ),
    .Wr_D     (Wr_D     ),
    .Func     (Func     ),
    .ALU_EN   (ALU_EN   )
);


FSM_2_SYS_CTRL u_FSM_2_SYS_CTRL(
    .CLK      (CLK      ),
    .RST      (RST      ),
    .Rd_D     (Rd_D     ),
    .Rd_D_VLD (Rd_D_VLD ),
    .ALU_OUT  (ALU_OUT  ),
    .ALU_VLD  (ALU_VLD  ),
    .BUSY     (BUSY     ),
    .TX_VLD   (TX_VLD   ),
    .TX_IN    (TX_IN    )
);


endmodule