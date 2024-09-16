module UART_RX (
    input wire RX_in,
    input wire PAR_en,
    input wire PAR_TYP,
    input wire CLK_top,
    input wire RST_top,
    input wire [4:0]prescale_top,
    output wire data_valid,
    output wire [7:0]P_DAta
);

wire [3:0] bit_cnt_top;
wire [4:0] edge_cnt_top;
// [4:0] prescale_top;


FSM_RX u_FSM(
    .RX_in           (RX_in           ),
    .PAR_en          (PAR_en          ),
    .clk             (CLK_top         ),
    .rst             (RST_top             ),
    .Par_err         (Par_err         ),
    .STR_err         (STR_err         ),
    .STP_err         (STP_err         ),
    .bit_cnt         (bit_cnt_top [3:0]        ),
    .edge_cnt        (edge_cnt_top [4:0]        ),
    .par_chk_en      (par_chk_en      ),
    .enable          (enable          ),
    .dat_samp_en     (dat_samp_en     ),
    .str_chk_en      (str_chk_en      ),
    .stp_chk_en      (stp_chk_en      ),
    .data_valid      (data_valid      ),
    .deser_en        (deser_en        ),
    .PAR_CHK_New_bit (PAR_CHK_New_bit ),
    .reset_bit_cnt    (reset_bit_cnt),
    .prescale         (prescale_top[4:0]    ),

    .deser_New_bit   (deser_New_bit   )
);





data_sampler u_data_sampler(
    .RX_in       (RX_in       ),
    .CLK         (CLK_top     ),
    .RST         (RST_top         ),
    .dat_samp_en (dat_samp_en ),
    .edge_cnt    (edge_cnt_top[4:0]    ),
    .prescale    (prescale_top[4:0]    ),
    .sampled_bit (sampled_bit )
);


edge_bit_counter u_edge_bit_counter(
    .enable   (enable   ),
    .CLK      (CLK_top  ),
    .reset_bit_cnt    (reset_bit_cnt),
    .RST      (RST_top      ),
    .bit_cnt  (bit_cnt_top [3:0]  ),
    .prescale    (prescale_top[4:0]    ),

    .edge_cnt (edge_cnt_top[4:0] )
);


deserializer u_deserializer(
    .sampled_bit   (sampled_bit   ),
    .deser_en      (deser_en      ),
    .RST           (RST_top           ),
    .CLK           (CLK_top     ),
    .deser_New_bit (deser_New_bit ),
    .P_DAta        (P_DAta [7:0]       )
);


PAR_CHK u_PAR_CHK(
    .PAR_en          (PAR_en),
    .sampled_bit     (sampled_bit     ),
    .par_chk_en      (par_chk_en      ),
    .PAR_TYP         (PAR_TYP         ),
    .PAR_CHK_New_bit (PAR_CHK_New_bit ),
    .RST             (RST_top             ),
    .CLK             (CLK_top     ),
    .Par_err         (Par_err         )
);



STR_CHK u_STR_CHK(
    .str_chk_en  (str_chk_en  ),
    .sampled_bit (sampled_bit ),
    .RST         (RST_top             ),
    .STR_err     (STR_err     )
);

STP_CHK u_STP_CHK(
    .stp_chk_en  (stp_chk_en  ),
    .sampled_bit (sampled_bit ),
    .RST         (RST_top             ),
    .STP_err     (STP_err     )
);


    
endmodule
