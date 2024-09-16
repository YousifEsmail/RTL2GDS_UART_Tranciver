/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Sun Sep  4 03:28:42 2022
/////////////////////////////////////////////////////////////


module MUX2_4 ( IN0, IN1, SL, MUX_out );
  input IN0, IN1, SL;
  output MUX_out;


  MX2X2M U1 ( .A(IN0), .B(IN1), .S0(SL), .Y(MUX_out) );
endmodule


module MUX2_3 ( IN0, IN1, SL, MUX_out );
  input IN0, IN1, SL;
  output MUX_out;


  CLKMX2X4M U1 ( .A(IN0), .B(IN1), .S0(SL), .Y(MUX_out) );
endmodule


module MUX2_2 ( IN0, IN1, SL, MUX_out );
  input IN0, IN1, SL;
  output MUX_out;


  CLKMX2X4M U1 ( .A(IN0), .B(IN1), .S0(SL), .Y(MUX_out) );
endmodule


module MUX2_1 ( IN0, IN1, SL, MUX_out );
  input IN0, IN1, SL;
  output MUX_out;


  AO2B2X2M U1 ( .B0(SL), .B1(IN1), .A0(IN0), .A1N(SL), .Y(MUX_out) );
endmodule


module MUX2_0 ( IN0, IN1, SL, MUX_out );
  input IN0, IN1, SL;
  output MUX_out;


  AO2B2X2M U1 ( .B0(SL), .B1(IN1), .A0(IN0), .A1N(SL), .Y(MUX_out) );
endmodule


module FSM_1_SYS_CTRL_test_1 ( CLK, RST, Rx_valid, RX_out, RdEn, Addr, WrEn, 
        Gate_En, Wr_D, Func, ALU_EN, test_si, test_so, test_se );
  input [7:0] RX_out;
  output [7:0] Addr;
  output [7:0] Wr_D;
  output [7:0] Func;
  input CLK, RST, Rx_valid, test_si, test_se;
  output RdEn, WrEn, Gate_En, ALU_EN, test_so;
  wire   n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66;
  wire   [7:0] Addr_reg;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign Func[4] = 1'b0;
  assign Func[5] = 1'b0;
  assign Func[6] = 1'b0;
  assign Func[7] = 1'b0;
  assign test_so = current_state[2];

  SDFFRQX1M \current_state_reg[0]  ( .D(next_state[0]), .SI(Addr_reg[7]), .SE(
        test_se), .CK(CLK), .RN(n57), .Q(current_state[0]) );
  SDFFRQX1M \Addr_reg_reg[7]  ( .D(Addr[7]), .SI(Addr_reg[6]), .SE(test_se), 
        .CK(CLK), .RN(n57), .Q(Addr_reg[7]) );
  SDFFRQX1M \Addr_reg_reg[6]  ( .D(Addr[6]), .SI(Addr_reg[5]), .SE(test_se), 
        .CK(CLK), .RN(n57), .Q(Addr_reg[6]) );
  SDFFRQX1M \Addr_reg_reg[5]  ( .D(Addr[5]), .SI(Addr_reg[4]), .SE(test_se), 
        .CK(CLK), .RN(n57), .Q(Addr_reg[5]) );
  SDFFRQX1M \Addr_reg_reg[4]  ( .D(Addr[4]), .SI(Addr_reg[3]), .SE(test_se), 
        .CK(CLK), .RN(n57), .Q(Addr_reg[4]) );
  SDFFRQX1M \Addr_reg_reg[3]  ( .D(Addr[3]), .SI(Addr_reg[2]), .SE(test_se), 
        .CK(CLK), .RN(n57), .Q(Addr_reg[3]) );
  SDFFRQX1M \Addr_reg_reg[2]  ( .D(Addr[2]), .SI(Addr_reg[1]), .SE(test_se), 
        .CK(CLK), .RN(n57), .Q(Addr_reg[2]) );
  SDFFRQX1M \Addr_reg_reg[1]  ( .D(Addr[1]), .SI(Addr_reg[0]), .SE(test_se), 
        .CK(CLK), .RN(n57), .Q(Addr_reg[1]) );
  SDFFRQX1M \Addr_reg_reg[0]  ( .D(Addr[0]), .SI(test_si), .SE(test_se), .CK(
        CLK), .RN(n57), .Q(Addr_reg[0]) );
  SDFFRQX1M \current_state_reg[1]  ( .D(next_state[1]), .SI(n65), .SE(test_se), 
        .CK(CLK), .RN(n57), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n66), .SE(test_se), 
        .CK(CLK), .RN(n57), .Q(current_state[2]) );
  NOR2X6M U14 ( .A(n42), .B(n49), .Y(Func[1]) );
  OAI2BB2X2M U15 ( .B0(n64), .B1(n41), .A0N(Addr_reg[2]), .A1N(n56), .Y(
        Addr[2]) );
  OAI2BB2X2M U16 ( .B0(n64), .B1(n40), .A0N(Addr_reg[3]), .A1N(n56), .Y(
        Addr[3]) );
  NOR2X4M U28 ( .A(n49), .B(n60), .Y(ALU_EN) );
  OAI211X2M U29 ( .A0(n64), .A1(n43), .B0(n50), .C0(n47), .Y(Addr[0]) );
  OAI2BB2X2M U30 ( .B0(n64), .B1(n42), .A0N(Addr_reg[1]), .A1N(n56), .Y(
        Addr[1]) );
  NOR2X2M U31 ( .A(n63), .B(n60), .Y(WrEn) );
  INVX4M U32 ( .A(n58), .Y(n57) );
  INVX2M U33 ( .A(RST), .Y(n58) );
  NOR2X2M U34 ( .A(n41), .B(n49), .Y(Func[2]) );
  NOR2X2M U35 ( .A(n40), .B(n49), .Y(Func[3]) );
  INVX2M U36 ( .A(n55), .Y(n60) );
  NOR2X6M U37 ( .A(n43), .B(n49), .Y(Func[0]) );
  AOI2BB1X2M U38 ( .A0N(n20), .A1N(n60), .B0(ALU_EN), .Y(n47) );
  OAI211X2M U39 ( .A0(n60), .A1(n46), .B0(n29), .C0(n59), .Y(RdEn) );
  INVX2M U40 ( .A(ALU_EN), .Y(n59) );
  NAND2BX2M U41 ( .AN(n33), .B(n24), .Y(n29) );
  INVX2M U42 ( .A(n44), .Y(n63) );
  NAND3BX2M U43 ( .AN(n56), .B(n20), .C(n21), .Y(n44) );
  NOR2X2M U44 ( .A(n63), .B(n43), .Y(Wr_D[0]) );
  NOR2X2M U45 ( .A(n63), .B(n42), .Y(Wr_D[1]) );
  NOR2X2M U46 ( .A(n63), .B(n41), .Y(Wr_D[2]) );
  NOR2X2M U47 ( .A(n63), .B(n40), .Y(Wr_D[3]) );
  NOR2X2M U48 ( .A(n63), .B(n36), .Y(Wr_D[7]) );
  NOR2X2M U49 ( .A(n63), .B(n39), .Y(Wr_D[4]) );
  NOR2X2M U50 ( .A(n63), .B(n38), .Y(Wr_D[5]) );
  NOR2X2M U51 ( .A(n63), .B(n37), .Y(Wr_D[6]) );
  NAND3X2M U52 ( .A(current_state[2]), .B(current_state[0]), .C(
        current_state[1]), .Y(n49) );
  NAND2X2M U53 ( .A(RX_out[2]), .B(n55), .Y(n41) );
  NAND2X2M U54 ( .A(RX_out[3]), .B(n55), .Y(n40) );
  BUFX2M U55 ( .A(Rx_valid), .Y(n55) );
  NAND2X2M U56 ( .A(Addr_reg[0]), .B(n56), .Y(n50) );
  INVX2M U57 ( .A(n51), .Y(n64) );
  OAI31X1M U58 ( .A0(n66), .A1(current_state[2]), .A2(current_state[0]), .B0(
        n46), .Y(n51) );
  NAND3X2M U59 ( .A(current_state[2]), .B(n65), .C(current_state[1]), .Y(n20)
         );
  NAND3X2M U60 ( .A(n65), .B(n66), .C(current_state[2]), .Y(n46) );
  INVX2M U61 ( .A(current_state[0]), .Y(n65) );
  INVX2M U62 ( .A(current_state[1]), .Y(n66) );
  BUFX2M U63 ( .A(n45), .Y(n56) );
  NOR3X2M U64 ( .A(n65), .B(current_state[2]), .C(n66), .Y(n45) );
  NOR4BX2M U65 ( .AN(RX_out[3]), .B(n36), .C(n32), .D(current_state[0]), .Y(
        n24) );
  NAND3X2M U66 ( .A(current_state[0]), .B(n66), .C(current_state[2]), .Y(n21)
         );
  NAND2X2M U67 ( .A(RX_out[1]), .B(n55), .Y(n42) );
  NAND2X2M U68 ( .A(RX_out[0]), .B(n55), .Y(n43) );
  NAND2X2M U69 ( .A(n55), .B(RX_out[7]), .Y(n36) );
  NAND4X2M U70 ( .A(RX_out[2]), .B(RX_out[4]), .C(RX_out[6]), .D(n48), .Y(n33)
         );
  NOR3X2M U71 ( .A(n62), .B(RX_out[5]), .C(RX_out[1]), .Y(n48) );
  INVX2M U72 ( .A(RX_out[0]), .Y(n62) );
  OR2X2M U73 ( .A(current_state[2]), .B(current_state[1]), .Y(n32) );
  NAND4X2M U74 ( .A(RX_out[5]), .B(RX_out[1]), .C(n30), .D(n24), .Y(n26) );
  NOR2X2M U75 ( .A(RX_out[6]), .B(RX_out[2]), .Y(n30) );
  OAI211X2M U76 ( .A0(n60), .A1(n21), .B0(n27), .C0(n61), .Y(next_state[1]) );
  OAI21X2M U77 ( .A0(n65), .A1(n60), .B0(current_state[1]), .Y(n27) );
  INVX2M U78 ( .A(n28), .Y(n61) );
  OAI31X1M U79 ( .A0(RX_out[0]), .A1(RX_out[4]), .A2(n26), .B0(n29), .Y(n28)
         );
  OAI2BB2X1M U80 ( .B0(n64), .B1(n39), .A0N(Addr_reg[4]), .A1N(n56), .Y(
        Addr[4]) );
  OAI2BB2X1M U81 ( .B0(n64), .B1(n38), .A0N(Addr_reg[5]), .A1N(n56), .Y(
        Addr[5]) );
  OAI2BB2X1M U82 ( .B0(n64), .B1(n37), .A0N(Addr_reg[6]), .A1N(n56), .Y(
        Addr[6]) );
  OAI2BB2X1M U83 ( .B0(n64), .B1(n36), .A0N(Addr_reg[7]), .A1N(n56), .Y(
        Addr[7]) );
  NAND2X2M U84 ( .A(n33), .B(n34), .Y(n25) );
  NAND4X2M U85 ( .A(RX_out[2]), .B(n62), .C(RX_out[6]), .D(n35), .Y(n34) );
  NOR3X2M U86 ( .A(RX_out[1]), .B(RX_out[5]), .C(RX_out[4]), .Y(n35) );
  NAND2X2M U87 ( .A(n47), .B(n29), .Y(Gate_En) );
  NAND4X2M U88 ( .A(n20), .B(n21), .C(n22), .D(n23), .Y(next_state[2]) );
  AOI22X1M U89 ( .A0(n24), .A1(n25), .B0(current_state[2]), .B1(n60), .Y(n23)
         );
  NAND3BX2M U90 ( .AN(n26), .B(RX_out[0]), .C(RX_out[4]), .Y(n22) );
  OAI2BB1X2M U91 ( .A0N(n25), .A1N(n24), .B0(n31), .Y(next_state[0]) );
  AOI33X2M U92 ( .A0(n32), .A1(n60), .A2(current_state[0]), .B0(
        current_state[1]), .B1(n65), .B2(n55), .Y(n31) );
  NAND2X2M U93 ( .A(RX_out[4]), .B(n55), .Y(n39) );
  NAND2X2M U94 ( .A(RX_out[5]), .B(n55), .Y(n38) );
  NAND2X2M U95 ( .A(RX_out[6]), .B(n55), .Y(n37) );
endmodule


module FSM_2_SYS_CTRL_test_1 ( CLK, RST, Rd_D, Rd_D_VLD, ALU_OUT, ALU_VLD, 
        BUSY, TX_VLD, TX_IN, test_si, test_so, test_se );
  input [7:0] Rd_D;
  input [15:0] ALU_OUT;
  output [7:0] TX_IN;
  input CLK, RST, Rd_D_VLD, ALU_VLD, BUSY, test_si, test_se;
  output TX_VLD, test_so;
  wire   N75, N76, N77, N78, N79, N80, N81, N82, N88, N89, N90, N91, N92, N93,
         N94, N95, \finish[3] , \finish[2] , \finish[1] , \finish[0] , N86,
         N102, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n73, n74, n75, n76;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign test_so = n55;

  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(n56), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[1]) );
  SDFFRQX1M \current_state_reg[0]  ( .D(next_state[0]), .SI(test_si), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(current_state[1]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[2]) );
  NOR3XLM U4 ( .A(n70), .B(n74), .C(n22), .Y(next_state[2]) );
  INVX2M U10 ( .A(BUSY), .Y(n70) );
  AOI21X2M U11 ( .A0(n70), .A1(n59), .B0(n17), .Y(n18) );
  OAI2BB1X2M U12 ( .A0N(n31), .A1N(n69), .B0(n20), .Y(n21) );
  NAND3BX2M U13 ( .AN(n17), .B(n58), .C(\finish[3] ), .Y(n24) );
  AND2X2M U14 ( .A(\finish[2] ), .B(n18), .Y(\finish[3] ) );
  AND2X2M U15 ( .A(\finish[1] ), .B(n18), .Y(\finish[2] ) );
  AND2X2M U16 ( .A(\finish[0] ), .B(n18), .Y(\finish[1] ) );
  INVX2M U17 ( .A(n58), .Y(n59) );
  OR2X2M U18 ( .A(N86), .B(n17), .Y(\finish[0] ) );
  INVX2M U19 ( .A(ALU_OUT[7]), .Y(n67) );
  INVX2M U20 ( .A(ALU_OUT[1]), .Y(n61) );
  INVX2M U21 ( .A(ALU_OUT[2]), .Y(n62) );
  INVX2M U22 ( .A(ALU_OUT[3]), .Y(n63) );
  INVX2M U23 ( .A(ALU_OUT[4]), .Y(n64) );
  INVX2M U24 ( .A(ALU_OUT[5]), .Y(n65) );
  INVX2M U25 ( .A(ALU_OUT[6]), .Y(n66) );
  INVX2M U26 ( .A(ALU_OUT[0]), .Y(n60) );
  MX2X2M U27 ( .A(ALU_OUT[0]), .B(N88), .S0(n56), .Y(n39) );
  OAI22X1M U28 ( .A0(n59), .A1(n67), .B0(n70), .B1(n60), .Y(N88) );
  OAI31X1M U29 ( .A0(n69), .A1(current_state[2]), .A2(n23), .B0(n21), .Y(
        next_state[1]) );
  NOR2X2M U30 ( .A(BUSY), .B(n24), .Y(n23) );
  NAND2BX2M U31 ( .AN(Rd_D_VLD), .B(ALU_VLD), .Y(n31) );
  OAI2B1X2M U32 ( .A1N(n20), .A0(Rd_D_VLD), .B0(n21), .Y(n19) );
  NOR2X2M U33 ( .A(BUSY), .B(n19), .Y(N86) );
  AOI21X2M U34 ( .A0(n25), .A1(n26), .B0(current_state[2]), .Y(next_state[0])
         );
  NAND2X2M U35 ( .A(BUSY), .B(current_state[1]), .Y(n26) );
  AOI33X2M U36 ( .A0(n24), .A1(n70), .A2(current_state[0]), .B0(n68), .B1(n69), 
        .B2(n57), .Y(n25) );
  BUFX2M U37 ( .A(N102), .Y(n58) );
  NOR2BX2M U38 ( .AN(n19), .B(BUSY), .Y(N102) );
  BUFX2M U39 ( .A(n27), .Y(n57) );
  NOR2BX2M U40 ( .AN(Rd_D_VLD), .B(ALU_VLD), .Y(n27) );
  INVX2M U41 ( .A(n74), .Y(n69) );
  NAND3X2M U42 ( .A(current_state[0]), .B(n55), .C(n74), .Y(n17) );
  NOR2X2M U43 ( .A(current_state[0]), .B(current_state[2]), .Y(n20) );
  CLKXOR2X2M U44 ( .A(n68), .B(current_state[2]), .Y(n22) );
  INVX2M U45 ( .A(current_state[0]), .Y(n68) );
  MXI3X1M U46 ( .A(n8), .B(n47), .C(n9), .S0(n7), .S1(n76), .Y(TX_IN[0]) );
  INVX2M U47 ( .A(Rd_D[0]), .Y(n47) );
  NAND2X2M U48 ( .A(n39), .B(n55), .Y(n9) );
  MXI3X1M U49 ( .A(n10), .B(n48), .C(n11), .S0(n7), .S1(n75), .Y(TX_IN[1]) );
  INVX2M U50 ( .A(Rd_D[1]), .Y(n48) );
  NAND2X2M U51 ( .A(n40), .B(n55), .Y(n11) );
  MXI3X1M U52 ( .A(n12), .B(n49), .C(n13), .S0(n7), .S1(current_state[1]), .Y(
        TX_IN[2]) );
  INVX2M U53 ( .A(Rd_D[2]), .Y(n49) );
  NAND2X2M U54 ( .A(n41), .B(n55), .Y(n13) );
  MXI3X1M U55 ( .A(n14), .B(n50), .C(n15), .S0(n7), .S1(n76), .Y(TX_IN[3]) );
  INVX2M U56 ( .A(Rd_D[3]), .Y(n50) );
  NAND2X2M U57 ( .A(n42), .B(n55), .Y(n15) );
  MXI3X1M U58 ( .A(n16), .B(n51), .C(n32), .S0(n7), .S1(n75), .Y(TX_IN[4]) );
  INVX2M U59 ( .A(Rd_D[4]), .Y(n51) );
  NAND2X2M U60 ( .A(n43), .B(n55), .Y(n32) );
  MXI3X1M U61 ( .A(n33), .B(n52), .C(n34), .S0(n7), .S1(current_state[1]), .Y(
        TX_IN[5]) );
  INVX2M U62 ( .A(Rd_D[5]), .Y(n52) );
  NAND2X2M U63 ( .A(n44), .B(n55), .Y(n34) );
  MXI3X1M U64 ( .A(n35), .B(n53), .C(n36), .S0(n7), .S1(n76), .Y(TX_IN[6]) );
  INVX2M U65 ( .A(Rd_D[6]), .Y(n53) );
  NAND2X2M U66 ( .A(n45), .B(n55), .Y(n36) );
  MXI3X1M U67 ( .A(n37), .B(n54), .C(n38), .S0(n7), .S1(n75), .Y(TX_IN[7]) );
  INVX2M U68 ( .A(Rd_D[7]), .Y(n54) );
  NAND2X2M U69 ( .A(n46), .B(n55), .Y(n38) );
  CLKXOR2X2M U70 ( .A(n56), .B(current_state[2]), .Y(n7) );
  OAI211X2M U71 ( .A0(n28), .A1(n17), .B0(n21), .C0(n29), .Y(TX_VLD) );
  NOR2X2M U72 ( .A(n58), .B(N86), .Y(n28) );
  AOI22X1M U73 ( .A0(n30), .A1(n69), .B0(n57), .B1(n20), .Y(n29) );
  OAI32X1M U74 ( .A0(n55), .A1(current_state[0]), .A2(BUSY), .B0(
        current_state[2]), .B1(n68), .Y(n30) );
  INVX4M U75 ( .A(current_state[2]), .Y(n55) );
  BUFX2M U76 ( .A(current_state[0]), .Y(n56) );
  NAND2X2M U77 ( .A(N75), .B(n55), .Y(n8) );
  OAI2BB2X1M U78 ( .B0(n60), .B1(n31), .A0N(Rd_D[0]), .A1N(n57), .Y(N75) );
  NAND2X2M U79 ( .A(N76), .B(n55), .Y(n10) );
  OAI2BB2X1M U80 ( .B0(n61), .B1(n31), .A0N(Rd_D[1]), .A1N(n57), .Y(N76) );
  NAND2X2M U81 ( .A(N77), .B(n55), .Y(n12) );
  OAI2BB2X1M U82 ( .B0(n62), .B1(n31), .A0N(Rd_D[2]), .A1N(n57), .Y(N77) );
  NAND2X2M U83 ( .A(N78), .B(n55), .Y(n14) );
  OAI2BB2X1M U84 ( .B0(n63), .B1(n31), .A0N(Rd_D[3]), .A1N(n57), .Y(N78) );
  NAND2X2M U85 ( .A(N79), .B(n55), .Y(n16) );
  OAI2BB2X1M U86 ( .B0(n64), .B1(n31), .A0N(Rd_D[4]), .A1N(n57), .Y(N79) );
  NAND2X2M U87 ( .A(N80), .B(n55), .Y(n33) );
  OAI2BB2X1M U88 ( .B0(n65), .B1(n31), .A0N(Rd_D[5]), .A1N(n57), .Y(N80) );
  NAND2X2M U89 ( .A(N81), .B(n55), .Y(n35) );
  OAI2BB2X1M U90 ( .B0(n66), .B1(n31), .A0N(Rd_D[6]), .A1N(n57), .Y(N81) );
  NAND2X2M U91 ( .A(N82), .B(n55), .Y(n37) );
  OAI2BB2X1M U92 ( .B0(n67), .B1(n31), .A0N(Rd_D[7]), .A1N(n57), .Y(N82) );
  MX2X2M U93 ( .A(ALU_OUT[1]), .B(N89), .S0(n56), .Y(n40) );
  OAI2BB2X1M U94 ( .B0(n70), .B1(n61), .A0N(ALU_OUT[8]), .A1N(n58), .Y(N89) );
  MX2X2M U95 ( .A(ALU_OUT[2]), .B(N90), .S0(n56), .Y(n41) );
  OAI2BB2X1M U96 ( .B0(n70), .B1(n62), .A0N(ALU_OUT[9]), .A1N(n58), .Y(N90) );
  MX2X2M U97 ( .A(ALU_OUT[3]), .B(N91), .S0(n56), .Y(n42) );
  OAI2BB2X1M U98 ( .B0(n70), .B1(n63), .A0N(ALU_OUT[10]), .A1N(n58), .Y(N91)
         );
  MX2X2M U99 ( .A(ALU_OUT[4]), .B(N92), .S0(n56), .Y(n43) );
  OAI2BB2X1M U100 ( .B0(n70), .B1(n64), .A0N(ALU_OUT[11]), .A1N(n58), .Y(N92)
         );
  MX2X2M U101 ( .A(ALU_OUT[5]), .B(N93), .S0(n56), .Y(n44) );
  OAI2BB2X1M U102 ( .B0(n70), .B1(n65), .A0N(ALU_OUT[12]), .A1N(n58), .Y(N93)
         );
  MX2X2M U103 ( .A(ALU_OUT[6]), .B(N94), .S0(n56), .Y(n45) );
  OAI2BB2X1M U104 ( .B0(n70), .B1(n66), .A0N(ALU_OUT[13]), .A1N(n58), .Y(N94)
         );
  MX2X2M U105 ( .A(ALU_OUT[7]), .B(N95), .S0(n56), .Y(n46) );
  OAI2BB2X1M U106 ( .B0(n70), .B1(n67), .A0N(ALU_OUT[14]), .A1N(n58), .Y(N95)
         );
  INVXLM U107 ( .A(current_state[1]), .Y(n73) );
  INVXLM U108 ( .A(n73), .Y(n74) );
  INVXLM U109 ( .A(n73), .Y(n75) );
  INVXLM U110 ( .A(n73), .Y(n76) );
endmodule


module SYS_CTRL_test_1 ( CLK, RST, Rd_D, Rd_D_VLD, ALU_OUT, ALU_VLD, BUSY, 
        TX_VLD, TX_IN, Rx_valid, RX_out, RdEn, Addr, WrEn, Gate_En, Wr_D, Func, 
        ALU_EN, test_si, test_so, test_se );
  input [7:0] Rd_D;
  input [15:0] ALU_OUT;
  output [7:0] TX_IN;
  input [7:0] RX_out;
  output [7:0] Addr;
  output [7:0] Wr_D;
  output [7:0] Func;
  input CLK, RST, Rd_D_VLD, ALU_VLD, BUSY, Rx_valid, test_si, test_se;
  output TX_VLD, RdEn, WrEn, Gate_En, ALU_EN, test_so;
  wire   n2;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;
  assign Func[7] = 1'b0;
  assign Func[6] = 1'b0;
  assign Func[5] = 1'b0;
  assign Func[4] = 1'b0;

  FSM_1_SYS_CTRL_test_1 u_FSM_1_SYS_CTRL ( .CLK(CLK), .RST(RST), .Rx_valid(
        Rx_valid), .RX_out(RX_out), .RdEn(RdEn), .Addr(Addr), .WrEn(WrEn), 
        .Gate_En(Gate_En), .Wr_D(Wr_D), .Func({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, Func[3:0]}), .ALU_EN(ALU_EN), .test_si(
        test_si), .test_so(n2), .test_se(test_se) );
  FSM_2_SYS_CTRL_test_1 u_FSM_2_SYS_CTRL ( .CLK(CLK), .RST(RST), .Rd_D(Rd_D), 
        .Rd_D_VLD(Rd_D_VLD), .ALU_OUT(ALU_OUT), .ALU_VLD(ALU_VLD), .BUSY(BUSY), 
        .TX_VLD(TX_VLD), .TX_IN(TX_IN), .test_si(n2), .test_so(test_so), 
        .test_se(test_se) );
endmodule


module REG_FILE_00000008_00000010_test_1 ( WrData, Address, WrEn, RdEn, CLK, 
        RST, RdData, Rd_VLD, Reg_0, Reg_1, Reg_2, Reg_3, test_si3, test_si2, 
        test_si1, test_so3, test_so2, test_so1, test_se );
  input [7:0] WrData;
  input [3:0] Address;
  output [7:0] RdData;
  output [7:0] Reg_0;
  output [7:0] Reg_1;
  output [7:0] Reg_2;
  output [7:0] Reg_3;
  input WrEn, RdEn, CLK, RST, test_si3, test_si2, test_si1, test_se;
  output Rd_VLD, test_so3, test_so2, test_so1;
  wire   \Reg_File[15][7] , \Reg_File[15][6] , \Reg_File[15][5] ,
         \Reg_File[15][4] , \Reg_File[15][3] , \Reg_File[15][2] ,
         \Reg_File[15][1] , \Reg_File[15][0] , \Reg_File[14][7] ,
         \Reg_File[14][6] , \Reg_File[14][5] , \Reg_File[14][4] ,
         \Reg_File[14][3] , \Reg_File[14][2] , \Reg_File[14][1] ,
         \Reg_File[14][0] , \Reg_File[11][7] , \Reg_File[11][6] ,
         \Reg_File[11][5] , \Reg_File[11][4] , \Reg_File[11][3] ,
         \Reg_File[11][2] , \Reg_File[11][1] , \Reg_File[11][0] ,
         \Reg_File[10][7] , \Reg_File[10][6] , \Reg_File[10][5] ,
         \Reg_File[10][4] , \Reg_File[10][3] , \Reg_File[10][2] ,
         \Reg_File[10][1] , \Reg_File[10][0] , \Reg_File[5][7] ,
         \Reg_File[5][6] , \Reg_File[5][5] , \Reg_File[5][4] ,
         \Reg_File[5][3] , \Reg_File[5][2] , \Reg_File[5][1] ,
         \Reg_File[5][0] , \Reg_File[4][7] , \Reg_File[4][6] ,
         \Reg_File[4][5] , \Reg_File[4][4] , \Reg_File[4][3] ,
         \Reg_File[4][2] , \Reg_File[4][1] , \Reg_File[4][0] , N109, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n247,
         n248, n249, n250, n251, n252, n253, n254, n256, n257, n258, n259,
         n260, n261, n262, n263, n265, n266, n267, n268, n269, n270, n271,
         n272, n274, n275, n276, n277, n278, n279, n280, n281, n283, n284,
         n285, n286, n287, n288, n289, n290, n292, n293, n294, n295, n296,
         n297, n298, n299, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n427, n428, n429, n430, n431, n432, n433, n434, n435, n436, n437,
         n438, n439, n440, n441, n442, n443, n444, n445, n446, n447, n448,
         n449, n450, n451, n452, n453, n454, n455, n456, n457, n458, n459,
         n460, n461, n462, n463, n464, n465, n466, n467, n468, n469, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n581, n582, n583,
         n584, n585, n586, n587, n588, n589, n590, n591, n592, n593, n594,
         n595, n596, n597, n598, n599, n600, n601, n602, n603, n604, n605,
         n606, n607, n608, n609, n610, n611, n612, n613, n614, n615, n616,
         n617, n618, n619, n620, n621, n622, n623, n624, n625, n626, n627,
         n628, n629, n630, n631, n632, n633, n634, n635, n636, n637, n638,
         n639, n640, n641, n642, n643, n644, n645, n646, n647, n648, n649,
         n650, n651, n652, n653, n654, n655, n656, n657, n658, n659, n660,
         n661, n662, n663, n664, n665, n666, n667, n668, n673, n674, n675,
         n676, n677, n678, n679, n680, n681, n682, n683, n684, n685, n1, n3;
  assign test_so3 = \Reg_File[15][7] ;

  SEDFFX1M \RdData_reg[6]  ( .D(n202), .SI(RdData[5]), .E(n210), .SE(test_se), 
        .CK(CLK), .Q(RdData[6]) );
  SEDFFX1M \RdData_reg[5]  ( .D(n209), .SI(RdData[4]), .E(n210), .SE(test_se), 
        .CK(CLK), .Q(RdData[5]) );
  SEDFFX1M \RdData_reg[4]  ( .D(n208), .SI(RdData[3]), .E(n210), .SE(test_se), 
        .CK(CLK), .Q(RdData[4]) );
  SEDFFX1M \RdData_reg[3]  ( .D(n207), .SI(RdData[2]), .E(n210), .SE(test_se), 
        .CK(CLK), .Q(RdData[3]) );
  SEDFFX1M \RdData_reg[2]  ( .D(n206), .SI(RdData[1]), .E(n210), .SE(test_se), 
        .CK(CLK), .Q(RdData[2]) );
  SEDFFX1M \RdData_reg[1]  ( .D(n205), .SI(RdData[0]), .E(n210), .SE(test_se), 
        .CK(CLK), .Q(RdData[1]) );
  SEDFFX1M \RdData_reg[0]  ( .D(n204), .SI(test_si1), .E(n210), .SE(test_se), 
        .CK(CLK), .Q(RdData[0]) );
  SEDFFX1M \RdData_reg[7]  ( .D(n203), .SI(RdData[6]), .E(n210), .SE(test_se), 
        .CK(CLK), .Q(RdData[7]) );
  SDFFSX1M \Reg_File_reg[2][4]  ( .D(n362), .SI(n198), .SE(test_se), .CK(CLK), 
        .SN(RST), .Q(Reg_2[4]), .QN(n197) );
  SDFFSX1M \Reg_File_reg[2][3]  ( .D(n361), .SI(n199), .SE(test_se), .CK(CLK), 
        .SN(n595), .Q(Reg_2[3]), .QN(n198) );
  SDFFSX1M \Reg_File_reg[2][2]  ( .D(n360), .SI(Reg_2[1]), .SE(test_se), .CK(
        CLK), .SN(n595), .Q(Reg_2[2]), .QN(n199) );
  SDFFSX1M \Reg_File_reg[2][0]  ( .D(n358), .SI(Reg_1[7]), .SE(test_se), .CK(
        CLK), .SN(n595), .Q(Reg_2[0]), .QN(n201) );
  SDFFSX1M \Reg_File_reg[3][3]  ( .D(n369), .SI(n191), .SE(test_se), .CK(CLK), 
        .SN(n595), .Q(Reg_3[3]), .QN(n190) );
  SDFFRX1M \Reg_File_reg[8][7]  ( .D(n413), .SI(n646), .SE(test_se), .CK(CLK), 
        .RN(n593), .Q(n645), .QN(n162) );
  SDFFRX1M \Reg_File_reg[8][6]  ( .D(n412), .SI(n647), .SE(test_se), .CK(CLK), 
        .RN(n593), .Q(n646), .QN(n163) );
  SDFFRX1M \Reg_File_reg[8][5]  ( .D(n411), .SI(n648), .SE(test_se), .CK(CLK), 
        .RN(n593), .Q(n647), .QN(n164) );
  SDFFRX1M \Reg_File_reg[8][4]  ( .D(n410), .SI(n649), .SE(test_se), .CK(CLK), 
        .RN(n593), .Q(n648), .QN(n165) );
  SDFFRX1M \Reg_File_reg[8][3]  ( .D(n409), .SI(n650), .SE(test_se), .CK(CLK), 
        .RN(n593), .Q(n649), .QN(n166) );
  SDFFRX1M \Reg_File_reg[8][2]  ( .D(n408), .SI(n651), .SE(test_se), .CK(CLK), 
        .RN(n593), .Q(n650), .QN(n167) );
  SDFFRX1M \Reg_File_reg[8][1]  ( .D(n407), .SI(n652), .SE(test_se), .CK(CLK), 
        .RN(n593), .Q(n651), .QN(n168) );
  SDFFRX1M \Reg_File_reg[8][0]  ( .D(n406), .SI(n653), .SE(test_se), .CK(CLK), 
        .RN(n594), .Q(n652), .QN(n169) );
  SDFFRX1M \Reg_File_reg[12][7]  ( .D(n445), .SI(n630), .SE(test_se), .CK(CLK), 
        .RN(n595), .Q(n629), .QN(n146) );
  SDFFRX1M \Reg_File_reg[12][6]  ( .D(n444), .SI(n631), .SE(test_se), .CK(CLK), 
        .RN(n594), .Q(n630), .QN(n147) );
  SDFFRX1M \Reg_File_reg[12][5]  ( .D(n443), .SI(n632), .SE(test_se), .CK(CLK), 
        .RN(n595), .Q(n631), .QN(n148) );
  SDFFRX1M \Reg_File_reg[12][4]  ( .D(n442), .SI(n633), .SE(test_se), .CK(CLK), 
        .RN(n595), .Q(n632), .QN(n149) );
  SDFFRX1M \Reg_File_reg[12][3]  ( .D(n441), .SI(n634), .SE(test_se), .CK(CLK), 
        .RN(n594), .Q(n633), .QN(n150) );
  SDFFRX1M \Reg_File_reg[12][2]  ( .D(n440), .SI(n635), .SE(test_se), .CK(CLK), 
        .RN(n595), .Q(n634), .QN(n151) );
  SDFFRX1M \Reg_File_reg[12][1]  ( .D(n439), .SI(n636), .SE(test_se), .CK(CLK), 
        .RN(n594), .Q(n635), .QN(n152) );
  SDFFRX1M \Reg_File_reg[12][0]  ( .D(n438), .SI(\Reg_File[11][7] ), .SE(
        test_se), .CK(CLK), .RN(n594), .Q(n636), .QN(n153) );
  SDFFRX1M \Reg_File_reg[6][7]  ( .D(n397), .SI(n662), .SE(test_se), .CK(CLK), 
        .RN(n592), .Q(n661), .QN(n178) );
  SDFFRX1M \Reg_File_reg[6][6]  ( .D(n396), .SI(n663), .SE(test_se), .CK(CLK), 
        .RN(n592), .Q(n662), .QN(n179) );
  SDFFRX1M \Reg_File_reg[6][5]  ( .D(n395), .SI(n664), .SE(test_se), .CK(CLK), 
        .RN(n592), .Q(n663), .QN(n180) );
  SDFFRX1M \Reg_File_reg[6][4]  ( .D(n394), .SI(n665), .SE(test_se), .CK(CLK), 
        .RN(n592), .Q(n664), .QN(n181) );
  SDFFRX1M \Reg_File_reg[6][3]  ( .D(n393), .SI(n666), .SE(test_se), .CK(CLK), 
        .RN(n592), .Q(n665), .QN(n182) );
  SDFFRX1M \Reg_File_reg[6][2]  ( .D(n392), .SI(n667), .SE(test_se), .CK(CLK), 
        .RN(n592), .Q(n666), .QN(n183) );
  SDFFRX1M \Reg_File_reg[6][1]  ( .D(n391), .SI(n668), .SE(test_se), .CK(CLK), 
        .RN(n592), .Q(n667), .QN(n184) );
  SDFFRX1M \Reg_File_reg[6][0]  ( .D(n390), .SI(\Reg_File[5][7] ), .SE(test_se), .CK(CLK), .RN(n591), .Q(n668), .QN(n185) );
  SDFFRX1M \Reg_File_reg[9][7]  ( .D(n421), .SI(n638), .SE(test_se), .CK(CLK), 
        .RN(n594), .Q(n637), .QN(n154) );
  SDFFRX1M \Reg_File_reg[9][6]  ( .D(n420), .SI(n639), .SE(test_se), .CK(CLK), 
        .RN(n594), .Q(n638), .QN(n155) );
  SDFFRX1M \Reg_File_reg[9][5]  ( .D(n419), .SI(n640), .SE(test_se), .CK(CLK), 
        .RN(n594), .Q(n639), .QN(n156) );
  SDFFRX1M \Reg_File_reg[9][4]  ( .D(n418), .SI(n641), .SE(test_se), .CK(CLK), 
        .RN(n594), .Q(n640), .QN(n157) );
  SDFFRX1M \Reg_File_reg[9][3]  ( .D(n417), .SI(n642), .SE(test_se), .CK(CLK), 
        .RN(n593), .Q(n641), .QN(n158) );
  SDFFRX1M \Reg_File_reg[9][2]  ( .D(n416), .SI(n643), .SE(test_se), .CK(CLK), 
        .RN(n593), .Q(n642), .QN(n159) );
  SDFFRX1M \Reg_File_reg[9][1]  ( .D(n415), .SI(n644), .SE(test_se), .CK(CLK), 
        .RN(n593), .Q(n643), .QN(n160) );
  SDFFRX1M \Reg_File_reg[9][0]  ( .D(n414), .SI(n645), .SE(test_se), .CK(CLK), 
        .RN(n593), .Q(n644), .QN(n161) );
  SDFFRX1M \Reg_File_reg[13][7]  ( .D(n453), .SI(n622), .SE(test_se), .CK(CLK), 
        .RN(n594), .Q(n621), .QN(n138) );
  SDFFRX1M \Reg_File_reg[13][6]  ( .D(n452), .SI(n623), .SE(test_se), .CK(CLK), 
        .RN(n595), .Q(n622), .QN(n139) );
  SDFFRX1M \Reg_File_reg[13][5]  ( .D(n451), .SI(n624), .SE(test_se), .CK(CLK), 
        .RN(n594), .Q(n623), .QN(n140) );
  SDFFRX1M \Reg_File_reg[13][4]  ( .D(n450), .SI(n625), .SE(test_se), .CK(CLK), 
        .RN(n594), .Q(n624), .QN(n141) );
  SDFFRX1M \Reg_File_reg[13][3]  ( .D(n449), .SI(n626), .SE(test_se), .CK(CLK), 
        .RN(n595), .Q(n625), .QN(n142) );
  SDFFRX1M \Reg_File_reg[13][2]  ( .D(n448), .SI(n627), .SE(test_se), .CK(CLK), 
        .RN(n595), .Q(n626), .QN(n143) );
  SDFFRX1M \Reg_File_reg[13][1]  ( .D(n447), .SI(n628), .SE(test_se), .CK(CLK), 
        .RN(n594), .Q(n627), .QN(n144) );
  SDFFRX1M \Reg_File_reg[13][0]  ( .D(n446), .SI(n629), .SE(test_se), .CK(CLK), 
        .RN(n595), .Q(n628), .QN(n145) );
  SDFFRX1M \Reg_File_reg[7][7]  ( .D(n405), .SI(n654), .SE(test_se), .CK(CLK), 
        .RN(n593), .Q(n653), .QN(n170) );
  SDFFRX1M \Reg_File_reg[7][6]  ( .D(n404), .SI(n655), .SE(test_se), .CK(CLK), 
        .RN(n592), .Q(n654), .QN(n171) );
  SDFFRX1M \Reg_File_reg[7][5]  ( .D(n403), .SI(n656), .SE(test_se), .CK(CLK), 
        .RN(n593), .Q(n655), .QN(n172) );
  SDFFRX1M \Reg_File_reg[7][4]  ( .D(n402), .SI(n657), .SE(test_se), .CK(CLK), 
        .RN(n592), .Q(n656), .QN(n173) );
  SDFFRX1M \Reg_File_reg[7][3]  ( .D(n401), .SI(n658), .SE(test_se), .CK(CLK), 
        .RN(n592), .Q(n657), .QN(n174) );
  SDFFRX1M \Reg_File_reg[7][2]  ( .D(n400), .SI(n659), .SE(test_se), .CK(CLK), 
        .RN(n592), .Q(n658), .QN(n175) );
  SDFFRX1M \Reg_File_reg[7][1]  ( .D(n399), .SI(n660), .SE(test_se), .CK(CLK), 
        .RN(n592), .Q(n659), .QN(n176) );
  SDFFRX1M \Reg_File_reg[7][0]  ( .D(n398), .SI(n661), .SE(test_se), .CK(CLK), 
        .RN(n592), .Q(n660), .QN(n177) );
  SDFFRX1M \Reg_File_reg[2][7]  ( .D(n365), .SI(n195), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Reg_2[7]), .QN(n194) );
  SDFFRX1M \Reg_File_reg[2][6]  ( .D(n364), .SI(n196), .SE(test_se), .CK(CLK), 
        .RN(n591), .Q(Reg_2[6]), .QN(n195) );
  SDFFRX1M \Reg_File_reg[2][5]  ( .D(n363), .SI(n197), .SE(test_se), .CK(CLK), 
        .RN(n591), .Q(Reg_2[5]), .QN(n196) );
  SDFFRX1M \Reg_File_reg[2][1]  ( .D(n359), .SI(n201), .SE(test_se), .CK(CLK), 
        .RN(n591), .Q(Reg_2[1]), .QN(n200) );
  SDFFRX1M \Reg_File_reg[3][7]  ( .D(n373), .SI(Reg_3[6]), .SE(test_se), .CK(
        CLK), .RN(n591), .Q(Reg_3[7]), .QN(n186) );
  SDFFRX1M \Reg_File_reg[3][6]  ( .D(n372), .SI(Reg_3[5]), .SE(test_se), .CK(
        CLK), .RN(n591), .Q(Reg_3[6]), .QN(n187) );
  SDFFRX1M \Reg_File_reg[3][5]  ( .D(n371), .SI(Reg_3[4]), .SE(test_se), .CK(
        CLK), .RN(n591), .Q(Reg_3[5]), .QN(n188) );
  SDFFRX1M \Reg_File_reg[3][4]  ( .D(n370), .SI(n190), .SE(test_se), .CK(CLK), 
        .RN(n591), .Q(Reg_3[4]), .QN(n189) );
  SDFFRX1M \Reg_File_reg[3][2]  ( .D(n368), .SI(n192), .SE(test_se), .CK(CLK), 
        .RN(n591), .Q(Reg_3[2]), .QN(n191) );
  SDFFRX1M \Reg_File_reg[3][1]  ( .D(n367), .SI(n193), .SE(test_se), .CK(CLK), 
        .RN(n591), .Q(Reg_3[1]), .QN(n192) );
  SDFFRX1M \Reg_File_reg[3][0]  ( .D(n366), .SI(Reg_2[7]), .SE(test_se), .CK(
        CLK), .RN(n591), .Q(Reg_3[0]), .QN(n193) );
  SDFFRQX2M \Reg_File_reg[0][7]  ( .D(n349), .SI(Reg_0[6]), .SE(test_se), .CK(
        CLK), .RN(n599), .Q(Reg_0[7]) );
  SDFFRQX2M \Reg_File_reg[1][7]  ( .D(n357), .SI(Reg_1[6]), .SE(test_se), .CK(
        CLK), .RN(n598), .Q(Reg_1[7]) );
  SDFFRQX2M \Reg_File_reg[1][5]  ( .D(n355), .SI(Reg_1[4]), .SE(test_se), .CK(
        CLK), .RN(n599), .Q(Reg_1[5]) );
  SDFFRQX2M \Reg_File_reg[1][2]  ( .D(n352), .SI(Reg_1[1]), .SE(test_se), .CK(
        CLK), .RN(n599), .Q(Reg_1[2]) );
  SDFFRQX2M \Reg_File_reg[1][1]  ( .D(n351), .SI(Reg_1[0]), .SE(test_se), .CK(
        CLK), .RN(n599), .Q(Reg_1[1]) );
  SDFFRQX2M \Reg_File_reg[1][0]  ( .D(n350), .SI(n681), .SE(test_se), .CK(CLK), 
        .RN(n599), .Q(Reg_1[0]) );
  SDFFRQX1M Rd_VLD_reg ( .D(N109), .SI(RdData[7]), .SE(test_se), .CK(CLK), 
        .RN(n599), .Q(Rd_VLD) );
  SDFFRQX1M \Reg_File_reg[4][7]  ( .D(n381), .SI(\Reg_File[4][6] ), .SE(
        test_se), .CK(CLK), .RN(n597), .Q(\Reg_File[4][7] ) );
  SDFFRQX1M \Reg_File_reg[4][6]  ( .D(n380), .SI(\Reg_File[4][5] ), .SE(
        test_se), .CK(CLK), .RN(n597), .Q(\Reg_File[4][6] ) );
  SDFFRQX1M \Reg_File_reg[4][5]  ( .D(n379), .SI(\Reg_File[4][4] ), .SE(
        test_se), .CK(CLK), .RN(n597), .Q(\Reg_File[4][5] ) );
  SDFFRQX1M \Reg_File_reg[4][4]  ( .D(n378), .SI(\Reg_File[4][3] ), .SE(
        test_se), .CK(CLK), .RN(n597), .Q(\Reg_File[4][4] ) );
  SDFFRQX1M \Reg_File_reg[4][3]  ( .D(n377), .SI(test_si2), .SE(test_se), .CK(
        CLK), .RN(n597), .Q(\Reg_File[4][3] ) );
  SDFFRQX1M \Reg_File_reg[4][2]  ( .D(n376), .SI(\Reg_File[4][1] ), .SE(
        test_se), .CK(CLK), .RN(n598), .Q(\Reg_File[4][2] ) );
  SDFFRQX1M \Reg_File_reg[4][1]  ( .D(n375), .SI(\Reg_File[4][0] ), .SE(
        test_se), .CK(CLK), .RN(n598), .Q(\Reg_File[4][1] ) );
  SDFFRQX1M \Reg_File_reg[4][0]  ( .D(n374), .SI(Reg_3[7]), .SE(test_se), .CK(
        CLK), .RN(n598), .Q(\Reg_File[4][0] ) );
  SDFFRQX1M \Reg_File_reg[14][7]  ( .D(n461), .SI(\Reg_File[14][6] ), .SE(
        test_se), .CK(CLK), .RN(n598), .Q(\Reg_File[14][7] ) );
  SDFFRQX1M \Reg_File_reg[14][6]  ( .D(n460), .SI(\Reg_File[14][5] ), .SE(
        test_se), .CK(CLK), .RN(n598), .Q(\Reg_File[14][6] ) );
  SDFFRQX1M \Reg_File_reg[14][5]  ( .D(n459), .SI(\Reg_File[14][4] ), .SE(
        test_se), .CK(CLK), .RN(n598), .Q(\Reg_File[14][5] ) );
  SDFFRQX1M \Reg_File_reg[14][4]  ( .D(n458), .SI(\Reg_File[14][3] ), .SE(
        test_se), .CK(CLK), .RN(n597), .Q(\Reg_File[14][4] ) );
  SDFFRQX1M \Reg_File_reg[14][3]  ( .D(n457), .SI(\Reg_File[14][2] ), .SE(
        test_se), .CK(CLK), .RN(n596), .Q(\Reg_File[14][3] ) );
  SDFFRQX1M \Reg_File_reg[14][2]  ( .D(n456), .SI(\Reg_File[14][1] ), .SE(
        test_se), .CK(CLK), .RN(n597), .Q(\Reg_File[14][2] ) );
  SDFFRQX1M \Reg_File_reg[14][1]  ( .D(n455), .SI(\Reg_File[14][0] ), .SE(
        test_se), .CK(CLK), .RN(n596), .Q(\Reg_File[14][1] ) );
  SDFFRQX1M \Reg_File_reg[14][0]  ( .D(n454), .SI(n621), .SE(test_se), .CK(CLK), .RN(n596), .Q(\Reg_File[14][0] ) );
  SDFFRQX1M \Reg_File_reg[10][7]  ( .D(n429), .SI(\Reg_File[10][6] ), .SE(
        test_se), .CK(CLK), .RN(n596), .Q(\Reg_File[10][7] ) );
  SDFFRQX1M \Reg_File_reg[10][6]  ( .D(n428), .SI(\Reg_File[10][5] ), .SE(
        test_se), .CK(CLK), .RN(n596), .Q(\Reg_File[10][6] ) );
  SDFFRQX1M \Reg_File_reg[10][5]  ( .D(n427), .SI(\Reg_File[10][4] ), .SE(
        test_se), .CK(CLK), .RN(n596), .Q(\Reg_File[10][5] ) );
  SDFFRQX1M \Reg_File_reg[10][4]  ( .D(n426), .SI(\Reg_File[10][3] ), .SE(
        test_se), .CK(CLK), .RN(n596), .Q(\Reg_File[10][4] ) );
  SDFFRQX1M \Reg_File_reg[10][3]  ( .D(n425), .SI(\Reg_File[10][2] ), .SE(
        test_se), .CK(CLK), .RN(n596), .Q(\Reg_File[10][3] ) );
  SDFFRQX1M \Reg_File_reg[10][2]  ( .D(n424), .SI(\Reg_File[10][1] ), .SE(
        test_se), .CK(CLK), .RN(n595), .Q(\Reg_File[10][2] ) );
  SDFFRQX1M \Reg_File_reg[10][1]  ( .D(n423), .SI(\Reg_File[10][0] ), .SE(
        test_se), .CK(CLK), .RN(n596), .Q(\Reg_File[10][1] ) );
  SDFFRQX1M \Reg_File_reg[10][0]  ( .D(n422), .SI(n637), .SE(test_se), .CK(CLK), .RN(n596), .Q(\Reg_File[10][0] ) );
  SDFFRQX1M \Reg_File_reg[15][7]  ( .D(n469), .SI(\Reg_File[15][6] ), .SE(
        test_se), .CK(CLK), .RN(n598), .Q(\Reg_File[15][7] ) );
  SDFFRQX1M \Reg_File_reg[15][6]  ( .D(n468), .SI(\Reg_File[15][5] ), .SE(
        test_se), .CK(CLK), .RN(n598), .Q(\Reg_File[15][6] ) );
  SDFFRQX1M \Reg_File_reg[15][5]  ( .D(n467), .SI(\Reg_File[15][4] ), .SE(
        test_se), .CK(CLK), .RN(n598), .Q(\Reg_File[15][5] ) );
  SDFFRQX1M \Reg_File_reg[15][4]  ( .D(n466), .SI(test_si3), .SE(test_se), 
        .CK(CLK), .RN(n598), .Q(\Reg_File[15][4] ) );
  SDFFRQX1M \Reg_File_reg[15][3]  ( .D(n465), .SI(\Reg_File[15][2] ), .SE(
        test_se), .CK(CLK), .RN(n598), .Q(\Reg_File[15][3] ) );
  SDFFRQX1M \Reg_File_reg[15][2]  ( .D(n464), .SI(\Reg_File[15][1] ), .SE(
        test_se), .CK(CLK), .RN(n598), .Q(\Reg_File[15][2] ) );
  SDFFRQX1M \Reg_File_reg[15][1]  ( .D(n463), .SI(\Reg_File[15][0] ), .SE(
        test_se), .CK(CLK), .RN(n598), .Q(\Reg_File[15][1] ) );
  SDFFRQX1M \Reg_File_reg[15][0]  ( .D(n462), .SI(\Reg_File[14][7] ), .SE(
        test_se), .CK(CLK), .RN(n598), .Q(\Reg_File[15][0] ) );
  SDFFRQX1M \Reg_File_reg[11][7]  ( .D(n437), .SI(\Reg_File[11][6] ), .SE(
        test_se), .CK(CLK), .RN(n597), .Q(\Reg_File[11][7] ) );
  SDFFRQX1M \Reg_File_reg[11][6]  ( .D(n436), .SI(\Reg_File[11][5] ), .SE(
        test_se), .CK(CLK), .RN(n596), .Q(\Reg_File[11][6] ) );
  SDFFRQX1M \Reg_File_reg[11][5]  ( .D(n435), .SI(\Reg_File[11][4] ), .SE(
        test_se), .CK(CLK), .RN(n596), .Q(\Reg_File[11][5] ) );
  SDFFRQX1M \Reg_File_reg[11][4]  ( .D(n434), .SI(\Reg_File[11][3] ), .SE(
        test_se), .CK(CLK), .RN(n596), .Q(\Reg_File[11][4] ) );
  SDFFRQX1M \Reg_File_reg[11][3]  ( .D(n433), .SI(\Reg_File[11][2] ), .SE(
        test_se), .CK(CLK), .RN(n596), .Q(\Reg_File[11][3] ) );
  SDFFRQX1M \Reg_File_reg[11][2]  ( .D(n432), .SI(\Reg_File[11][1] ), .SE(
        test_se), .CK(CLK), .RN(n596), .Q(\Reg_File[11][2] ) );
  SDFFRQX1M \Reg_File_reg[11][1]  ( .D(n431), .SI(\Reg_File[11][0] ), .SE(
        test_se), .CK(CLK), .RN(n596), .Q(\Reg_File[11][1] ) );
  SDFFRQX1M \Reg_File_reg[11][0]  ( .D(n430), .SI(\Reg_File[10][7] ), .SE(
        test_se), .CK(CLK), .RN(n597), .Q(\Reg_File[11][0] ) );
  SDFFRQX1M \Reg_File_reg[5][7]  ( .D(n389), .SI(\Reg_File[5][6] ), .SE(
        test_se), .CK(CLK), .RN(n597), .Q(\Reg_File[5][7] ) );
  SDFFRQX1M \Reg_File_reg[5][6]  ( .D(n388), .SI(\Reg_File[5][5] ), .SE(
        test_se), .CK(CLK), .RN(n597), .Q(\Reg_File[5][6] ) );
  SDFFRQX1M \Reg_File_reg[5][5]  ( .D(n387), .SI(\Reg_File[5][4] ), .SE(
        test_se), .CK(CLK), .RN(n597), .Q(\Reg_File[5][5] ) );
  SDFFRQX1M \Reg_File_reg[5][4]  ( .D(n386), .SI(\Reg_File[5][3] ), .SE(
        test_se), .CK(CLK), .RN(n597), .Q(\Reg_File[5][4] ) );
  SDFFRQX1M \Reg_File_reg[5][3]  ( .D(n385), .SI(\Reg_File[5][2] ), .SE(
        test_se), .CK(CLK), .RN(n597), .Q(\Reg_File[5][3] ) );
  SDFFRQX1M \Reg_File_reg[5][2]  ( .D(n384), .SI(\Reg_File[5][1] ), .SE(
        test_se), .CK(CLK), .RN(n597), .Q(\Reg_File[5][2] ) );
  SDFFRQX1M \Reg_File_reg[5][1]  ( .D(n383), .SI(\Reg_File[5][0] ), .SE(
        test_se), .CK(CLK), .RN(n598), .Q(\Reg_File[5][1] ) );
  SDFFRQX1M \Reg_File_reg[5][0]  ( .D(n382), .SI(\Reg_File[4][7] ), .SE(
        test_se), .CK(CLK), .RN(n597), .Q(\Reg_File[5][0] ) );
  SDFFRQX4M \Reg_File_reg[0][1]  ( .D(n343), .SI(Reg_0[0]), .SE(test_se), .CK(
        CLK), .RN(n599), .Q(Reg_0[1]) );
  SDFFRQX4M \Reg_File_reg[0][4]  ( .D(n346), .SI(Reg_0[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(Reg_0[4]) );
  SDFFRQX4M \Reg_File_reg[0][6]  ( .D(n348), .SI(Reg_0[5]), .SE(test_se), .CK(
        CLK), .RN(n599), .Q(Reg_0[6]) );
  SDFFRQX4M \Reg_File_reg[0][2]  ( .D(n344), .SI(Reg_0[1]), .SE(test_se), .CK(
        CLK), .RN(n599), .Q(Reg_0[2]) );
  SDFFRQX4M \Reg_File_reg[0][5]  ( .D(n347), .SI(Reg_0[4]), .SE(test_se), .CK(
        CLK), .RN(n599), .Q(Reg_0[5]) );
  SDFFRQX4M \Reg_File_reg[0][3]  ( .D(n345), .SI(Reg_0[2]), .SE(test_se), .CK(
        CLK), .RN(n599), .Q(Reg_0[3]) );
  SDFFRQX4M \Reg_File_reg[0][0]  ( .D(n342), .SI(Rd_VLD), .SE(test_se), .CK(
        CLK), .RN(n599), .Q(Reg_0[0]) );
  SDFFRQX4M \Reg_File_reg[1][6]  ( .D(n356), .SI(Reg_1[5]), .SE(test_se), .CK(
        CLK), .RN(n599), .Q(Reg_1[6]) );
  SDFFRQX4M \Reg_File_reg[1][3]  ( .D(n353), .SI(Reg_1[2]), .SE(test_se), .CK(
        CLK), .RN(n599), .Q(Reg_1[3]) );
  SDFFRQX4M \Reg_File_reg[1][4]  ( .D(n354), .SI(Reg_1[3]), .SE(test_se), .CK(
        CLK), .RN(n599), .Q(Reg_1[4]) );
  OAI2BB2XLM U140 ( .B0(n618), .B1(n589), .A0N(n589), .A1N(Reg_1[5]), .Y(n355)
         );
  NAND4X2M U141 ( .A(n247), .B(n248), .C(n249), .D(n250), .Y(n202) );
  NAND4X2M U142 ( .A(n222), .B(n223), .C(n224), .D(n225), .Y(n203) );
  NAND4X2M U143 ( .A(n301), .B(n302), .C(n303), .D(n304), .Y(n204) );
  NAND4X2M U144 ( .A(n292), .B(n293), .C(n294), .D(n295), .Y(n205) );
  NAND4X2M U145 ( .A(n283), .B(n284), .C(n285), .D(n286), .Y(n206) );
  NAND4X2M U146 ( .A(n274), .B(n275), .C(n276), .D(n277), .Y(n207) );
  NAND4X2M U147 ( .A(n265), .B(n266), .C(n267), .D(n268), .Y(n208) );
  NAND4X2M U148 ( .A(n256), .B(n257), .C(n258), .D(n259), .Y(n209) );
  AND2X2M U149 ( .A(N109), .B(n591), .Y(n210) );
  BUFX2M U287 ( .A(n310), .Y(n582) );
  NOR2BX2M U288 ( .AN(Address[3]), .B(n611), .Y(n327) );
  NOR2X2M U289 ( .A(n611), .B(Address[3]), .Y(n314) );
  NOR2BX2M U290 ( .AN(Address[2]), .B(Address[1]), .Y(n319) );
  NOR2BX2M U291 ( .AN(Address[3]), .B(Address[0]), .Y(n325) );
  NOR2BX2M U292 ( .AN(Address[2]), .B(n613), .Y(n322) );
  NOR2X2M U293 ( .A(Address[2]), .B(Address[1]), .Y(n312) );
  NOR2X2M U294 ( .A(Address[3]), .B(Address[0]), .Y(n311) );
  NOR2X2M U295 ( .A(n613), .B(Address[2]), .Y(n316) );
  OAI2BB2XLM U296 ( .B0(n612), .B1(n589), .A0N(n589), .A1N(Reg_1[0]), .Y(n350)
         );
  OAI2BB2XLM U297 ( .B0(n614), .B1(n589), .A0N(n589), .A1N(Reg_1[1]), .Y(n351)
         );
  OAI2BB2XLM U298 ( .B0(n615), .B1(n589), .A0N(n589), .A1N(Reg_1[2]), .Y(n352)
         );
  OAI2BB2XLM U299 ( .B0(n616), .B1(n589), .A0N(n589), .A1N(Reg_1[3]), .Y(n353)
         );
  OAI2BB2XLM U300 ( .B0(n617), .B1(n589), .A0N(n589), .A1N(Reg_1[4]), .Y(n354)
         );
  OAI2BB2XLM U301 ( .B0(n590), .B1(n619), .A0N(n590), .A1N(Reg_0[6]), .Y(n348)
         );
  OAI2BB2XLM U302 ( .B0(n590), .B1(n620), .A0N(n681), .A1N(n590), .Y(n349) );
  INVX2M U303 ( .A(n315), .Y(n610) );
  INVX2M U304 ( .A(n317), .Y(n609) );
  INVX2M U305 ( .A(n321), .Y(n608) );
  INVX2M U306 ( .A(n323), .Y(n607) );
  INVX2M U307 ( .A(n324), .Y(n606) );
  INVX2M U308 ( .A(n326), .Y(n605) );
  INVX2M U309 ( .A(n330), .Y(n604) );
  INVX2M U310 ( .A(n331), .Y(n603) );
  BUFX4M U311 ( .A(n328), .Y(n586) );
  NAND2X2M U312 ( .A(n582), .B(n232), .Y(n328) );
  BUFX4M U313 ( .A(n332), .Y(n584) );
  NAND2X2M U314 ( .A(n582), .B(n227), .Y(n332) );
  BUFX2M U315 ( .A(n310), .Y(n581) );
  NAND2BX2M U316 ( .AN(n244), .B(n581), .Y(n315) );
  NAND2BX2M U317 ( .AN(n245), .B(n581), .Y(n317) );
  NAND2BX2M U318 ( .AN(n239), .B(n581), .Y(n321) );
  NAND2BX2M U319 ( .AN(n240), .B(n581), .Y(n323) );
  NAND2BX2M U320 ( .AN(n234), .B(n581), .Y(n324) );
  NAND2BX2M U321 ( .AN(n235), .B(n581), .Y(n326) );
  NAND2BX2M U322 ( .AN(n229), .B(n581), .Y(n330) );
  NAND2BX2M U323 ( .AN(n230), .B(n581), .Y(n331) );
  BUFX4M U324 ( .A(n313), .Y(n589) );
  NAND2X2M U325 ( .A(n582), .B(n241), .Y(n313) );
  BUFX4M U326 ( .A(n320), .Y(n587) );
  NAND2X2M U327 ( .A(n582), .B(n236), .Y(n320) );
  BUFX4M U328 ( .A(n329), .Y(n585) );
  NAND2X2M U329 ( .A(n582), .B(n231), .Y(n329) );
  BUFX4M U330 ( .A(n333), .Y(n583) );
  NAND2X2M U331 ( .A(n582), .B(n226), .Y(n333) );
  BUFX4M U332 ( .A(n318), .Y(n588) );
  NAND2X2M U333 ( .A(n582), .B(n237), .Y(n318) );
  BUFX4M U334 ( .A(n309), .Y(n590) );
  NAND2X2M U335 ( .A(n582), .B(n242), .Y(n309) );
  BUFX4M U336 ( .A(n600), .Y(n596) );
  BUFX4M U337 ( .A(n600), .Y(n597) );
  BUFX4M U338 ( .A(n600), .Y(n598) );
  BUFX4M U339 ( .A(n600), .Y(n599) );
  BUFX4M U340 ( .A(n600), .Y(n595) );
  BUFX4M U341 ( .A(n600), .Y(n592) );
  BUFX4M U342 ( .A(n600), .Y(n593) );
  BUFX4M U343 ( .A(n600), .Y(n594) );
  NAND2X2M U344 ( .A(n311), .B(n316), .Y(n244) );
  NAND2X2M U345 ( .A(n312), .B(n325), .Y(n234) );
  NAND2X2M U346 ( .A(n319), .B(n325), .Y(n229) );
  NAND2X2M U347 ( .A(n314), .B(n316), .Y(n245) );
  NAND2X2M U348 ( .A(n311), .B(n322), .Y(n239) );
  NAND2X2M U349 ( .A(n312), .B(n327), .Y(n235) );
  NAND2X2M U350 ( .A(n314), .B(n322), .Y(n240) );
  NAND2X2M U351 ( .A(n319), .B(n327), .Y(n230) );
  NOR2BX2M U352 ( .AN(WrEn), .B(RdEn), .Y(n310) );
  AND2X2M U353 ( .A(n311), .B(n312), .Y(n242) );
  AND2X2M U354 ( .A(n316), .B(n325), .Y(n232) );
  AND2X2M U355 ( .A(n311), .B(n319), .Y(n237) );
  AND2X2M U356 ( .A(n314), .B(n312), .Y(n241) );
  AND2X2M U357 ( .A(n325), .B(n322), .Y(n227) );
  AND2X2M U358 ( .A(n314), .B(n319), .Y(n236) );
  AND2X2M U359 ( .A(n322), .B(n327), .Y(n226) );
  AND2X2M U360 ( .A(n316), .B(n327), .Y(n231) );
  NOR2BX2M U361 ( .AN(RdEn), .B(WrEn), .Y(N109) );
  BUFX4M U362 ( .A(n601), .Y(n591) );
  BUFX2M U363 ( .A(n602), .Y(n601) );
  BUFX2M U364 ( .A(n602), .Y(n600) );
  INVX2M U365 ( .A(Address[0]), .Y(n611) );
  INVX2M U366 ( .A(Address[1]), .Y(n613) );
  INVX4M U367 ( .A(WrData[0]), .Y(n612) );
  INVX4M U368 ( .A(WrData[1]), .Y(n614) );
  INVX4M U369 ( .A(WrData[2]), .Y(n615) );
  INVX4M U370 ( .A(WrData[3]), .Y(n616) );
  INVX4M U371 ( .A(WrData[7]), .Y(n620) );
  INVX4M U372 ( .A(WrData[4]), .Y(n617) );
  INVX4M U373 ( .A(WrData[5]), .Y(n618) );
  INVX4M U374 ( .A(WrData[6]), .Y(n619) );
  BUFX2M U375 ( .A(RST), .Y(n602) );
  AOI221XLM U376 ( .A0(Reg_1[0]), .A1(n241), .B0(Reg_0[0]), .B1(n242), .C0(
        n308), .Y(n301) );
  OAI22X1M U377 ( .A0(n244), .A1(n201), .B0(n245), .B1(n193), .Y(n308) );
  AOI221XLM U378 ( .A0(Reg_1[1]), .A1(n241), .B0(Reg_0[1]), .B1(n242), .C0(
        n299), .Y(n292) );
  OAI22X1M U379 ( .A0(n244), .A1(n200), .B0(n245), .B1(n192), .Y(n299) );
  AOI221XLM U380 ( .A0(Reg_1[2]), .A1(n241), .B0(Reg_0[2]), .B1(n242), .C0(
        n290), .Y(n283) );
  OAI22X1M U381 ( .A0(n244), .A1(n199), .B0(n245), .B1(n191), .Y(n290) );
  AOI221XLM U382 ( .A0(Reg_1[3]), .A1(n241), .B0(Reg_0[3]), .B1(n242), .C0(
        n281), .Y(n274) );
  OAI22X1M U383 ( .A0(n244), .A1(n198), .B0(n245), .B1(n190), .Y(n281) );
  AOI221XLM U384 ( .A0(Reg_1[4]), .A1(n241), .B0(Reg_0[4]), .B1(n242), .C0(
        n272), .Y(n265) );
  OAI22X1M U385 ( .A0(n244), .A1(n197), .B0(n245), .B1(n189), .Y(n272) );
  AOI221XLM U386 ( .A0(Reg_1[5]), .A1(n241), .B0(Reg_0[5]), .B1(n242), .C0(
        n263), .Y(n256) );
  OAI22X1M U387 ( .A0(n244), .A1(n196), .B0(n245), .B1(n188), .Y(n263) );
  AOI221XLM U388 ( .A0(Reg_1[6]), .A1(n241), .B0(Reg_0[6]), .B1(n242), .C0(
        n254), .Y(n247) );
  OAI22X1M U389 ( .A0(n244), .A1(n195), .B0(n245), .B1(n187), .Y(n254) );
  AOI221XLM U390 ( .A0(Reg_1[7]), .A1(n241), .B0(Reg_0[7]), .B1(n242), .C0(
        n243), .Y(n222) );
  OAI22X1M U391 ( .A0(n244), .A1(n194), .B0(n245), .B1(n186), .Y(n243) );
  AOI221XLM U392 ( .A0(\Reg_File[15][0] ), .A1(n226), .B0(\Reg_File[14][0] ), 
        .B1(n227), .C0(n305), .Y(n304) );
  OAI22X1M U393 ( .A0(n229), .A1(n153), .B0(n230), .B1(n145), .Y(n305) );
  AOI221XLM U394 ( .A0(\Reg_File[15][1] ), .A1(n226), .B0(\Reg_File[14][1] ), 
        .B1(n227), .C0(n296), .Y(n295) );
  OAI22X1M U395 ( .A0(n229), .A1(n152), .B0(n230), .B1(n144), .Y(n296) );
  AOI221XLM U396 ( .A0(\Reg_File[15][2] ), .A1(n226), .B0(\Reg_File[14][2] ), 
        .B1(n227), .C0(n287), .Y(n286) );
  OAI22X1M U397 ( .A0(n229), .A1(n151), .B0(n230), .B1(n143), .Y(n287) );
  AOI221XLM U398 ( .A0(n682), .A1(n226), .B0(\Reg_File[14][3] ), .B1(n227), 
        .C0(n278), .Y(n277) );
  OAI22X1M U399 ( .A0(n229), .A1(n150), .B0(n230), .B1(n142), .Y(n278) );
  AOI221XLM U400 ( .A0(\Reg_File[15][4] ), .A1(n226), .B0(\Reg_File[14][4] ), 
        .B1(n227), .C0(n269), .Y(n268) );
  OAI22X1M U401 ( .A0(n229), .A1(n149), .B0(n230), .B1(n141), .Y(n269) );
  AOI221XLM U402 ( .A0(\Reg_File[15][5] ), .A1(n226), .B0(\Reg_File[14][5] ), 
        .B1(n227), .C0(n260), .Y(n259) );
  OAI22X1M U403 ( .A0(n229), .A1(n148), .B0(n230), .B1(n140), .Y(n260) );
  AOI221XLM U404 ( .A0(\Reg_File[15][6] ), .A1(n226), .B0(\Reg_File[14][6] ), 
        .B1(n227), .C0(n251), .Y(n250) );
  OAI22X1M U405 ( .A0(n229), .A1(n147), .B0(n230), .B1(n139), .Y(n251) );
  AOI221XLM U406 ( .A0(\Reg_File[15][7] ), .A1(n226), .B0(\Reg_File[14][7] ), 
        .B1(n227), .C0(n228), .Y(n225) );
  OAI22X1M U407 ( .A0(n229), .A1(n146), .B0(n230), .B1(n138), .Y(n228) );
  OAI22X1M U408 ( .A0(n234), .A1(n169), .B0(n235), .B1(n161), .Y(n306) );
  OAI22X1M U409 ( .A0(n234), .A1(n168), .B0(n235), .B1(n160), .Y(n297) );
  OAI22X1M U410 ( .A0(n234), .A1(n167), .B0(n235), .B1(n159), .Y(n288) );
  OAI22X1M U411 ( .A0(n234), .A1(n166), .B0(n235), .B1(n158), .Y(n279) );
  OAI22X1M U412 ( .A0(n234), .A1(n165), .B0(n235), .B1(n157), .Y(n270) );
  OAI22X1M U413 ( .A0(n234), .A1(n164), .B0(n235), .B1(n156), .Y(n261) );
  OAI22X1M U414 ( .A0(n234), .A1(n163), .B0(n235), .B1(n155), .Y(n252) );
  OAI22X1M U415 ( .A0(n234), .A1(n162), .B0(n235), .B1(n154), .Y(n233) );
  OAI22X1M U416 ( .A0(n239), .A1(n185), .B0(n240), .B1(n177), .Y(n307) );
  OAI22X1M U417 ( .A0(n239), .A1(n184), .B0(n240), .B1(n176), .Y(n298) );
  OAI22X1M U418 ( .A0(n239), .A1(n183), .B0(n240), .B1(n175), .Y(n289) );
  OAI22X1M U419 ( .A0(n239), .A1(n182), .B0(n240), .B1(n174), .Y(n280) );
  OAI22X1M U420 ( .A0(n239), .A1(n181), .B0(n240), .B1(n173), .Y(n271) );
  OAI22X1M U421 ( .A0(n239), .A1(n180), .B0(n240), .B1(n172), .Y(n262) );
  OAI22X1M U422 ( .A0(n239), .A1(n179), .B0(n240), .B1(n171), .Y(n253) );
  OAI22X1M U423 ( .A0(n239), .A1(n178), .B0(n240), .B1(n170), .Y(n238) );
  OAI22X1M U424 ( .A0(n614), .A1(n315), .B0(n610), .B1(n200), .Y(n359) );
  OAI22X1M U425 ( .A0(n618), .A1(n315), .B0(n610), .B1(n196), .Y(n363) );
  OAI22X1M U426 ( .A0(n619), .A1(n315), .B0(n610), .B1(n195), .Y(n364) );
  OAI22X1M U427 ( .A0(n620), .A1(n315), .B0(n610), .B1(n194), .Y(n365) );
  OAI22X1M U428 ( .A0(n612), .A1(n317), .B0(n609), .B1(n193), .Y(n366) );
  OAI22X1M U429 ( .A0(n614), .A1(n317), .B0(n609), .B1(n192), .Y(n367) );
  OAI22X1M U430 ( .A0(n615), .A1(n317), .B0(n609), .B1(n191), .Y(n368) );
  OAI22X1M U431 ( .A0(n617), .A1(n317), .B0(n609), .B1(n189), .Y(n370) );
  OAI22X1M U432 ( .A0(n618), .A1(n317), .B0(n609), .B1(n188), .Y(n371) );
  OAI22X1M U433 ( .A0(n619), .A1(n317), .B0(n609), .B1(n187), .Y(n372) );
  OAI22X1M U434 ( .A0(n620), .A1(n317), .B0(n609), .B1(n186), .Y(n373) );
  OAI22X1M U435 ( .A0(n612), .A1(n321), .B0(n608), .B1(n185), .Y(n390) );
  OAI22X1M U436 ( .A0(n614), .A1(n321), .B0(n608), .B1(n184), .Y(n391) );
  OAI22X1M U437 ( .A0(n615), .A1(n321), .B0(n608), .B1(n183), .Y(n392) );
  OAI22X1M U438 ( .A0(n616), .A1(n321), .B0(n608), .B1(n182), .Y(n393) );
  OAI22X1M U439 ( .A0(n617), .A1(n321), .B0(n608), .B1(n181), .Y(n394) );
  OAI22X1M U440 ( .A0(n618), .A1(n321), .B0(n608), .B1(n180), .Y(n395) );
  OAI22X1M U441 ( .A0(n619), .A1(n321), .B0(n608), .B1(n179), .Y(n396) );
  OAI22X1M U442 ( .A0(n620), .A1(n321), .B0(n608), .B1(n178), .Y(n397) );
  OAI22X1M U443 ( .A0(n612), .A1(n323), .B0(n607), .B1(n177), .Y(n398) );
  OAI22X1M U444 ( .A0(n614), .A1(n323), .B0(n607), .B1(n176), .Y(n399) );
  OAI22X1M U445 ( .A0(n615), .A1(n323), .B0(n607), .B1(n175), .Y(n400) );
  OAI22X1M U446 ( .A0(n616), .A1(n323), .B0(n607), .B1(n174), .Y(n401) );
  OAI22X1M U447 ( .A0(n617), .A1(n323), .B0(n607), .B1(n173), .Y(n402) );
  OAI22X1M U448 ( .A0(n618), .A1(n323), .B0(n607), .B1(n172), .Y(n403) );
  OAI22X1M U449 ( .A0(n619), .A1(n323), .B0(n607), .B1(n171), .Y(n404) );
  OAI22X1M U450 ( .A0(n620), .A1(n323), .B0(n607), .B1(n170), .Y(n405) );
  OAI22X1M U451 ( .A0(n612), .A1(n324), .B0(n606), .B1(n169), .Y(n406) );
  OAI22X1M U452 ( .A0(n614), .A1(n324), .B0(n606), .B1(n168), .Y(n407) );
  OAI22X1M U453 ( .A0(n615), .A1(n324), .B0(n606), .B1(n167), .Y(n408) );
  OAI22X1M U454 ( .A0(n616), .A1(n324), .B0(n606), .B1(n166), .Y(n409) );
  OAI22X1M U455 ( .A0(n617), .A1(n324), .B0(n606), .B1(n165), .Y(n410) );
  OAI22X1M U456 ( .A0(n618), .A1(n324), .B0(n606), .B1(n164), .Y(n411) );
  OAI22X1M U457 ( .A0(n619), .A1(n324), .B0(n606), .B1(n163), .Y(n412) );
  OAI22X1M U458 ( .A0(n620), .A1(n324), .B0(n606), .B1(n162), .Y(n413) );
  OAI22X1M U459 ( .A0(n612), .A1(n326), .B0(n605), .B1(n161), .Y(n414) );
  OAI22X1M U460 ( .A0(n614), .A1(n326), .B0(n605), .B1(n160), .Y(n415) );
  OAI22X1M U461 ( .A0(n615), .A1(n326), .B0(n605), .B1(n159), .Y(n416) );
  OAI22X1M U462 ( .A0(n616), .A1(n326), .B0(n605), .B1(n158), .Y(n417) );
  OAI22X1M U463 ( .A0(n617), .A1(n326), .B0(n605), .B1(n157), .Y(n418) );
  OAI22X1M U464 ( .A0(n618), .A1(n326), .B0(n605), .B1(n156), .Y(n419) );
  OAI22X1M U465 ( .A0(n619), .A1(n326), .B0(n605), .B1(n155), .Y(n420) );
  OAI22X1M U466 ( .A0(n620), .A1(n326), .B0(n605), .B1(n154), .Y(n421) );
  OAI22X1M U467 ( .A0(n612), .A1(n330), .B0(n604), .B1(n153), .Y(n438) );
  OAI22X1M U468 ( .A0(n614), .A1(n330), .B0(n604), .B1(n152), .Y(n439) );
  OAI22X1M U469 ( .A0(n615), .A1(n330), .B0(n604), .B1(n151), .Y(n440) );
  OAI22X1M U470 ( .A0(n616), .A1(n330), .B0(n604), .B1(n150), .Y(n441) );
  OAI22X1M U471 ( .A0(n617), .A1(n330), .B0(n604), .B1(n149), .Y(n442) );
  OAI22X1M U472 ( .A0(n618), .A1(n330), .B0(n604), .B1(n148), .Y(n443) );
  OAI22X1M U473 ( .A0(n619), .A1(n330), .B0(n604), .B1(n147), .Y(n444) );
  OAI22X1M U474 ( .A0(n620), .A1(n330), .B0(n604), .B1(n146), .Y(n445) );
  OAI22X1M U475 ( .A0(n612), .A1(n331), .B0(n603), .B1(n145), .Y(n446) );
  OAI22X1M U476 ( .A0(n614), .A1(n331), .B0(n603), .B1(n144), .Y(n447) );
  OAI22X1M U477 ( .A0(n615), .A1(n331), .B0(n603), .B1(n143), .Y(n448) );
  OAI22X1M U478 ( .A0(n616), .A1(n331), .B0(n603), .B1(n142), .Y(n449) );
  OAI22X1M U479 ( .A0(n617), .A1(n331), .B0(n603), .B1(n141), .Y(n450) );
  OAI22X1M U480 ( .A0(n618), .A1(n331), .B0(n603), .B1(n140), .Y(n451) );
  OAI22X1M U481 ( .A0(n619), .A1(n331), .B0(n603), .B1(n139), .Y(n452) );
  OAI22X1M U482 ( .A0(n620), .A1(n331), .B0(n603), .B1(n138), .Y(n453) );
  OAI22X1M U483 ( .A0(n612), .A1(n315), .B0(n610), .B1(n201), .Y(n358) );
  OAI22X1M U484 ( .A0(n615), .A1(n315), .B0(n610), .B1(n199), .Y(n360) );
  OAI22X1M U485 ( .A0(n616), .A1(n315), .B0(n610), .B1(n198), .Y(n361) );
  OAI22X1M U486 ( .A0(n617), .A1(n315), .B0(n610), .B1(n197), .Y(n362) );
  OAI22X1M U487 ( .A0(n616), .A1(n317), .B0(n609), .B1(n190), .Y(n369) );
  OAI2BB2X1M U488 ( .B0(n614), .B1(n587), .A0N(n587), .A1N(\Reg_File[5][1] ), 
        .Y(n383) );
  OAI2BB2X1M U489 ( .B0(n615), .B1(n587), .A0N(n587), .A1N(\Reg_File[5][2] ), 
        .Y(n384) );
  OAI2BB2X1M U490 ( .B0(n614), .B1(n586), .A0N(n586), .A1N(\Reg_File[10][1] ), 
        .Y(n423) );
  OAI2BB2X1M U491 ( .B0(n615), .B1(n586), .A0N(n586), .A1N(\Reg_File[10][2] ), 
        .Y(n424) );
  OAI2BB2X1M U492 ( .B0(n614), .B1(n585), .A0N(n585), .A1N(\Reg_File[11][1] ), 
        .Y(n431) );
  OAI2BB2X1M U493 ( .B0(n615), .B1(n585), .A0N(n585), .A1N(\Reg_File[11][2] ), 
        .Y(n432) );
  OAI2BB2X1M U494 ( .B0(n614), .B1(n584), .A0N(n584), .A1N(\Reg_File[14][1] ), 
        .Y(n455) );
  OAI2BB2X1M U495 ( .B0(n615), .B1(n584), .A0N(n584), .A1N(\Reg_File[14][2] ), 
        .Y(n456) );
  OAI2BB2X1M U496 ( .B0(n614), .B1(n583), .A0N(n583), .A1N(\Reg_File[15][1] ), 
        .Y(n463) );
  OAI2BB2X1M U497 ( .B0(n615), .B1(n583), .A0N(n583), .A1N(\Reg_File[15][2] ), 
        .Y(n464) );
  OAI2BB2X1M U498 ( .B0(n612), .B1(n587), .A0N(n587), .A1N(\Reg_File[5][0] ), 
        .Y(n382) );
  OAI2BB2X1M U499 ( .B0(n612), .B1(n586), .A0N(n586), .A1N(\Reg_File[10][0] ), 
        .Y(n422) );
  OAI2BB2X1M U500 ( .B0(n612), .B1(n585), .A0N(n585), .A1N(\Reg_File[11][0] ), 
        .Y(n430) );
  OAI2BB2X1M U501 ( .B0(n612), .B1(n584), .A0N(n584), .A1N(\Reg_File[14][0] ), 
        .Y(n454) );
  OAI2BB2X1M U502 ( .B0(n612), .B1(n583), .A0N(n583), .A1N(\Reg_File[15][0] ), 
        .Y(n462) );
  OAI2BB2X1M U503 ( .B0(n616), .B1(n587), .A0N(n587), .A1N(\Reg_File[5][3] ), 
        .Y(n385) );
  OAI2BB2X1M U504 ( .B0(n616), .B1(n586), .A0N(n586), .A1N(\Reg_File[10][3] ), 
        .Y(n425) );
  OAI2BB2X1M U505 ( .B0(n616), .B1(n585), .A0N(n585), .A1N(\Reg_File[11][3] ), 
        .Y(n433) );
  OAI2BB2X1M U506 ( .B0(n616), .B1(n584), .A0N(n584), .A1N(\Reg_File[14][3] ), 
        .Y(n457) );
  OAI2BB2X1M U507 ( .B0(n616), .B1(n583), .A0N(n583), .A1N(n683), .Y(n465) );
  OAI2BB2X1M U508 ( .B0(n620), .B1(n589), .A0N(n589), .A1N(Reg_1[7]), .Y(n357)
         );
  OAI2BB2X1M U509 ( .B0(n620), .B1(n587), .A0N(n587), .A1N(\Reg_File[5][7] ), 
        .Y(n389) );
  OAI2BB2X1M U510 ( .B0(n620), .B1(n586), .A0N(n586), .A1N(\Reg_File[10][7] ), 
        .Y(n429) );
  OAI2BB2X1M U511 ( .B0(n620), .B1(n585), .A0N(n585), .A1N(\Reg_File[11][7] ), 
        .Y(n437) );
  OAI2BB2X1M U512 ( .B0(n620), .B1(n584), .A0N(n584), .A1N(\Reg_File[14][7] ), 
        .Y(n461) );
  OAI2BB2X1M U513 ( .B0(n620), .B1(n583), .A0N(n583), .A1N(\Reg_File[15][7] ), 
        .Y(n469) );
  OAI2BB2X1M U514 ( .B0(n617), .B1(n587), .A0N(n587), .A1N(\Reg_File[5][4] ), 
        .Y(n386) );
  OAI2BB2X1M U515 ( .B0(n617), .B1(n586), .A0N(n586), .A1N(\Reg_File[10][4] ), 
        .Y(n426) );
  OAI2BB2X1M U516 ( .B0(n617), .B1(n585), .A0N(n585), .A1N(\Reg_File[11][4] ), 
        .Y(n434) );
  OAI2BB2X1M U517 ( .B0(n617), .B1(n584), .A0N(n584), .A1N(\Reg_File[14][4] ), 
        .Y(n458) );
  OAI2BB2X1M U518 ( .B0(n617), .B1(n583), .A0N(n583), .A1N(\Reg_File[15][4] ), 
        .Y(n466) );
  OAI2BB2X1M U519 ( .B0(n619), .B1(n589), .A0N(n589), .A1N(Reg_1[6]), .Y(n356)
         );
  OAI2BB2X1M U520 ( .B0(n618), .B1(n587), .A0N(n587), .A1N(\Reg_File[5][5] ), 
        .Y(n387) );
  OAI2BB2X1M U521 ( .B0(n619), .B1(n587), .A0N(n587), .A1N(\Reg_File[5][6] ), 
        .Y(n388) );
  OAI2BB2X1M U522 ( .B0(n618), .B1(n586), .A0N(n586), .A1N(\Reg_File[10][5] ), 
        .Y(n427) );
  OAI2BB2X1M U523 ( .B0(n619), .B1(n586), .A0N(n586), .A1N(\Reg_File[10][6] ), 
        .Y(n428) );
  OAI2BB2X1M U524 ( .B0(n618), .B1(n585), .A0N(n585), .A1N(\Reg_File[11][5] ), 
        .Y(n435) );
  OAI2BB2X1M U525 ( .B0(n619), .B1(n585), .A0N(n585), .A1N(\Reg_File[11][6] ), 
        .Y(n436) );
  OAI2BB2X1M U526 ( .B0(n618), .B1(n584), .A0N(n584), .A1N(\Reg_File[14][5] ), 
        .Y(n459) );
  OAI2BB2X1M U527 ( .B0(n619), .B1(n584), .A0N(n584), .A1N(\Reg_File[14][6] ), 
        .Y(n460) );
  OAI2BB2X1M U528 ( .B0(n618), .B1(n583), .A0N(n583), .A1N(\Reg_File[15][5] ), 
        .Y(n467) );
  OAI2BB2X1M U529 ( .B0(n619), .B1(n583), .A0N(n583), .A1N(\Reg_File[15][6] ), 
        .Y(n468) );
  AOI221XLM U530 ( .A0(\Reg_File[5][0] ), .A1(n236), .B0(\Reg_File[4][0] ), 
        .B1(n237), .C0(n307), .Y(n302) );
  AOI221XLM U531 ( .A0(\Reg_File[11][0] ), .A1(n231), .B0(\Reg_File[10][0] ), 
        .B1(n232), .C0(n306), .Y(n303) );
  AOI221XLM U532 ( .A0(\Reg_File[5][1] ), .A1(n236), .B0(\Reg_File[4][1] ), 
        .B1(n237), .C0(n298), .Y(n293) );
  AOI221XLM U533 ( .A0(\Reg_File[11][1] ), .A1(n231), .B0(\Reg_File[10][1] ), 
        .B1(n232), .C0(n297), .Y(n294) );
  AOI221XLM U534 ( .A0(\Reg_File[5][2] ), .A1(n236), .B0(n684), .B1(n237), 
        .C0(n289), .Y(n284) );
  AOI221XLM U535 ( .A0(\Reg_File[11][2] ), .A1(n231), .B0(\Reg_File[10][2] ), 
        .B1(n232), .C0(n288), .Y(n285) );
  AOI221XLM U536 ( .A0(\Reg_File[5][3] ), .A1(n236), .B0(\Reg_File[4][3] ), 
        .B1(n237), .C0(n280), .Y(n275) );
  AOI221XLM U537 ( .A0(\Reg_File[11][3] ), .A1(n231), .B0(\Reg_File[10][3] ), 
        .B1(n232), .C0(n279), .Y(n276) );
  AOI221XLM U538 ( .A0(\Reg_File[5][4] ), .A1(n236), .B0(\Reg_File[4][4] ), 
        .B1(n237), .C0(n271), .Y(n266) );
  AOI221XLM U539 ( .A0(\Reg_File[11][4] ), .A1(n231), .B0(\Reg_File[10][4] ), 
        .B1(n232), .C0(n270), .Y(n267) );
  AOI221XLM U540 ( .A0(\Reg_File[5][5] ), .A1(n236), .B0(\Reg_File[4][5] ), 
        .B1(n237), .C0(n262), .Y(n257) );
  AOI221XLM U541 ( .A0(\Reg_File[11][5] ), .A1(n231), .B0(\Reg_File[10][5] ), 
        .B1(n232), .C0(n261), .Y(n258) );
  AOI221XLM U542 ( .A0(\Reg_File[5][6] ), .A1(n236), .B0(\Reg_File[4][6] ), 
        .B1(n237), .C0(n253), .Y(n248) );
  AOI221XLM U543 ( .A0(\Reg_File[11][6] ), .A1(n231), .B0(\Reg_File[10][6] ), 
        .B1(n232), .C0(n252), .Y(n249) );
  AOI221XLM U544 ( .A0(\Reg_File[5][7] ), .A1(n236), .B0(\Reg_File[4][7] ), 
        .B1(n237), .C0(n238), .Y(n223) );
  AOI221XLM U545 ( .A0(\Reg_File[11][7] ), .A1(n231), .B0(\Reg_File[10][7] ), 
        .B1(n232), .C0(n233), .Y(n224) );
  OAI2BB2X1M U546 ( .B0(n590), .B1(n614), .A0N(n590), .A1N(Reg_0[1]), .Y(n343)
         );
  OAI2BB2X1M U547 ( .B0(n590), .B1(n615), .A0N(n590), .A1N(Reg_0[2]), .Y(n344)
         );
  OAI2BB2X1M U548 ( .B0(n590), .B1(n612), .A0N(n590), .A1N(Reg_0[0]), .Y(n342)
         );
  OAI2BB2X1M U549 ( .B0(n590), .B1(n616), .A0N(n590), .A1N(Reg_0[3]), .Y(n345)
         );
  OAI2BB2X1M U550 ( .B0(n590), .B1(n617), .A0N(n590), .A1N(Reg_0[4]), .Y(n346)
         );
  OAI2BB2X1M U551 ( .B0(n590), .B1(n618), .A0N(n590), .A1N(Reg_0[5]), .Y(n347)
         );
  OAI2BB2X1M U552 ( .B0(n614), .B1(n588), .A0N(n588), .A1N(\Reg_File[4][1] ), 
        .Y(n375) );
  OAI2BB2X1M U553 ( .B0(n615), .B1(n588), .A0N(n588), .A1N(n685), .Y(n376) );
  OAI2BB2X1M U554 ( .B0(n612), .B1(n588), .A0N(n588), .A1N(\Reg_File[4][0] ), 
        .Y(n374) );
  OAI2BB2X1M U555 ( .B0(n616), .B1(n588), .A0N(n588), .A1N(\Reg_File[4][3] ), 
        .Y(n377) );
  OAI2BB2X1M U556 ( .B0(n620), .B1(n588), .A0N(n588), .A1N(\Reg_File[4][7] ), 
        .Y(n381) );
  OAI2BB2X1M U557 ( .B0(n617), .B1(n588), .A0N(n588), .A1N(\Reg_File[4][4] ), 
        .Y(n378) );
  OAI2BB2X1M U558 ( .B0(n618), .B1(n588), .A0N(n588), .A1N(\Reg_File[4][5] ), 
        .Y(n379) );
  OAI2BB2X1M U559 ( .B0(n619), .B1(n588), .A0N(n588), .A1N(\Reg_File[4][6] ), 
        .Y(n380) );
  DLY1X1M U560 ( .A(test_so2), .Y(n677) );
  INVXLM U561 ( .A(n677), .Y(n673) );
  DLY1X1M U562 ( .A(test_so1), .Y(n680) );
  INVXLM U563 ( .A(n680), .Y(n674) );
  INVXLM U564 ( .A(n673), .Y(n675) );
  INVXLM U565 ( .A(n675), .Y(n676) );
  INVXLM U566 ( .A(n674), .Y(n678) );
  INVXLM U567 ( .A(n678), .Y(n679) );
  DLY1X1M U568 ( .A(Reg_0[7]), .Y(n681) );
  INVXLM U569 ( .A(n676), .Y(n682) );
  INVXLM U570 ( .A(n676), .Y(n683) );
  INVXLM U571 ( .A(n679), .Y(n684) );
  INVXLM U572 ( .A(n679), .Y(n685) );
  INVXLM U3 ( .A(\Reg_File[15][3] ), .Y(n1) );
  INVX8M U4 ( .A(n1), .Y(test_so2) );
  INVXLM U5 ( .A(\Reg_File[4][2] ), .Y(n3) );
  INVX8M U6 ( .A(n3), .Y(test_so1) );
endmodule


module MUX4x1_DATA_WIDTH16 ( IN1, IN2, IN3, IN4, Sel1, Sel2, Sel3, Sel4, OUT
 );
  input [15:0] IN1;
  input [15:0] IN2;
  input [15:0] IN3;
  input [15:0] IN4;
  output [15:0] OUT;
  input Sel1, Sel2, Sel3, Sel4;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40;

  BUFX4M U2 ( .A(n5), .Y(n37) );
  NOR4BX1M U3 ( .AN(Sel2), .B(Sel1), .C(Sel3), .D(Sel4), .Y(n5) );
  BUFX4M U4 ( .A(n3), .Y(n39) );
  NOR4BX1M U5 ( .AN(Sel4), .B(Sel1), .C(Sel2), .D(Sel3), .Y(n3) );
  BUFX4M U6 ( .A(n6), .Y(n38) );
  NOR4BX1M U7 ( .AN(Sel1), .B(Sel2), .C(Sel3), .D(Sel4), .Y(n6) );
  BUFX4M U8 ( .A(n4), .Y(n40) );
  NOR4BX1M U9 ( .AN(Sel3), .B(Sel1), .C(Sel2), .D(Sel4), .Y(n4) );
  NAND2X2M U10 ( .A(n23), .B(n24), .Y(OUT[15]) );
  AOI22X1M U11 ( .A0(IN2[8]), .A1(n37), .B0(IN1[8]), .B1(n38), .Y(n7) );
  AOI22X1M U12 ( .A0(IN2[9]), .A1(n37), .B0(IN1[9]), .B1(n38), .Y(n1) );
  AOI22X1M U13 ( .A0(IN2[10]), .A1(n37), .B0(IN1[10]), .B1(n38), .Y(n33) );
  AOI22X1M U14 ( .A0(IN2[11]), .A1(n37), .B0(IN1[11]), .B1(n38), .Y(n31) );
  AOI22X1M U15 ( .A0(IN2[12]), .A1(n37), .B0(IN1[12]), .B1(n38), .Y(n29) );
  AOI22X1M U16 ( .A0(IN2[13]), .A1(n37), .B0(IN1[13]), .B1(n38), .Y(n27) );
  AOI22X1M U17 ( .A0(IN2[14]), .A1(n37), .B0(IN1[14]), .B1(n38), .Y(n25) );
  AOI22X1M U18 ( .A0(IN2[15]), .A1(n37), .B0(IN1[15]), .B1(n38), .Y(n23) );
  NAND2X2M U19 ( .A(n35), .B(n36), .Y(OUT[0]) );
  AOI22X1M U20 ( .A0(IN2[0]), .A1(n37), .B0(IN1[0]), .B1(n38), .Y(n35) );
  AOI22X1M U21 ( .A0(IN4[0]), .A1(n39), .B0(IN3[0]), .B1(n40), .Y(n36) );
  NAND2X2M U22 ( .A(n21), .B(n22), .Y(OUT[1]) );
  AOI22X1M U23 ( .A0(IN2[1]), .A1(n37), .B0(IN1[1]), .B1(n38), .Y(n21) );
  AOI22X1M U24 ( .A0(IN4[1]), .A1(n39), .B0(IN3[1]), .B1(n40), .Y(n22) );
  NAND2X2M U25 ( .A(n9), .B(n10), .Y(OUT[7]) );
  AOI22X1M U26 ( .A0(IN4[7]), .A1(n39), .B0(IN3[7]), .B1(n40), .Y(n10) );
  AOI22X1M U27 ( .A0(IN2[7]), .A1(n37), .B0(IN1[7]), .B1(n38), .Y(n9) );
  NAND2X2M U28 ( .A(n19), .B(n20), .Y(OUT[2]) );
  AOI22X1M U29 ( .A0(IN4[2]), .A1(n39), .B0(IN3[2]), .B1(n40), .Y(n20) );
  AOI22X1M U30 ( .A0(IN2[2]), .A1(n37), .B0(IN1[2]), .B1(n38), .Y(n19) );
  NAND2X2M U31 ( .A(n17), .B(n18), .Y(OUT[3]) );
  AOI22X1M U32 ( .A0(IN4[3]), .A1(n39), .B0(IN3[3]), .B1(n40), .Y(n18) );
  AOI22X1M U33 ( .A0(IN2[3]), .A1(n37), .B0(IN1[3]), .B1(n38), .Y(n17) );
  NAND2X2M U34 ( .A(n15), .B(n16), .Y(OUT[4]) );
  AOI22X1M U35 ( .A0(IN4[4]), .A1(n39), .B0(IN3[4]), .B1(n40), .Y(n16) );
  AOI22X1M U36 ( .A0(IN2[4]), .A1(n37), .B0(IN1[4]), .B1(n38), .Y(n15) );
  NAND2X2M U37 ( .A(n13), .B(n14), .Y(OUT[5]) );
  AOI22X1M U38 ( .A0(IN4[5]), .A1(n39), .B0(IN3[5]), .B1(n40), .Y(n14) );
  AOI22X1M U39 ( .A0(IN2[5]), .A1(n37), .B0(IN1[5]), .B1(n38), .Y(n13) );
  NAND2X2M U40 ( .A(n11), .B(n12), .Y(OUT[6]) );
  AOI22X1M U41 ( .A0(IN4[6]), .A1(n39), .B0(IN3[6]), .B1(n40), .Y(n12) );
  AOI22X1M U42 ( .A0(IN2[6]), .A1(n37), .B0(IN1[6]), .B1(n38), .Y(n11) );
  NAND2X2M U43 ( .A(n7), .B(n8), .Y(OUT[8]) );
  AOI22X1M U44 ( .A0(IN4[8]), .A1(n39), .B0(IN3[8]), .B1(n40), .Y(n8) );
  NAND2X2M U45 ( .A(n1), .B(n2), .Y(OUT[9]) );
  AOI22X1M U46 ( .A0(IN4[9]), .A1(n39), .B0(IN3[9]), .B1(n40), .Y(n2) );
  NAND2X2M U47 ( .A(n33), .B(n34), .Y(OUT[10]) );
  AOI22X1M U48 ( .A0(IN4[10]), .A1(n39), .B0(IN3[10]), .B1(n40), .Y(n34) );
  NAND2X2M U49 ( .A(n31), .B(n32), .Y(OUT[11]) );
  AOI22X1M U50 ( .A0(IN4[11]), .A1(n39), .B0(IN3[11]), .B1(n40), .Y(n32) );
  NAND2X2M U51 ( .A(n29), .B(n30), .Y(OUT[12]) );
  AOI22X1M U52 ( .A0(IN4[12]), .A1(n39), .B0(IN3[12]), .B1(n40), .Y(n30) );
  NAND2X2M U53 ( .A(n27), .B(n28), .Y(OUT[13]) );
  AOI22X1M U54 ( .A0(IN4[13]), .A1(n39), .B0(IN3[13]), .B1(n40), .Y(n28) );
  NAND2X2M U55 ( .A(n25), .B(n26), .Y(OUT[14]) );
  AOI22X1M U56 ( .A0(IN4[14]), .A1(n39), .B0(IN3[14]), .B1(n40), .Y(n26) );
  AOI22X1M U57 ( .A0(IN4[15]), .A1(n39), .B0(IN3[15]), .B1(n40), .Y(n24) );
endmodule


module MUX4x1_DATA_WIDTH1 ( IN1, IN2, IN3, IN4, Sel1, Sel2, Sel3, Sel4, OUT );
  input [0:0] IN1;
  input [0:0] IN2;
  input [0:0] IN3;
  input [0:0] IN4;
  output [0:0] OUT;
  input Sel1, Sel2, Sel3, Sel4;
  wire   n5, n6, n7, n8, n9, n2, n3, n4;

  NOR3X2M U2 ( .A(Sel1), .B(Sel3), .C(Sel2), .Y(n6) );
  INVX2M U3 ( .A(Sel2), .Y(n3) );
  INVX2M U4 ( .A(Sel1), .Y(n4) );
  OAI21X2M U5 ( .A0(Sel3), .A1(n8), .B0(n9), .Y(n7) );
  NAND4X2M U6 ( .A(Sel3), .B(IN3[0]), .C(n4), .D(n3), .Y(n9) );
  AOI33X2M U7 ( .A0(IN1[0]), .A1(n3), .A2(Sel1), .B0(IN2[0]), .B1(n4), .B2(
        Sel2), .Y(n8) );
  INVX2M U8 ( .A(n5), .Y(OUT[0]) );
  AOI32X1M U9 ( .A0(Sel4), .A1(IN4[0]), .A2(n6), .B0(n7), .B1(n2), .Y(n5) );
  INVX2M U10 ( .A(Sel4), .Y(n2) );
endmodule


module Decoder_Unit ( ALU_FUN_MS, Arith_En, Logic_En, CMP_EN, SHIFT_EN );
  input [1:0] ALU_FUN_MS;
  output Arith_En, Logic_En, CMP_EN, SHIFT_EN;
  wire   n2, n1;

  NOR2BX4M U3 ( .AN(ALU_FUN_MS[1]), .B(ALU_FUN_MS[0]), .Y(CMP_EN) );
  NOR2X4M U4 ( .A(n1), .B(ALU_FUN_MS[1]), .Y(Logic_En) );
  NOR2X4M U5 ( .A(ALU_FUN_MS[0]), .B(n2), .Y(Arith_En) );
  NOR2X4M U6 ( .A(n1), .B(n2), .Y(SHIFT_EN) );
  OR2X2M U7 ( .A(Logic_En), .B(CMP_EN), .Y(n2) );
  INVX2M U8 ( .A(ALU_FUN_MS[0]), .Y(n1) );
endmodule


module ARITHMETIC_UNIT_DATA_WIDTH8_DW_div_uns_0 ( a, b, quotient, remainder, 
        divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   n16, \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15;

  ADDFHX4M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n6), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n11), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n11), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n11), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n11), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n11), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n11), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n9), .CI(
        \u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n10), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n9), .CI(
        \u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n10), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n9), .CI(
        \u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n10), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n10), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFHX1M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n6), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n10), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n9), .CI(
        \u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n7), .CI(
        \u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n7), .CI(
        \u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n11), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFHX1M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n8), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFHX1M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n8), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFHX1M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n8), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFHX1M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n9), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFHX1M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n7), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFHX1M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n8), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n5), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n10), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  INVX2M U1 ( .A(b[4]), .Y(n8) );
  INVX2M U2 ( .A(b[3]), .Y(n9) );
  AND3X4M U3 ( .A(n15), .B(n8), .C(n7), .Y(n14) );
  AND2X2M U4 ( .A(\u_div/CryTmp[5][3] ), .B(n13), .Y(quotient[5]) );
  AND2X2M U5 ( .A(\u_div/CryTmp[4][4] ), .B(n14), .Y(quotient[4]) );
  NOR2X2M U6 ( .A(b[6]), .B(b[7]), .Y(n15) );
  MX2X2M U7 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(n16), .Y(
        \u_div/PartRem[2][1] ) );
  AND2X1M U8 ( .A(\u_div/CryTmp[2][6] ), .B(n15), .Y(n16) );
  INVX2M U9 ( .A(b[5]), .Y(n7) );
  MX2XLM U10 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  AND3X4M U11 ( .A(n13), .B(n10), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND4X4M U12 ( .A(\u_div/CryTmp[7][1] ), .B(n13), .C(n11), .D(n10), .Y(
        quotient[7]) );
  AND2X2M U13 ( .A(n14), .B(n9), .Y(n13) );
  AND2X2M U14 ( .A(\u_div/CryTmp[2][6] ), .B(n15), .Y(quotient[2]) );
  AND2X2M U15 ( .A(\u_div/CryTmp[1][7] ), .B(n5), .Y(quotient[1]) );
  AND2X2M U16 ( .A(\u_div/CryTmp[3][5] ), .B(n2), .Y(quotient[3]) );
  OR2X2M U17 ( .A(n12), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  MX2XLM U18 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  INVX2M U19 ( .A(b[2]), .Y(n10) );
  OR2X1M U20 ( .A(n12), .B(a[5]), .Y(\u_div/CryTmp[5][1] ) );
  OR2X1M U21 ( .A(n12), .B(a[4]), .Y(\u_div/CryTmp[4][1] ) );
  OR2X1M U22 ( .A(n12), .B(a[3]), .Y(\u_div/CryTmp[3][1] ) );
  OR2X1M U23 ( .A(n12), .B(a[2]), .Y(\u_div/CryTmp[2][1] ) );
  OR2X1M U24 ( .A(n12), .B(a[1]), .Y(\u_div/CryTmp[1][1] ) );
  OR2X1M U25 ( .A(n12), .B(a[6]), .Y(\u_div/CryTmp[6][1] ) );
  MX2XLM U26 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  MX2XLM U27 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  INVX4M U28 ( .A(b[0]), .Y(n12) );
  INVX2M U29 ( .A(b[1]), .Y(n11) );
  MX2XLM U30 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  MX2XLM U31 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  MX2X2M U32 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  MX2XLM U33 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  MX2XLM U34 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  MX2XLM U35 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  MX2XLM U36 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  MX2XLM U37 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  XNOR2XLM U38 ( .A(n12), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2XLM U39 ( .A(n12), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  MX2X2M U40 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  XNOR2XLM U41 ( .A(n12), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  AND2X1M U42 ( .A(n7), .B(n15), .Y(n2) );
  MX2XLM U43 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  INVX2M U44 ( .A(n12), .Y(n3) );
  XNOR2X2M U45 ( .A(n12), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X2M U46 ( .A(n12), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U47 ( .A(n12), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U48 ( .A(n12), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  NAND2X2M U49 ( .A(n3), .B(n4), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U50 ( .A(a[0]), .Y(n4) );
  INVX2M U51 ( .A(b[6]), .Y(n6) );
  INVX2M U52 ( .A(b[7]), .Y(n5) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U55 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U57 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U58 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U59 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U60 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U61 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U62 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U63 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U64 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U65 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
endmodule


module ARITHMETIC_UNIT_DATA_WIDTH8_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [9:0] carry;

  ADDFX2M U2_5 ( .A(A[5]), .B(n5), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n7), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n8), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n4), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n9), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n3), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  CLKINVX2M U1 ( .A(B[5]), .Y(n5) );
  INVXLM U2 ( .A(B[0]), .Y(n10) );
  INVXLM U3 ( .A(B[2]), .Y(n8) );
  INVXLM U4 ( .A(B[3]), .Y(n7) );
  INVXLM U5 ( .A(B[4]), .Y(n6) );
  NAND2BX2M U6 ( .AN(n10), .B(n1), .Y(carry[1]) );
  INVX2M U7 ( .A(carry[8]), .Y(DIFF[8]) );
  XNOR2X2M U8 ( .A(n10), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U9 ( .A(A[0]), .Y(n1) );
  INVX2M U10 ( .A(B[7]), .Y(n3) );
  INVX2M U11 ( .A(B[1]), .Y(n9) );
  INVX2M U12 ( .A(B[6]), .Y(n4) );
endmodule


module ARITHMETIC_UNIT_DATA_WIDTH8_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2XLM U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ARITHMETIC_UNIT_DATA_WIDTH8_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19;
  assign SUM[6] = A[6];
  assign SUM[5] = \A[5] ;
  assign \A[5]  = A[5];
  assign SUM[4] = \A[4] ;
  assign \A[4]  = A[4];
  assign SUM[3] = \A[3] ;
  assign \A[3]  = A[3];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  NAND2X2M U2 ( .A(A[7]), .B(B[7]), .Y(n6) );
  CLKXOR2X2M U3 ( .A(B[13]), .B(n9), .Y(SUM[13]) );
  CLKXOR2X2M U4 ( .A(A[7]), .B(B[7]), .Y(SUM[7]) );
  XNOR2X1M U5 ( .A(n1), .B(n2), .Y(SUM[9]) );
  NOR2X1M U6 ( .A(n3), .B(n4), .Y(n2) );
  CLKXOR2X2M U7 ( .A(n5), .B(n6), .Y(SUM[8]) );
  NAND2BX1M U8 ( .AN(n7), .B(n8), .Y(n5) );
  OAI2BB1X1M U9 ( .A0N(n10), .A1N(A[12]), .B0(n11), .Y(n9) );
  OAI21X1M U10 ( .A0(A[12]), .A1(n10), .B0(B[12]), .Y(n11) );
  XOR3XLM U11 ( .A(B[12]), .B(A[12]), .C(n10), .Y(SUM[12]) );
  OAI21BX1M U12 ( .A0(n12), .A1(n13), .B0N(n14), .Y(n10) );
  XNOR2X1M U13 ( .A(n13), .B(n15), .Y(SUM[11]) );
  NOR2X1M U14 ( .A(n14), .B(n12), .Y(n15) );
  NOR2X1M U15 ( .A(B[11]), .B(A[11]), .Y(n12) );
  AND2X1M U16 ( .A(B[11]), .B(A[11]), .Y(n14) );
  OA21X1M U17 ( .A0(n16), .A1(n17), .B0(n18), .Y(n13) );
  CLKXOR2X2M U18 ( .A(n19), .B(n17), .Y(SUM[10]) );
  AOI2BB1X1M U19 ( .A0N(n1), .A1N(n4), .B0(n3), .Y(n17) );
  AND2X1M U20 ( .A(B[9]), .B(A[9]), .Y(n3) );
  NOR2X1M U21 ( .A(B[9]), .B(A[9]), .Y(n4) );
  OA21X1M U22 ( .A0(n6), .A1(n7), .B0(n8), .Y(n1) );
  CLKNAND2X2M U23 ( .A(B[8]), .B(A[8]), .Y(n8) );
  NOR2X1M U24 ( .A(B[8]), .B(A[8]), .Y(n7) );
  NAND2BX1M U25 ( .AN(n16), .B(n18), .Y(n19) );
  CLKNAND2X2M U26 ( .A(B[10]), .B(A[10]), .Y(n18) );
  NOR2X1M U27 ( .A(B[10]), .B(A[10]), .Y(n16) );
endmodule


module ARITHMETIC_UNIT_DATA_WIDTH8_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32;

  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n9), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n8), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n7), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n3), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n6), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n5), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n4), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  AND2X2M U2 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  CLKINVX2M U10 ( .A(B[0]), .Y(n24) );
  CLKINVX2M U11 ( .A(B[1]), .Y(n23) );
  CLKINVX2M U12 ( .A(B[2]), .Y(n22) );
  CLKINVX2M U13 ( .A(B[3]), .Y(n21) );
  CLKINVX2M U14 ( .A(B[4]), .Y(n20) );
  CLKINVX2M U15 ( .A(A[7]), .Y(n25) );
  CLKINVX2M U16 ( .A(A[6]), .Y(n26) );
  CLKXOR2X2M U17 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U18 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U19 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  AND2X2M U20 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  AND2X2M U21 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  AND2X2M U22 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n13) );
  CLKXOR2X2M U23 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U24 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  AND2X2M U25 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n14) );
  AND2X2M U26 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n15) );
  CLKXOR2X2M U27 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  AND2X2M U28 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U29 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  CLKXOR2X2M U30 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  CLKXOR2X2M U31 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  CLKXOR2X2M U32 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  CLKXOR2X2M U33 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  CLKXOR2X2M U34 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  CLKXOR2X2M U35 ( .A(\ab[1][6] ), .B(\ab[0][7] ), .Y(\SUMB[1][6] ) );
  CLKXOR2X2M U36 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(\A1[6] ) );
  INVX2M U37 ( .A(A[1]), .Y(n31) );
  INVX2M U38 ( .A(A[2]), .Y(n30) );
  INVX2M U39 ( .A(A[0]), .Y(n32) );
  INVX2M U40 ( .A(B[6]), .Y(n18) );
  INVX2M U41 ( .A(B[5]), .Y(n19) );
  INVX2M U42 ( .A(B[7]), .Y(n17) );
  INVX2M U43 ( .A(A[4]), .Y(n28) );
  INVX2M U44 ( .A(A[3]), .Y(n29) );
  INVX2M U45 ( .A(A[5]), .Y(n27) );
  NOR2X1M U47 ( .A(n25), .B(n17), .Y(\ab[7][7] ) );
  NOR2X1M U48 ( .A(n25), .B(n18), .Y(\ab[7][6] ) );
  NOR2X1M U49 ( .A(n25), .B(n19), .Y(\ab[7][5] ) );
  NOR2X1M U50 ( .A(n25), .B(n20), .Y(\ab[7][4] ) );
  NOR2X1M U51 ( .A(n25), .B(n21), .Y(\ab[7][3] ) );
  NOR2X1M U52 ( .A(n25), .B(n22), .Y(\ab[7][2] ) );
  NOR2X1M U53 ( .A(n25), .B(n23), .Y(\ab[7][1] ) );
  NOR2X1M U54 ( .A(n25), .B(n24), .Y(\ab[7][0] ) );
  NOR2X1M U55 ( .A(n17), .B(n26), .Y(\ab[6][7] ) );
  NOR2X1M U56 ( .A(n18), .B(n26), .Y(\ab[6][6] ) );
  NOR2X1M U57 ( .A(n19), .B(n26), .Y(\ab[6][5] ) );
  NOR2X1M U58 ( .A(n20), .B(n26), .Y(\ab[6][4] ) );
  NOR2X1M U59 ( .A(n21), .B(n26), .Y(\ab[6][3] ) );
  NOR2X1M U60 ( .A(n22), .B(n26), .Y(\ab[6][2] ) );
  NOR2X1M U61 ( .A(n23), .B(n26), .Y(\ab[6][1] ) );
  NOR2X1M U62 ( .A(n24), .B(n26), .Y(\ab[6][0] ) );
  NOR2X1M U63 ( .A(n17), .B(n27), .Y(\ab[5][7] ) );
  NOR2X1M U64 ( .A(n18), .B(n27), .Y(\ab[5][6] ) );
  NOR2X1M U65 ( .A(n19), .B(n27), .Y(\ab[5][5] ) );
  NOR2X1M U66 ( .A(n20), .B(n27), .Y(\ab[5][4] ) );
  NOR2X1M U67 ( .A(n21), .B(n27), .Y(\ab[5][3] ) );
  NOR2X1M U68 ( .A(n22), .B(n27), .Y(\ab[5][2] ) );
  NOR2X1M U69 ( .A(n23), .B(n27), .Y(\ab[5][1] ) );
  NOR2X1M U70 ( .A(n24), .B(n27), .Y(\ab[5][0] ) );
  NOR2X1M U71 ( .A(n17), .B(n28), .Y(\ab[4][7] ) );
  NOR2X1M U72 ( .A(n18), .B(n28), .Y(\ab[4][6] ) );
  NOR2X1M U73 ( .A(n19), .B(n28), .Y(\ab[4][5] ) );
  NOR2X1M U74 ( .A(n20), .B(n28), .Y(\ab[4][4] ) );
  NOR2X1M U75 ( .A(n21), .B(n28), .Y(\ab[4][3] ) );
  NOR2X1M U76 ( .A(n22), .B(n28), .Y(\ab[4][2] ) );
  NOR2X1M U77 ( .A(n23), .B(n28), .Y(\ab[4][1] ) );
  NOR2X1M U78 ( .A(n24), .B(n28), .Y(\ab[4][0] ) );
  NOR2X1M U79 ( .A(n17), .B(n29), .Y(\ab[3][7] ) );
  NOR2X1M U80 ( .A(n18), .B(n29), .Y(\ab[3][6] ) );
  NOR2X1M U81 ( .A(n19), .B(n29), .Y(\ab[3][5] ) );
  NOR2X1M U82 ( .A(n20), .B(n29), .Y(\ab[3][4] ) );
  NOR2X1M U83 ( .A(n21), .B(n29), .Y(\ab[3][3] ) );
  NOR2X1M U84 ( .A(n22), .B(n29), .Y(\ab[3][2] ) );
  NOR2X1M U85 ( .A(n23), .B(n29), .Y(\ab[3][1] ) );
  NOR2X1M U86 ( .A(n24), .B(n29), .Y(\ab[3][0] ) );
  NOR2X1M U87 ( .A(n17), .B(n30), .Y(\ab[2][7] ) );
  NOR2X1M U88 ( .A(n18), .B(n30), .Y(\ab[2][6] ) );
  NOR2X1M U89 ( .A(n19), .B(n30), .Y(\ab[2][5] ) );
  NOR2X1M U90 ( .A(n20), .B(n30), .Y(\ab[2][4] ) );
  NOR2X1M U91 ( .A(n21), .B(n30), .Y(\ab[2][3] ) );
  NOR2X1M U92 ( .A(n22), .B(n30), .Y(\ab[2][2] ) );
  NOR2X1M U93 ( .A(n23), .B(n30), .Y(\ab[2][1] ) );
  NOR2X1M U94 ( .A(n24), .B(n30), .Y(\ab[2][0] ) );
  NOR2X1M U95 ( .A(n17), .B(n31), .Y(\ab[1][7] ) );
  NOR2X1M U96 ( .A(n18), .B(n31), .Y(\ab[1][6] ) );
  NOR2X1M U97 ( .A(n19), .B(n31), .Y(\ab[1][5] ) );
  NOR2X1M U98 ( .A(n20), .B(n31), .Y(\ab[1][4] ) );
  NOR2X1M U99 ( .A(n21), .B(n31), .Y(\ab[1][3] ) );
  NOR2X1M U100 ( .A(n22), .B(n31), .Y(\ab[1][2] ) );
  NOR2X1M U101 ( .A(n23), .B(n31), .Y(\ab[1][1] ) );
  NOR2X1M U102 ( .A(n24), .B(n31), .Y(\ab[1][0] ) );
  NOR2X1M U103 ( .A(n17), .B(n32), .Y(\ab[0][7] ) );
  NOR2X1M U104 ( .A(n18), .B(n32), .Y(\ab[0][6] ) );
  NOR2X1M U105 ( .A(n19), .B(n32), .Y(\ab[0][5] ) );
  NOR2X1M U106 ( .A(n20), .B(n32), .Y(\ab[0][4] ) );
  NOR2X1M U107 ( .A(n21), .B(n32), .Y(\ab[0][3] ) );
  NOR2X1M U108 ( .A(n22), .B(n32), .Y(\ab[0][2] ) );
  NOR2X1M U109 ( .A(n23), .B(n32), .Y(\ab[0][1] ) );
  NOR2X1M U110 ( .A(n24), .B(n32), .Y(PRODUCT[0]) );
  ARITHMETIC_UNIT_DATA_WIDTH8_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , 
        \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , 
        \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n10, n16, n15, n14, n13, n11, 
        n12, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(
        PRODUCT[15:2]) );
endmodule


module ARITHMETIC_UNIT_DATA_WIDTH8_test_1 ( A_Arith, B_Arith, clk, Arith_En, 
        ALU_FUN_LS, Arith_OUT_reg, Carry_OUT_reg, Arith_Flag_reg, test_si, 
        test_se );
  input [7:0] A_Arith;
  input [7:0] B_Arith;
  input [1:0] ALU_FUN_LS;
  output [7:0] Arith_OUT_reg;
  output [7:0] Carry_OUT_reg;
  input clk, Arith_En, test_si, test_se;
  output Arith_Flag_reg;
  wire   N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n59, n60, n61, n62, n63, n64,
         n65, n69, n70;
  wire   [7:0] Arith_OUT;
  wire   [7:0] Carry_OUT;

  SDFFQX1M Arith_Flag_reg_reg ( .D(Arith_En), .SI(test_si), .SE(test_se), .CK(
        clk), .Q(Arith_Flag_reg) );
  SDFFQX1M \Arith_OUT_reg_reg[5]  ( .D(Arith_OUT[5]), .SI(Arith_OUT_reg[4]), 
        .SE(test_se), .CK(clk), .Q(Arith_OUT_reg[5]) );
  SDFFQX1M \Arith_OUT_reg_reg[6]  ( .D(Arith_OUT[6]), .SI(Arith_OUT_reg[5]), 
        .SE(test_se), .CK(clk), .Q(Arith_OUT_reg[6]) );
  SDFFQX1M \Arith_OUT_reg_reg[7]  ( .D(Arith_OUT[7]), .SI(Arith_OUT_reg[6]), 
        .SE(test_se), .CK(clk), .Q(Arith_OUT_reg[7]) );
  SDFFQX1M \Arith_OUT_reg_reg[4]  ( .D(Arith_OUT[4]), .SI(Arith_OUT_reg[3]), 
        .SE(test_se), .CK(clk), .Q(Arith_OUT_reg[4]) );
  SDFFQX1M \Carry_OUT_reg_reg[1]  ( .D(Carry_OUT[1]), .SI(Carry_OUT_reg[0]), 
        .SE(test_se), .CK(clk), .Q(Carry_OUT_reg[1]) );
  SDFFQX1M \Carry_OUT_reg_reg[0]  ( .D(n63), .SI(Arith_OUT_reg[7]), .SE(
        test_se), .CK(clk), .Q(Carry_OUT_reg[0]) );
  SDFFQX1M \Carry_OUT_reg_reg[2]  ( .D(Carry_OUT[2]), .SI(Carry_OUT_reg[1]), 
        .SE(test_se), .CK(clk), .Q(Carry_OUT_reg[2]) );
  SDFFQX1M \Carry_OUT_reg_reg[3]  ( .D(Carry_OUT[3]), .SI(Carry_OUT_reg[2]), 
        .SE(test_se), .CK(clk), .Q(Carry_OUT_reg[3]) );
  SDFFQX1M \Carry_OUT_reg_reg[4]  ( .D(Carry_OUT[4]), .SI(Carry_OUT_reg[3]), 
        .SE(test_se), .CK(clk), .Q(Carry_OUT_reg[4]) );
  SDFFQX1M \Carry_OUT_reg_reg[5]  ( .D(Carry_OUT[5]), .SI(Carry_OUT_reg[4]), 
        .SE(test_se), .CK(clk), .Q(Carry_OUT_reg[5]) );
  SDFFQX1M \Arith_OUT_reg_reg[3]  ( .D(Arith_OUT[3]), .SI(Arith_OUT_reg[2]), 
        .SE(test_se), .CK(clk), .Q(Arith_OUT_reg[3]) );
  SDFFQX1M \Carry_OUT_reg_reg[6]  ( .D(Carry_OUT[6]), .SI(Carry_OUT_reg[5]), 
        .SE(test_se), .CK(clk), .Q(Carry_OUT_reg[6]) );
  SDFFQX1M \Carry_OUT_reg_reg[7]  ( .D(Carry_OUT[7]), .SI(Carry_OUT_reg[6]), 
        .SE(test_se), .CK(clk), .Q(Carry_OUT_reg[7]) );
  SDFFQX1M \Arith_OUT_reg_reg[2]  ( .D(Arith_OUT[2]), .SI(Arith_OUT_reg[1]), 
        .SE(test_se), .CK(clk), .Q(Arith_OUT_reg[2]) );
  SDFFQX1M \Arith_OUT_reg_reg[1]  ( .D(Arith_OUT[1]), .SI(Arith_OUT_reg[0]), 
        .SE(test_se), .CK(clk), .Q(Arith_OUT_reg[1]) );
  SDFFQX1M \Arith_OUT_reg_reg[0]  ( .D(Arith_OUT[0]), .SI(Arith_Flag_reg), 
        .SE(test_se), .CK(clk), .Q(Arith_OUT_reg[0]) );
  BUFX2M U39 ( .A(n33), .Y(n59) );
  NOR3BX2M U40 ( .AN(Arith_En), .B(n65), .C(n64), .Y(n33) );
  AO21XLM U41 ( .A0(N48), .A1(n60), .B0(n27), .Y(Carry_OUT[6]) );
  AO21XLM U42 ( .A0(N49), .A1(n60), .B0(n27), .Y(Carry_OUT[7]) );
  AO21XLM U43 ( .A0(N47), .A1(n60), .B0(n27), .Y(Carry_OUT[5]) );
  AO21XLM U44 ( .A0(N46), .A1(n60), .B0(n27), .Y(Carry_OUT[4]) );
  AO21XLM U45 ( .A0(N45), .A1(n60), .B0(n27), .Y(Carry_OUT[3]) );
  AO21XLM U46 ( .A0(N44), .A1(n60), .B0(n27), .Y(Carry_OUT[2]) );
  AO21XLM U47 ( .A0(N43), .A1(n60), .B0(n27), .Y(Carry_OUT[1]) );
  INVX2M U48 ( .A(ALU_FUN_LS[1]), .Y(n65) );
  INVX2M U49 ( .A(ALU_FUN_LS[0]), .Y(n64) );
  BUFX4M U50 ( .A(n26), .Y(n60) );
  NOR3BX2M U51 ( .AN(Arith_En), .B(n65), .C(ALU_FUN_LS[0]), .Y(n26) );
  BUFX2M U52 ( .A(n30), .Y(n61) );
  NOR3BX2M U53 ( .AN(Arith_En), .B(ALU_FUN_LS[1]), .C(n64), .Y(n30) );
  BUFX2M U54 ( .A(n29), .Y(n62) );
  NOR3BX2M U55 ( .AN(Arith_En), .B(ALU_FUN_LS[0]), .C(ALU_FUN_LS[1]), .Y(n29)
         );
  NAND2X2M U56 ( .A(n44), .B(n45), .Y(Arith_OUT[1]) );
  AOI22X1M U57 ( .A0(N35), .A1(n60), .B0(N26), .B1(n61), .Y(n44) );
  AOI22XLM U58 ( .A0(N51), .A1(n59), .B0(N17), .B1(n62), .Y(n45) );
  NAND2X2M U59 ( .A(n42), .B(n43), .Y(Arith_OUT[2]) );
  AOI22X1M U60 ( .A0(N36), .A1(n60), .B0(N27), .B1(n61), .Y(n42) );
  AOI22XLM U61 ( .A0(N52), .A1(n59), .B0(N18), .B1(n62), .Y(n43) );
  NAND2X2M U62 ( .A(n40), .B(n41), .Y(Arith_OUT[3]) );
  AOI22X1M U63 ( .A0(N37), .A1(n60), .B0(N28), .B1(n61), .Y(n40) );
  AOI22XLM U64 ( .A0(N53), .A1(n59), .B0(N19), .B1(n62), .Y(n41) );
  NAND2X2M U65 ( .A(n38), .B(n39), .Y(Arith_OUT[4]) );
  AOI22X1M U66 ( .A0(N38), .A1(n60), .B0(N29), .B1(n61), .Y(n38) );
  AOI22XLM U67 ( .A0(N54), .A1(n59), .B0(N20), .B1(n62), .Y(n39) );
  NAND2X2M U68 ( .A(n36), .B(n37), .Y(Arith_OUT[5]) );
  AOI22X1M U69 ( .A0(N39), .A1(n60), .B0(N30), .B1(n61), .Y(n36) );
  AOI22XLM U70 ( .A0(N55), .A1(n59), .B0(N21), .B1(n62), .Y(n37) );
  NAND2X2M U71 ( .A(n31), .B(n32), .Y(Arith_OUT[7]) );
  AOI22XLM U72 ( .A0(N57), .A1(n59), .B0(N23), .B1(n62), .Y(n32) );
  AOI22X1M U73 ( .A0(N41), .A1(n60), .B0(N32), .B1(n61), .Y(n31) );
  INVX2M U74 ( .A(n28), .Y(n63) );
  AOI221XLM U75 ( .A0(N42), .A1(n60), .B0(N24), .B1(n62), .C0(n27), .Y(n28) );
  AND2X2M U76 ( .A(N33), .B(n61), .Y(n27) );
  NAND2X2M U77 ( .A(n34), .B(n35), .Y(Arith_OUT[6]) );
  AOI22X1M U78 ( .A0(N40), .A1(n60), .B0(N31), .B1(n61), .Y(n34) );
  AOI22XLM U79 ( .A0(N56), .A1(n59), .B0(N22), .B1(n62), .Y(n35) );
  NAND2X2M U80 ( .A(n46), .B(n47), .Y(Arith_OUT[0]) );
  AOI22X1M U81 ( .A0(N34), .A1(n60), .B0(N25), .B1(n61), .Y(n46) );
  AO2B2X4M U82 ( .B0(N16), .B1(n62), .A0(N50), .A1N(n70), .Y(n69) );
  CLKINVX40M U84 ( .A(n69), .Y(n47) );
  CLKINVX40M U85 ( .A(n59), .Y(n70) );
  ARITHMETIC_UNIT_DATA_WIDTH8_DW_div_uns_0 div_27 ( .a(A_Arith), .b(B_Arith), 
        .quotient({N57, N56, N55, N54, N53, N52, N51, N50}) );
  ARITHMETIC_UNIT_DATA_WIDTH8_DW01_sub_0 sub_25 ( .A({1'b0, A_Arith}), .B({
        1'b0, B_Arith}), .CI(1'b0), .DIFF({N33, N32, N31, N30, N29, N28, N27, 
        N26, N25}) );
  ARITHMETIC_UNIT_DATA_WIDTH8_DW01_add_0 add_24 ( .A({1'b0, A_Arith}), .B({
        1'b0, B_Arith}), .CI(1'b0), .SUM({N24, N23, N22, N21, N20, N19, N18, 
        N17, N16}) );
  ARITHMETIC_UNIT_DATA_WIDTH8_DW02_mult_0 mult_26 ( .A(A_Arith), .B(B_Arith), 
        .TC(1'b0), .PRODUCT({N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, 
        N39, N38, N37, N36, N35, N34}) );
endmodule


module LOGIC_UNIT_DATA_WIDTH8_test_1 ( A_Logic, B_Logic, clk, Logic_En, 
        ALU_FUN_LS, Logic_OUT_reg, Logic_Flag_reg, test_si, test_se );
  input [7:0] A_Logic;
  input [7:0] B_Logic;
  input [1:0] ALU_FUN_LS;
  output [7:0] Logic_OUT_reg;
  input clk, Logic_En, test_si, test_se;
  output Logic_Flag_reg;
  wire   n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n19, n20, n21, n22, n23, n24, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63;
  wire   [7:0] Logic_OUT;

  SDFFQX1M Logic_Flag_reg_reg ( .D(Logic_En), .SI(test_si), .SE(test_se), .CK(
        clk), .Q(Logic_Flag_reg) );
  SDFFQX1M \Logic_OUT_reg_reg[7]  ( .D(Logic_OUT[7]), .SI(Logic_OUT_reg[6]), 
        .SE(test_se), .CK(clk), .Q(Logic_OUT_reg[7]) );
  SDFFQX1M \Logic_OUT_reg_reg[5]  ( .D(Logic_OUT[5]), .SI(Logic_OUT_reg[4]), 
        .SE(test_se), .CK(clk), .Q(Logic_OUT_reg[5]) );
  SDFFQX1M \Logic_OUT_reg_reg[2]  ( .D(Logic_OUT[2]), .SI(Logic_OUT_reg[1]), 
        .SE(test_se), .CK(clk), .Q(Logic_OUT_reg[2]) );
  SDFFQX1M \Logic_OUT_reg_reg[0]  ( .D(Logic_OUT[0]), .SI(Logic_Flag_reg), 
        .SE(test_se), .CK(clk), .Q(Logic_OUT_reg[0]) );
  SDFFQX1M \Logic_OUT_reg_reg[1]  ( .D(Logic_OUT[1]), .SI(Logic_OUT_reg[0]), 
        .SE(test_se), .CK(clk), .Q(Logic_OUT_reg[1]) );
  SDFFQX1M \Logic_OUT_reg_reg[4]  ( .D(Logic_OUT[4]), .SI(Logic_OUT_reg[3]), 
        .SE(test_se), .CK(clk), .Q(Logic_OUT_reg[4]) );
  SDFFQX1M \Logic_OUT_reg_reg[3]  ( .D(Logic_OUT[3]), .SI(Logic_OUT_reg[2]), 
        .SE(test_se), .CK(clk), .Q(Logic_OUT_reg[3]) );
  SDFFQX1M \Logic_OUT_reg_reg[6]  ( .D(Logic_OUT[6]), .SI(Logic_OUT_reg[5]), 
        .SE(test_se), .CK(clk), .Q(Logic_OUT_reg[6]) );
  AOI22XLM U12 ( .A0(n36), .A1(n23), .B0(B_Logic[5]), .B1(n37), .Y(n35) );
  INVXLM U13 ( .A(B_Logic[5]), .Y(n23) );
  OAI221XLM U23 ( .A0(A_Logic[6]), .A1(n19), .B0(n57), .B1(n20), .C0(n30), .Y(
        Logic_OUT[6]) );
  OAI21XLM U24 ( .A0(A_Logic[6]), .A1(n34), .B0(n19), .Y(n31) );
  AOI22XLM U25 ( .A0(n48), .A1(n55), .B0(B_Logic[1]), .B1(n49), .Y(n47) );
  INVXLM U26 ( .A(B_Logic[1]), .Y(n55) );
  AOI22XLM U27 ( .A0(n51), .A1(n56), .B0(B_Logic[0]), .B1(n52), .Y(n50) );
  INVXLM U28 ( .A(B_Logic[0]), .Y(n56) );
  AOI22XLM U29 ( .A0(n45), .A1(n54), .B0(B_Logic[2]), .B1(n46), .Y(n44) );
  INVXLM U30 ( .A(B_Logic[2]), .Y(n54) );
  AOI22XLM U31 ( .A0(n42), .A1(n53), .B0(B_Logic[3]), .B1(n43), .Y(n41) );
  INVXLM U32 ( .A(B_Logic[3]), .Y(n53) );
  AOI22XLM U33 ( .A0(n39), .A1(n24), .B0(B_Logic[4]), .B1(n40), .Y(n38) );
  INVXLM U34 ( .A(B_Logic[4]), .Y(n24) );
  OAI2BB1XLM U35 ( .A0N(ALU_FUN_LS[0]), .A1N(A_Logic[7]), .B0(n27), .Y(n26) );
  OAI21XLM U36 ( .A0(ALU_FUN_LS[0]), .A1(A_Logic[7]), .B0(B_Logic[7]), .Y(n27)
         );
  INVXLM U37 ( .A(A_Logic[6]), .Y(n57) );
  NAND2X2M U38 ( .A(Logic_En), .B(n21), .Y(n33) );
  NAND2X2M U39 ( .A(Logic_En), .B(ALU_FUN_LS[1]), .Y(n34) );
  INVX2M U40 ( .A(ALU_FUN_LS[1]), .Y(n21) );
  BUFX4M U41 ( .A(n29), .Y(n20) );
  NAND3X2M U42 ( .A(ALU_FUN_LS[0]), .B(n21), .C(Logic_En), .Y(n29) );
  BUFX4M U43 ( .A(n28), .Y(n19) );
  NAND3BX2M U44 ( .AN(ALU_FUN_LS[0]), .B(ALU_FUN_LS[1]), .C(Logic_En), .Y(n28)
         );
  OAI21X2M U45 ( .A0(n33), .A1(n63), .B0(n20), .Y(n52) );
  OAI21X2M U46 ( .A0(n33), .A1(n62), .B0(n20), .Y(n49) );
  OAI21X2M U47 ( .A0(n33), .A1(n61), .B0(n20), .Y(n46) );
  OAI21X2M U48 ( .A0(n33), .A1(n60), .B0(n20), .Y(n43) );
  OAI21X2M U49 ( .A0(n33), .A1(n59), .B0(n20), .Y(n40) );
  OAI21X2M U50 ( .A0(n33), .A1(n58), .B0(n20), .Y(n37) );
  OAI21X2M U51 ( .A0(n33), .A1(n57), .B0(n20), .Y(n32) );
  OAI221X1M U52 ( .A0(A_Logic[1]), .A1(n19), .B0(n20), .B1(n62), .C0(n47), .Y(
        Logic_OUT[1]) );
  OAI21X2M U53 ( .A0(A_Logic[1]), .A1(n34), .B0(n19), .Y(n48) );
  OAI221X1M U54 ( .A0(A_Logic[0]), .A1(n19), .B0(n20), .B1(n63), .C0(n50), .Y(
        Logic_OUT[0]) );
  OAI21X2M U55 ( .A0(A_Logic[0]), .A1(n34), .B0(n19), .Y(n51) );
  OAI221X1M U56 ( .A0(A_Logic[2]), .A1(n19), .B0(n20), .B1(n61), .C0(n44), .Y(
        Logic_OUT[2]) );
  OAI21X2M U57 ( .A0(A_Logic[2]), .A1(n34), .B0(n19), .Y(n45) );
  OAI221X1M U58 ( .A0(A_Logic[3]), .A1(n19), .B0(n20), .B1(n60), .C0(n41), .Y(
        Logic_OUT[3]) );
  OAI21X2M U59 ( .A0(A_Logic[3]), .A1(n34), .B0(n19), .Y(n42) );
  OAI221X1M U60 ( .A0(A_Logic[4]), .A1(n19), .B0(n20), .B1(n59), .C0(n38), .Y(
        Logic_OUT[4]) );
  OAI21X2M U61 ( .A0(A_Logic[4]), .A1(n34), .B0(n19), .Y(n39) );
  OAI221X1M U62 ( .A0(A_Logic[5]), .A1(n19), .B0(n20), .B1(n58), .C0(n35), .Y(
        Logic_OUT[5]) );
  OAI21X2M U63 ( .A0(A_Logic[5]), .A1(n34), .B0(n19), .Y(n36) );
  AOI22X1M U64 ( .A0(n31), .A1(n22), .B0(B_Logic[6]), .B1(n32), .Y(n30) );
  INVX2M U65 ( .A(B_Logic[6]), .Y(n22) );
  NOR2BX2M U66 ( .AN(Logic_En), .B(n25), .Y(Logic_OUT[7]) );
  XNOR2X2M U67 ( .A(ALU_FUN_LS[1]), .B(n26), .Y(n25) );
  INVX2M U68 ( .A(A_Logic[1]), .Y(n62) );
  INVX2M U69 ( .A(A_Logic[4]), .Y(n59) );
  INVX2M U70 ( .A(A_Logic[2]), .Y(n61) );
  INVX2M U71 ( .A(A_Logic[3]), .Y(n60) );
  INVX2M U72 ( .A(A_Logic[5]), .Y(n58) );
  INVX2M U73 ( .A(A_Logic[0]), .Y(n63) );
endmodule


module CMP_UNIT_DATA_WIDTH8_test_1 ( A_Cmp, B_Cmp, clk, CMP_EN, ALU_FUN_LS, 
        CMP_OUT_reg, CMP_Flag_reg, test_si, test_se );
  input [7:0] A_Cmp;
  input [7:0] B_Cmp;
  input [1:0] ALU_FUN_LS;
  output [7:0] CMP_OUT_reg;
  input clk, CMP_EN, test_si, test_se;
  output CMP_Flag_reg;
  wire   N17, n8, n4, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30;
  wire   [1:0] CMP_OUT;
  assign CMP_OUT_reg[7] = 1'b0;
  assign CMP_OUT_reg[6] = 1'b0;
  assign CMP_OUT_reg[5] = 1'b0;
  assign CMP_OUT_reg[4] = 1'b0;
  assign CMP_OUT_reg[3] = 1'b0;
  assign CMP_OUT_reg[2] = 1'b0;

  SDFFQX1M CMP_Flag_reg_reg ( .D(CMP_EN), .SI(test_si), .SE(test_se), .CK(clk), 
        .Q(CMP_Flag_reg) );
  SDFFQX1M \CMP_OUT_reg_reg[1]  ( .D(CMP_OUT[1]), .SI(CMP_OUT_reg[0]), .SE(
        test_se), .CK(clk), .Q(CMP_OUT_reg[1]) );
  SDFFQX1M \CMP_OUT_reg_reg[0]  ( .D(CMP_OUT[0]), .SI(CMP_Flag_reg), .SE(
        test_se), .CK(clk), .Q(CMP_OUT_reg[0]) );
  OAI21XLM U5 ( .A0(B_Cmp[5]), .A1(n28), .B0(n18), .Y(n19) );
  NAND2XLM U13 ( .A(B_Cmp[5]), .B(n28), .Y(n20) );
  AND3X2M U14 ( .A(n8), .B(ALU_FUN_LS[0]), .C(CMP_EN), .Y(CMP_OUT[0]) );
  NAND2BXLM U15 ( .AN(A_Cmp[6]), .B(B_Cmp[6]), .Y(n21) );
  NOR2BXLM U19 ( .AN(A_Cmp[0]), .B(B_Cmp[0]), .Y(n13) );
  INVXLM U20 ( .A(B_Cmp[4]), .Y(n29) );
  NAND2XLM U21 ( .A(B_Cmp[2]), .B(n26), .Y(n11) );
  OAI2BB1XLM U22 ( .A0N(n13), .A1N(A_Cmp[1]), .B0(B_Cmp[1]), .Y(n12) );
  NAND2XLM U23 ( .A(B_Cmp[3]), .B(n27), .Y(n16) );
  NAND2BXLM U24 ( .AN(A_Cmp[4]), .B(B_Cmp[4]), .Y(n17) );
  NOR2BXLM U25 ( .AN(B_Cmp[7]), .B(A_Cmp[7]), .Y(n23) );
  OAI2B2XLM U26 ( .A1N(A_Cmp[1]), .A0(n9), .B0(B_Cmp[1]), .B1(n9), .Y(n10) );
  NOR2BXLM U27 ( .AN(B_Cmp[0]), .B(A_Cmp[0]), .Y(n9) );
  OAI2BB2X1M U28 ( .B0(n4), .B1(ALU_FUN_LS[1]), .A0N(N17), .A1N(ALU_FUN_LS[1]), 
        .Y(n8) );
  OR4X1M U29 ( .A(n25), .B(n24), .C(N17), .D(n23), .Y(n4) );
  AND3X2M U30 ( .A(N17), .B(ALU_FUN_LS[1]), .C(CMP_EN), .Y(CMP_OUT[1]) );
  INVX2M U31 ( .A(B_Cmp[6]), .Y(n30) );
  INVX2M U32 ( .A(A_Cmp[2]), .Y(n26) );
  INVX2M U33 ( .A(A_Cmp[3]), .Y(n27) );
  INVX2M U34 ( .A(A_Cmp[5]), .Y(n28) );
  NAND4X1M U35 ( .A(n10), .B(n21), .C(n20), .D(n17), .Y(n25) );
  CLKNAND2X2M U36 ( .A(n16), .B(n11), .Y(n24) );
  OAI211X1M U37 ( .A0(A_Cmp[1]), .A1(n13), .B0(n12), .C0(n11), .Y(n14) );
  OAI221X1M U38 ( .A0(B_Cmp[2]), .A1(n26), .B0(B_Cmp[3]), .B1(n27), .C0(n14), 
        .Y(n15) );
  AOI32X1M U39 ( .A0(n17), .A1(n16), .A2(n15), .B0(A_Cmp[4]), .B1(n29), .Y(n18) );
  AOI32X1M U40 ( .A0(n21), .A1(n20), .A2(n19), .B0(A_Cmp[6]), .B1(n30), .Y(n22) );
  OAI2B2X1M U41 ( .A1N(A_Cmp[7]), .A0(B_Cmp[7]), .B0(n23), .B1(n22), .Y(N17)
         );
endmodule


module SHIFT_UNIT_DATA_WIDTH8_test_1 ( A_Shift, B_Shift, clk, SHIFT_EN, 
        ALU_FUN_LS, SHIFT_OUT_reg, SHIFT_Flag_reg, test_si, test_se );
  input [7:0] A_Shift;
  input [7:0] B_Shift;
  input [1:0] ALU_FUN_LS;
  output [7:0] SHIFT_OUT_reg;
  input clk, SHIFT_EN, test_si, test_se;
  output SHIFT_Flag_reg;
  wire   n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n35, n36, n37, n38, n39;
  wire   [7:0] SHIFT_OUT;

  SDFFTRX1M \SHIFT_OUT_reg_reg[7]  ( .RN(SHIFT_EN), .D(n36), .SI(
        SHIFT_OUT_reg[6]), .SE(test_se), .CK(clk), .Q(SHIFT_OUT_reg[7]) );
  SDFFTRX1M \SHIFT_OUT_reg_reg[0]  ( .RN(SHIFT_EN), .D(n35), .SI(
        SHIFT_Flag_reg), .SE(test_se), .CK(clk), .Q(SHIFT_OUT_reg[0]) );
  SDFFQX1M SHIFT_Flag_reg_reg ( .D(SHIFT_EN), .SI(test_si), .SE(test_se), .CK(
        clk), .Q(SHIFT_Flag_reg) );
  SDFFQX1M \SHIFT_OUT_reg_reg[4]  ( .D(SHIFT_OUT[4]), .SI(SHIFT_OUT_reg[3]), 
        .SE(test_se), .CK(clk), .Q(SHIFT_OUT_reg[4]) );
  SDFFQX1M \SHIFT_OUT_reg_reg[3]  ( .D(SHIFT_OUT[3]), .SI(SHIFT_OUT_reg[2]), 
        .SE(test_se), .CK(clk), .Q(SHIFT_OUT_reg[3]) );
  SDFFQX1M \SHIFT_OUT_reg_reg[2]  ( .D(SHIFT_OUT[2]), .SI(SHIFT_OUT_reg[1]), 
        .SE(test_se), .CK(clk), .Q(SHIFT_OUT_reg[2]) );
  SDFFQX1M \SHIFT_OUT_reg_reg[1]  ( .D(SHIFT_OUT[1]), .SI(SHIFT_OUT_reg[0]), 
        .SE(test_se), .CK(clk), .Q(SHIFT_OUT_reg[1]) );
  SDFFQX1M \SHIFT_OUT_reg_reg[6]  ( .D(SHIFT_OUT[6]), .SI(SHIFT_OUT_reg[5]), 
        .SE(test_se), .CK(clk), .Q(SHIFT_OUT_reg[6]) );
  SDFFQX1M \SHIFT_OUT_reg_reg[5]  ( .D(SHIFT_OUT[5]), .SI(SHIFT_OUT_reg[4]), 
        .SE(test_se), .CK(clk), .Q(SHIFT_OUT_reg[5]) );
  AOI22XLM U21 ( .A0(B_Shift[5]), .A1(n16), .B0(B_Shift[7]), .B1(n20), .Y(n19)
         );
  AOI22XLM U22 ( .A0(A_Shift[5]), .A1(n17), .B0(A_Shift[7]), .B1(n21), .Y(n18)
         );
  AOI22XLM U23 ( .A0(B_Shift[0]), .A1(n16), .B0(B_Shift[2]), .B1(n20), .Y(n31)
         );
  AOI22XLM U24 ( .A0(B_Shift[1]), .A1(n16), .B0(B_Shift[3]), .B1(n20), .Y(n29)
         );
  AOI22XLM U25 ( .A0(B_Shift[2]), .A1(n16), .B0(B_Shift[4]), .B1(n20), .Y(n27)
         );
  AOI22XLM U26 ( .A0(B_Shift[3]), .A1(n16), .B0(n20), .B1(B_Shift[5]), .Y(n25)
         );
  AOI22XLM U27 ( .A0(A_Shift[4]), .A1(n17), .B0(n21), .B1(A_Shift[6]), .Y(n22)
         );
  AOI22XLM U28 ( .A0(B_Shift[4]), .A1(n16), .B0(n20), .B1(B_Shift[6]), .Y(n23)
         );
  AO22XLM U29 ( .A0(B_Shift[1]), .A1(n20), .B0(A_Shift[1]), .B1(n21), .Y(n35)
         );
  AO22XLM U30 ( .A0(B_Shift[6]), .A1(n16), .B0(A_Shift[6]), .B1(n17), .Y(n36)
         );
  NOR2X4M U31 ( .A(n39), .B(n38), .Y(n16) );
  INVX2M U32 ( .A(SHIFT_EN), .Y(n37) );
  NOR2X4M U33 ( .A(n39), .B(ALU_FUN_LS[0]), .Y(n20) );
  NOR2X4M U34 ( .A(ALU_FUN_LS[0]), .B(ALU_FUN_LS[1]), .Y(n21) );
  NOR2X4M U35 ( .A(n38), .B(ALU_FUN_LS[1]), .Y(n17) );
  INVX2M U36 ( .A(ALU_FUN_LS[1]), .Y(n39) );
  INVX2M U37 ( .A(ALU_FUN_LS[0]), .Y(n38) );
  AOI21X2M U38 ( .A0(n30), .A1(n31), .B0(n37), .Y(SHIFT_OUT[1]) );
  AOI22X1M U39 ( .A0(A_Shift[0]), .A1(n17), .B0(A_Shift[2]), .B1(n21), .Y(n30)
         );
  AOI21X2M U40 ( .A0(n28), .A1(n29), .B0(n37), .Y(SHIFT_OUT[2]) );
  AOI22X1M U41 ( .A0(A_Shift[1]), .A1(n17), .B0(A_Shift[3]), .B1(n21), .Y(n28)
         );
  AOI21X2M U42 ( .A0(n26), .A1(n27), .B0(n37), .Y(SHIFT_OUT[3]) );
  AOI22X1M U43 ( .A0(A_Shift[2]), .A1(n17), .B0(A_Shift[4]), .B1(n21), .Y(n26)
         );
  AOI21X2M U44 ( .A0(n24), .A1(n25), .B0(n37), .Y(SHIFT_OUT[4]) );
  AOI22X1M U45 ( .A0(A_Shift[3]), .A1(n17), .B0(n21), .B1(A_Shift[5]), .Y(n24)
         );
  AOI21X2M U46 ( .A0(n22), .A1(n23), .B0(n37), .Y(SHIFT_OUT[5]) );
  AOI21X2M U47 ( .A0(n18), .A1(n19), .B0(n37), .Y(SHIFT_OUT[6]) );
endmodule


module ALU_TOP_00000008_test_1 ( A, B, ALU_FUNC, CLK, ALU_EN, ALU_vld_OUT, 
        ALU_OUT, test_si, test_so, test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUNC;
  output [15:0] ALU_OUT;
  input CLK, ALU_EN, test_si, test_se;
  output ALU_vld_OUT, test_so;
  wire   Arith_Enable, LOGIC_Enable, CMP_Enable, SHIFT_Enable, _4_net_,
         _5_net_, _6_net_, _7_net_, SHIFT_Flag, CMP_Flag, Logic_Flag,
         Arith_Flag, _8_net_, _9_net_, _10_net_, _11_net_;
  wire   [7:0] SHIFT_OUT;
  wire   [7:0] CMP_OUT;
  wire   [7:0] Logic_OUT;
  wire   [7:0] Carry_OUT;
  wire   [7:0] Arith_OUT;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5;
  assign test_so = SHIFT_OUT[7];

  OR2X2M U2 ( .A(ALU_EN), .B(LOGIC_Enable), .Y(_9_net_) );
  OR2X2M U3 ( .A(ALU_EN), .B(Arith_Enable), .Y(_8_net_) );
  OR2X2M U4 ( .A(ALU_EN), .B(SHIFT_Enable), .Y(_11_net_) );
  OR2X2M U5 ( .A(ALU_EN), .B(CMP_Enable), .Y(_10_net_) );
  AND2X2M U6 ( .A(CMP_Flag), .B(ALU_EN), .Y(_6_net_) );
  AND2X2M U7 ( .A(SHIFT_Flag), .B(ALU_EN), .Y(_7_net_) );
  AND2X2M U8 ( .A(Arith_Flag), .B(ALU_EN), .Y(_4_net_) );
  AND2X2M U9 ( .A(Logic_Flag), .B(ALU_EN), .Y(_5_net_) );
  MUX4x1_DATA_WIDTH16 u_ALUout_MUX4x1 ( .IN1({Carry_OUT, Arith_OUT}), .IN2({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, Logic_OUT}), .IN3({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, CMP_OUT[1:0]}), .IN4({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, SHIFT_OUT}), .Sel1(Arith_Enable), .Sel2(LOGIC_Enable), 
        .Sel3(CMP_Enable), .Sel4(SHIFT_Enable), .OUT(ALU_OUT) );
  MUX4x1_DATA_WIDTH1 u_ALU_vld_MUX4x1 ( .IN1(_4_net_), .IN2(_5_net_), .IN3(
        _6_net_), .IN4(_7_net_), .Sel1(Arith_Enable), .Sel2(LOGIC_Enable), 
        .Sel3(CMP_Enable), .Sel4(SHIFT_Enable), .OUT(ALU_vld_OUT) );
  Decoder_Unit U_Decoder_Unit ( .ALU_FUN_MS(ALU_FUNC[3:2]), .Arith_En(
        Arith_Enable), .Logic_En(LOGIC_Enable), .CMP_EN(CMP_Enable), 
        .SHIFT_EN(SHIFT_Enable) );
  ARITHMETIC_UNIT_DATA_WIDTH8_test_1 U_ARITHMETIC_UNIT ( .A_Arith(A), 
        .B_Arith(B), .clk(CLK), .Arith_En(_8_net_), .ALU_FUN_LS(ALU_FUNC[1:0]), 
        .Arith_OUT_reg(Arith_OUT), .Carry_OUT_reg(Carry_OUT), .Arith_Flag_reg(
        Arith_Flag), .test_si(test_si), .test_se(test_se) );
  LOGIC_UNIT_DATA_WIDTH8_test_1 U_LOGIC_UNIT ( .A_Logic(A), .B_Logic(B), .clk(
        CLK), .Logic_En(_9_net_), .ALU_FUN_LS(ALU_FUNC[1:0]), .Logic_OUT_reg(
        Logic_OUT), .Logic_Flag_reg(Logic_Flag), .test_si(CMP_OUT[1]), 
        .test_se(test_se) );
  CMP_UNIT_DATA_WIDTH8_test_1 U_CMP_UNIT ( .A_Cmp(A), .B_Cmp(B), .clk(CLK), 
        .CMP_EN(_10_net_), .ALU_FUN_LS(ALU_FUNC[1:0]), .CMP_OUT_reg({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, CMP_OUT[1:0]}), 
        .CMP_Flag_reg(CMP_Flag), .test_si(Carry_OUT[7]), .test_se(test_se) );
  SHIFT_UNIT_DATA_WIDTH8_test_1 U_SHIFT_UNIT ( .A_Shift(A), .B_Shift(B), .clk(
        CLK), .SHIFT_EN(_11_net_), .ALU_FUN_LS(ALU_FUNC[1:0]), .SHIFT_OUT_reg(
        SHIFT_OUT), .SHIFT_Flag_reg(SHIFT_Flag), .test_si(Logic_OUT[7]), 
        .test_se(test_se) );
endmodule


module serializer_test_1 ( P_DATA, ser_en, clk, rst, ser_done, ser_data, 
        test_si, test_se );
  input [7:0] P_DATA;
  input ser_en, clk, rst, test_si, test_se;
  output ser_done, ser_data;
  wire   N3, N4, N5, N6, N18, N19, N20, N22, n9, n10, n11, n12, n15, n16, n17,
         n18, n19;
  wire   [7:0] P_DATA_reg;

  SDFFRQX1M \ser_Count_reg[1]  ( .D(N20), .SI(N3), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(N4) );
  SDFFRQX1M \ser_Count_reg[2]  ( .D(n18), .SI(N4), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(N5) );
  SDFFRQX1M ser_data_reg ( .D(N18), .SI(N5), .SE(test_se), .CK(clk), .RN(rst), 
        .Q(ser_data) );
  SDFFRQX2M \ser_Count_reg[0]  ( .D(N19), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(N3) );
  NAND2X2M U13 ( .A(ser_en), .B(n9), .Y(n11) );
  INVX2M U14 ( .A(ser_en), .Y(n17) );
  NOR2X2M U15 ( .A(n17), .B(n9), .Y(N22) );
  INVX2M U16 ( .A(n10), .Y(n18) );
  AOI32X1M U17 ( .A0(n19), .A1(N3), .A2(N4), .B0(N5), .B1(n19), .Y(n10) );
  INVX2M U18 ( .A(n11), .Y(n19) );
  NAND3X2M U19 ( .A(N4), .B(N3), .C(N5), .Y(n9) );
  NOR2X2M U20 ( .A(N3), .B(n11), .Y(N19) );
  NOR2X2M U21 ( .A(n12), .B(n11), .Y(N20) );
  XNOR2X2M U22 ( .A(N3), .B(N4), .Y(n12) );
  NOR2BX2M U23 ( .AN(P_DATA[0]), .B(n17), .Y(P_DATA_reg[0]) );
  NOR2BX2M U24 ( .AN(P_DATA[4]), .B(n17), .Y(P_DATA_reg[4]) );
  NOR2BX2M U25 ( .AN(P_DATA[2]), .B(n17), .Y(P_DATA_reg[2]) );
  NOR2BX2M U26 ( .AN(P_DATA[6]), .B(n17), .Y(P_DATA_reg[6]) );
  NOR2BX2M U27 ( .AN(P_DATA[3]), .B(n17), .Y(P_DATA_reg[3]) );
  NOR2BX2M U28 ( .AN(P_DATA[7]), .B(n17), .Y(P_DATA_reg[7]) );
  NOR2BX2M U29 ( .AN(P_DATA[1]), .B(n17), .Y(P_DATA_reg[1]) );
  NOR2BX2M U30 ( .AN(P_DATA[5]), .B(n17), .Y(P_DATA_reg[5]) );
  NOR2BX2M U31 ( .AN(N6), .B(n17), .Y(N18) );
  MX2X2M U32 ( .A(n16), .B(n15), .S0(N5), .Y(N6) );
  MX4X1M U33 ( .A(P_DATA_reg[4]), .B(P_DATA_reg[5]), .C(P_DATA_reg[6]), .D(
        P_DATA_reg[7]), .S0(N3), .S1(N4), .Y(n15) );
  MX4X1M U34 ( .A(P_DATA_reg[0]), .B(P_DATA_reg[1]), .C(P_DATA_reg[2]), .D(
        P_DATA_reg[3]), .S0(N3), .S1(N4), .Y(n16) );
  SDFFRHQX8M ser_done_reg ( .D(N22), .SI(ser_data), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(ser_done) );
endmodule


module FSM_TX_test_1 ( Data_Valid, rst, PAR_EN, ser_done, clk, ser_en, 
        PAR_Calc_en, mux_sel, busy, test_si, test_so, test_se );
  output [1:0] mux_sel;
  input Data_Valid, rst, PAR_EN, ser_done, clk, test_si, test_se;
  output ser_en, PAR_Calc_en, busy, test_so;
  wire   n9, n10, n11, n12, n13, n14, n7, n8, n15, n16, n17, n20, n21, n22;
  wire   [2:0] curent_state;
  wire   [2:0] next_state;
  assign test_so = n15;

  SDFFRQX1M \curent_state_reg[2]  ( .D(next_state[2]), .SI(curent_state[1]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(curent_state[2]) );
  SDFFRQX1M \curent_state_reg[0]  ( .D(next_state[0]), .SI(test_si), .SE(
        test_se), .CK(clk), .RN(rst), .Q(curent_state[0]) );
  SDFFRQX1M \curent_state_reg[1]  ( .D(next_state[1]), .SI(n8), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(curent_state[1]) );
  NAND2X2M U6 ( .A(n13), .B(n9), .Y(mux_sel[0]) );
  OAI2BB1X2M U7 ( .A0N(curent_state[1]), .A1N(curent_state[0]), .B0(n13), .Y(
        mux_sel[1]) );
  INVX2M U11 ( .A(PAR_Calc_en), .Y(n7) );
  OAI21BX1M U12 ( .A0(n9), .A1(n17), .B0N(ser_en), .Y(next_state[1]) );
  NAND3X2M U13 ( .A(n8), .B(n15), .C(curent_state[1]), .Y(n9) );
  INVX2M U14 ( .A(curent_state[0]), .Y(n8) );
  INVX2M U15 ( .A(curent_state[2]), .Y(n15) );
  NOR3X2M U16 ( .A(curent_state[1]), .B(curent_state[2]), .C(n8), .Y(
        PAR_Calc_en) );
  NOR2X2M U17 ( .A(curent_state[0]), .B(curent_state[1]), .Y(n12) );
  NOR2X2M U18 ( .A(curent_state[2]), .B(n12), .Y(n13) );
  OAI21X2M U19 ( .A0(n22), .A1(n9), .B0(n7), .Y(ser_en) );
  OAI31X1M U20 ( .A0(n17), .A1(n9), .A2(n16), .B0(n11), .Y(next_state[0]) );
  NAND2X2M U21 ( .A(Data_Valid), .B(n12), .Y(n11) );
  OAI31X1M U22 ( .A0(n16), .A1(PAR_EN), .A2(n9), .B0(n10), .Y(next_state[2])
         );
  NAND3X2M U23 ( .A(curent_state[1]), .B(n15), .C(curent_state[0]), .Y(n10) );
  INVX2M U24 ( .A(n22), .Y(n16) );
  NAND4X2M U25 ( .A(n14), .B(n9), .C(n7), .D(n10), .Y(busy) );
  NAND2X2M U26 ( .A(curent_state[2]), .B(n12), .Y(n14) );
  INVX2M U27 ( .A(PAR_EN), .Y(n17) );
  INVXLM U29 ( .A(n20), .Y(n21) );
  INVXLM U30 ( .A(n21), .Y(n22) );
  BUFX2M U3 ( .A(ser_done), .Y(n20) );
endmodule


module Par_Calc ( PAR_TYP, Data_Valid, PAR_Calc_en, P_DATA, PAR_bit );
  input [7:0] P_DATA;
  input PAR_TYP, Data_Valid, PAR_Calc_en;
  output PAR_bit;
  wire   n1, n2, n3, n4, n5;

  XNOR2X2M U2 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n4) );
  XNOR2X2M U3 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n5) );
  AND2X2M U4 ( .A(PAR_Calc_en), .B(n1), .Y(PAR_bit) );
  XOR3XLM U5 ( .A(PAR_TYP), .B(n2), .C(n3), .Y(n1) );
  XOR3XLM U6 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n5), .Y(n2) );
  XOR3XLM U7 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n4), .Y(n3) );
endmodule


module MUX_start_bit0_stop_bit1 ( mux_sel, ser_data, clk, PAR_bit, TX_OUT );
  input [1:0] mux_sel;
  input ser_data, clk, PAR_bit;
  output TX_OUT;
  wire   n3, n1;

  AOI21BX2M U3 ( .A0(ser_data), .A1(mux_sel[0]), .B0N(n1), .Y(n3) );
  INVX8M U4 ( .A(n3), .Y(TX_OUT) );
  OAI21X1M U5 ( .A0(PAR_bit), .A1(mux_sel[0]), .B0(mux_sel[1]), .Y(n1) );
endmodule


module UART_TX_test_1 ( P_DATA, Data_Valid, PAR_EN, PAR_TYP, clk, rst, 
        TX_OUT_top, busy_top, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input Data_Valid, PAR_EN, PAR_TYP, clk, rst, test_si, test_se;
  output TX_OUT_top, busy_top, test_so;
  wire   ser_en, ser_done, ser_data, PAR_Calc_en, PAR_bit, n1, n2, n3;
  wire   [1:0] mux_sel_top;
  assign test_so = ser_done;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst), .Y(n2) );
  serializer_test_1 u_serializer ( .P_DATA(P_DATA), .ser_en(ser_en), .clk(clk), 
        .rst(n1), .ser_done(ser_done), .ser_data(ser_data), .test_si(n3), 
        .test_se(test_se) );
  FSM_TX_test_1 u_FSM ( .Data_Valid(Data_Valid), .rst(n1), .PAR_EN(PAR_EN), 
        .ser_done(ser_done), .clk(clk), .ser_en(ser_en), .PAR_Calc_en(
        PAR_Calc_en), .mux_sel(mux_sel_top), .busy(busy_top), .test_si(test_si), .test_so(n3), .test_se(test_se) );
  Par_Calc u_Par_Calc ( .PAR_TYP(PAR_TYP), .Data_Valid(Data_Valid), 
        .PAR_Calc_en(PAR_Calc_en), .P_DATA(P_DATA), .PAR_bit(PAR_bit) );
  MUX_start_bit0_stop_bit1 u_MUX ( .mux_sel(mux_sel_top), .ser_data(ser_data), 
        .clk(clk), .PAR_bit(PAR_bit), .TX_OUT(TX_OUT_top) );
endmodule


module FSM_RX_test_1 ( RX_in, PAR_en, clk, rst, Par_err, STR_err, STP_err, 
        bit_cnt, edge_cnt, prescale, par_chk_en, enable, dat_samp_en, 
        str_chk_en, stp_chk_en, data_valid, deser_en, PAR_CHK_New_bit, 
        reset_bit_cnt, deser_New_bit, test_si, test_so, test_se );
  input [3:0] bit_cnt;
  input [4:0] edge_cnt;
  input [4:0] prescale;
  input RX_in, PAR_en, clk, rst, Par_err, STR_err, STP_err, test_si, test_se;
  output par_chk_en, enable, dat_samp_en, str_chk_en, stp_chk_en, data_valid,
         deser_en, PAR_CHK_New_bit, reset_bit_cnt, deser_New_bit, test_so;
  wire   data_valid, PAR_CHK_New_bit, N33, n13, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n4, n5, n9, n10, n11, n12, n14,
         n15, n16, n30, n31, n32, n33;
  wire   [2:0] curent_state;
  wire   [2:0] next_state;
  assign deser_en = data_valid;
  assign deser_New_bit = PAR_CHK_New_bit;
  assign test_so = n33;

  NAND2BX8M U28 ( .AN(STR_err), .B(n26), .Y(n22) );
  SDFFRQX1M \curent_state_reg[2]  ( .D(next_state[2]), .SI(curent_state[1]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(curent_state[2]) );
  SDFFRQX1M \curent_state_reg[1]  ( .D(next_state[1]), .SI(curent_state[0]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(curent_state[1]) );
  SDFFRQX1M \curent_state_reg[0]  ( .D(next_state[0]), .SI(test_si), .SE(
        test_se), .CK(clk), .RN(rst), .Q(curent_state[0]) );
  AOI2BB2XLM U9 ( .B0(n20), .B1(n32), .A0N(n18), .A1N(n14), .Y(n19) );
  NOR3X2M U10 ( .A(n31), .B(N33), .C(n22), .Y(PAR_CHK_New_bit) );
  NOR4BX1M U11 ( .AN(bit_cnt[3]), .B(n30), .C(bit_cnt[0]), .D(bit_cnt[2]), .Y(
        n20) );
  INVX2M U12 ( .A(str_chk_en), .Y(n15) );
  NOR3X1M U13 ( .A(N33), .B(Par_err), .C(n18), .Y(stp_chk_en) );
  INVXLM U14 ( .A(N33), .Y(n14) );
  NOR2X1M U15 ( .A(n24), .B(N33), .Y(str_chk_en) );
  OAI221X1M U16 ( .A0(RX_in), .A1(n17), .B0(n24), .B1(n14), .C0(n23), .Y(
        next_state[0]) );
  NOR2X2M U17 ( .A(n26), .B(STR_err), .Y(n21) );
  NAND4BBX1M U18 ( .AN(stp_chk_en), .BN(PAR_CHK_New_bit), .C(n29), .D(n15), 
        .Y(dat_samp_en) );
  NAND3X2M U19 ( .A(n16), .B(n14), .C(n32), .Y(n29) );
  NOR2X2M U20 ( .A(STP_err), .B(n17), .Y(data_valid) );
  OAI2B1X2M U21 ( .A1N(Par_err), .A0(n18), .B0(n19), .Y(par_chk_en) );
  INVX2M U22 ( .A(n25), .Y(n31) );
  INVX2M U23 ( .A(n20), .Y(n16) );
  INVX2M U24 ( .A(n27), .Y(n32) );
  NAND4X2M U25 ( .A(n31), .B(n27), .C(n24), .D(n33), .Y(enable) );
  NAND2X2M U26 ( .A(n17), .B(n33), .Y(reset_bit_cnt) );
  NAND2X2M U27 ( .A(n28), .B(n33), .Y(n17) );
  AOI32X1M U29 ( .A0(PAR_en), .A1(n25), .A2(n21), .B0(n16), .B1(n32), .Y(n23)
         );
  OAI211X2M U30 ( .A0(n31), .A1(n22), .B0(n15), .C0(n23), .Y(next_state[1]) );
  OAI31X1M U31 ( .A0(n13), .A1(PAR_en), .A2(n31), .B0(n19), .Y(next_state[2])
         );
  INVX2M U32 ( .A(n21), .Y(n13) );
  NOR3BX2M U33 ( .AN(curent_state[1]), .B(curent_state[0]), .C(curent_state[2]), .Y(n25) );
  NAND4BX1M U34 ( .AN(bit_cnt[2]), .B(bit_cnt[0]), .C(bit_cnt[3]), .D(n30), 
        .Y(n26) );
  INVX2M U35 ( .A(bit_cnt[1]), .Y(n30) );
  NAND3BX2M U36 ( .AN(curent_state[1]), .B(n33), .C(curent_state[0]), .Y(n24)
         );
  NAND2X2M U37 ( .A(curent_state[2]), .B(n28), .Y(n18) );
  NAND3X2M U38 ( .A(curent_state[0]), .B(n33), .C(curent_state[1]), .Y(n27) );
  NOR2X2M U39 ( .A(curent_state[1]), .B(curent_state[0]), .Y(n28) );
  INVX2M U40 ( .A(curent_state[2]), .Y(n33) );
  XNOR2X1M U41 ( .A(prescale[4]), .B(edge_cnt[4]), .Y(n12) );
  XNOR2X1M U42 ( .A(prescale[3]), .B(edge_cnt[3]), .Y(n11) );
  CLKXOR2X2M U43 ( .A(prescale[0]), .B(edge_cnt[0]), .Y(n5) );
  CLKXOR2X2M U44 ( .A(prescale[1]), .B(edge_cnt[1]), .Y(n4) );
  NOR2X1M U45 ( .A(n5), .B(n4), .Y(n10) );
  XNOR2X1M U46 ( .A(prescale[2]), .B(edge_cnt[2]), .Y(n9) );
  NAND4X1M U47 ( .A(n12), .B(n11), .C(n10), .D(n9), .Y(N33) );
endmodule


module data_sampler_test_1 ( RX_in, CLK, RST, dat_samp_en, edge_cnt, prescale, 
        sampled_bit, test_si, test_so, test_se );
  input [4:0] edge_cnt;
  input [4:0] prescale;
  input RX_in, CLK, RST, dat_samp_en, test_si, test_se;
  output sampled_bit, test_so;
  wire   sampled_bit_reg, N75, n7, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n10, n11, n12, n13, n14, n15, n16, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56;
  wire   [2:0] internal_sampled_bit;
  assign test_so = sampled_bit_reg;

  SDFFRX1M \internal_sampled_bit_reg[2]  ( .D(n43), .SI(n53), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(n56), .QN(n7) );
  SDFFRQX1M \internal_sampled_bit_reg[0]  ( .D(n45), .SI(test_si), .SE(test_se), .CK(CLK), .RN(RST), .Q(internal_sampled_bit[0]) );
  SDFFRQX1M \internal_sampled_bit_reg[1]  ( .D(n44), .SI(n54), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(internal_sampled_bit[1]) );
  SDFFRQX1M sampled_bit_reg_reg ( .D(sampled_bit), .SI(n56), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sampled_bit_reg) );
  INVX2M U11 ( .A(n36), .Y(n50) );
  NAND3BX2M U12 ( .AN(n35), .B(n28), .C(n55), .Y(n29) );
  OAI2BB2X4M U13 ( .B0(n17), .B1(n18), .A0N(sampled_bit_reg), .A1N(n18), .Y(
        sampled_bit) );
  AOI21X2M U14 ( .A0(internal_sampled_bit[1]), .A1(internal_sampled_bit[0]), 
        .B0(n19), .Y(n17) );
  NAND2X2M U15 ( .A(dat_samp_en), .B(N75), .Y(n18) );
  AOI21X2M U16 ( .A0(n53), .A1(n54), .B0(n7), .Y(n19) );
  OAI22X1M U17 ( .A0(edge_cnt[4]), .A1(n51), .B0(prescale[4]), .B1(edge_cnt[4]), .Y(n36) );
  INVX2M U18 ( .A(edge_cnt[3]), .Y(n51) );
  OAI21X2M U19 ( .A0(n30), .A1(n53), .B0(n31), .Y(n44) );
  AOI21X2M U20 ( .A0(n24), .A1(n51), .B0(n32), .Y(n30) );
  OAI211X2M U21 ( .A0(edge_cnt[3]), .A1(n22), .B0(RX_in), .C0(n49), .Y(n31) );
  INVX2M U22 ( .A(n32), .Y(n49) );
  NAND2X2M U23 ( .A(n27), .B(n33), .Y(n32) );
  OAI33X2M U24 ( .A0(n34), .A1(n50), .A2(n55), .B0(n28), .B1(n50), .B2(n35), 
        .Y(n33) );
  OR3X2M U25 ( .A(edge_cnt[0]), .B(edge_cnt[1]), .C(edge_cnt[2]), .Y(n34) );
  NOR2X2M U26 ( .A(n55), .B(prescale[4]), .Y(n24) );
  NAND2X2M U27 ( .A(edge_cnt[0]), .B(n52), .Y(n28) );
  INVX2M U28 ( .A(prescale[3]), .Y(n55) );
  OAI21X2M U29 ( .A0(n25), .A1(n26), .B0(n27), .Y(n23) );
  NOR4X1M U30 ( .A(edge_cnt[2]), .B(n50), .C(n28), .D(n55), .Y(n26) );
  NOR3X2M U31 ( .A(n29), .B(edge_cnt[0]), .C(n52), .Y(n25) );
  NAND3BX2M U32 ( .AN(edge_cnt[4]), .B(edge_cnt[2]), .C(n51), .Y(n35) );
  INVX2M U33 ( .A(edge_cnt[1]), .Y(n52) );
  NAND2X2M U34 ( .A(n27), .B(n40), .Y(n39) );
  OAI32X1M U35 ( .A0(n41), .A1(n52), .A2(n55), .B0(edge_cnt[1]), .B1(n29), .Y(
        n40) );
  NAND3X2M U36 ( .A(edge_cnt[0]), .B(n36), .C(edge_cnt[2]), .Y(n41) );
  AND4X2M U37 ( .A(prescale[2]), .B(prescale[1]), .C(prescale[0]), .D(n42), 
        .Y(n27) );
  NAND2X2M U38 ( .A(prescale[4]), .B(n55), .Y(n42) );
  OAI21X2M U39 ( .A0(n37), .A1(n54), .B0(n38), .Y(n45) );
  OAI211X2M U40 ( .A0(n51), .A1(n22), .B0(RX_in), .C0(n47), .Y(n38) );
  AOI21X2M U41 ( .A0(n24), .A1(edge_cnt[3]), .B0(n39), .Y(n37) );
  INVX2M U42 ( .A(n39), .Y(n47) );
  OAI21X2M U43 ( .A0(n20), .A1(n7), .B0(n21), .Y(n43) );
  AOI21X2M U44 ( .A0(n24), .A1(n51), .B0(n23), .Y(n20) );
  OAI211X2M U45 ( .A0(edge_cnt[3]), .A1(n22), .B0(n48), .C0(RX_in), .Y(n21) );
  INVX2M U46 ( .A(n23), .Y(n48) );
  INVX2M U47 ( .A(internal_sampled_bit[1]), .Y(n53) );
  INVX2M U48 ( .A(internal_sampled_bit[0]), .Y(n54) );
  NAND2BX2M U49 ( .AN(prescale[4]), .B(prescale[3]), .Y(n22) );
  CLKXOR2X2M U50 ( .A(prescale[2]), .B(edge_cnt[2]), .Y(n46) );
  NOR2BX1M U51 ( .AN(prescale[0]), .B(edge_cnt[0]), .Y(n10) );
  OAI2B2X1M U52 ( .A1N(edge_cnt[1]), .A0(n10), .B0(prescale[1]), .B1(n10), .Y(
        n13) );
  NOR2BX1M U53 ( .AN(edge_cnt[0]), .B(prescale[0]), .Y(n11) );
  OAI2B2X1M U54 ( .A1N(prescale[1]), .A0(n11), .B0(edge_cnt[1]), .B1(n11), .Y(
        n12) );
  CLKNAND2X2M U55 ( .A(n13), .B(n12), .Y(n16) );
  CLKXOR2X2M U56 ( .A(prescale[3]), .B(edge_cnt[3]), .Y(n15) );
  CLKXOR2X2M U57 ( .A(prescale[4]), .B(edge_cnt[4]), .Y(n14) );
  NOR4X1M U58 ( .A(n46), .B(n16), .C(n15), .D(n14), .Y(N75) );
endmodule


module edge_bit_counter_test_1 ( enable, reset_bit_cnt, CLK, RST, prescale, 
        bit_cnt, edge_cnt, test_si, test_se );
  input [4:0] prescale;
  output [3:0] bit_cnt;
  output [4:0] edge_cnt;
  input enable, reset_bit_cnt, CLK, RST, test_si, test_se;
  wire   N9, N12, N13, N14, N21, N22, N23, N24, N25, N39, N40, N41, N42, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, \add_27/carry[4] ,
         \add_27/carry[3] , \add_27/carry[2] , n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n41;

  SDFFRQX1M \bit_cnt_reg[0]  ( .D(N39), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(n29), .Q(bit_cnt[0]) );
  SDFFRQX1M \edge_cnt_reg[4]  ( .D(N25), .SI(edge_cnt[3]), .SE(test_se), .CK(
        CLK), .RN(n29), .Q(edge_cnt[4]) );
  SDFFRQX1M \bit_cnt_reg[3]  ( .D(N42), .SI(bit_cnt[2]), .SE(test_se), .CK(CLK), .RN(n29), .Q(bit_cnt[3]) );
  SDFFRQX1M \bit_cnt_reg[1]  ( .D(N40), .SI(bit_cnt[0]), .SE(test_se), .CK(CLK), .RN(n29), .Q(bit_cnt[1]) );
  SDFFRQX1M \bit_cnt_reg[2]  ( .D(N41), .SI(bit_cnt[1]), .SE(test_se), .CK(CLK), .RN(n29), .Q(bit_cnt[2]) );
  SDFFRQX2M \edge_cnt_reg[0]  ( .D(N21), .SI(bit_cnt[3]), .SE(test_se), .CK(
        CLK), .RN(n29), .Q(edge_cnt[0]) );
  SDFFRQX2M \edge_cnt_reg[1]  ( .D(N22), .SI(edge_cnt[0]), .SE(test_se), .CK(
        CLK), .RN(n29), .Q(edge_cnt[1]) );
  SDFFRQX2M \edge_cnt_reg[3]  ( .D(N24), .SI(edge_cnt[2]), .SE(test_se), .CK(
        CLK), .RN(n29), .Q(edge_cnt[3]) );
  SDFFRQX2M \edge_cnt_reg[2]  ( .D(N23), .SI(edge_cnt[1]), .SE(test_se), .CK(
        CLK), .RN(n29), .Q(edge_cnt[2]) );
  NOR4X2M U21 ( .A(n38), .B(n37), .C(n36), .D(n35), .Y(N9) );
  INVX2M U22 ( .A(n30), .Y(n29) );
  INVX2M U23 ( .A(RST), .Y(n30) );
  NAND2BX1M U24 ( .AN(N9), .B(enable), .Y(n21) );
  NOR2BX2M U25 ( .AN(N12), .B(n21), .Y(N22) );
  NOR2BX2M U26 ( .AN(N13), .B(n21), .Y(N23) );
  NOR2BX2M U27 ( .AN(N14), .B(n21), .Y(N24) );
  NAND2BX2M U28 ( .AN(reset_bit_cnt), .B(enable), .Y(n14) );
  NAND2XLM U29 ( .A(N9), .B(bit_cnt[0]), .Y(n18) );
  NOR2X2M U30 ( .A(n16), .B(n14), .Y(N41) );
  XNOR2X2M U31 ( .A(bit_cnt[2]), .B(n17), .Y(n16) );
  NOR2BX2M U32 ( .AN(bit_cnt[1]), .B(n18), .Y(n17) );
  NOR2X2M U33 ( .A(n19), .B(n14), .Y(N40) );
  CLKXOR2X2M U34 ( .A(n18), .B(bit_cnt[1]), .Y(n19) );
  NOR2X2M U35 ( .A(n13), .B(n14), .Y(N42) );
  CLKXOR2X2M U36 ( .A(n15), .B(bit_cnt[3]), .Y(n13) );
  NAND4XLM U37 ( .A(bit_cnt[2]), .B(N9), .C(bit_cnt[1]), .D(bit_cnt[0]), .Y(
        n15) );
  NOR2X2M U38 ( .A(n20), .B(n14), .Y(N39) );
  XNOR2XLM U39 ( .A(bit_cnt[0]), .B(N9), .Y(n20) );
  NOR2X2M U40 ( .A(n28), .B(n21), .Y(N25) );
  XNOR2X2M U41 ( .A(\add_27/carry[4] ), .B(n41), .Y(n28) );
  NOR2X2M U42 ( .A(edge_cnt[0]), .B(n21), .Y(N21) );
  ADDHX1M U43 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_27/carry[2] ), .S(
        N12) );
  ADDHX1M U44 ( .A(edge_cnt[2]), .B(\add_27/carry[2] ), .CO(\add_27/carry[3] ), 
        .S(N13) );
  ADDHX1M U45 ( .A(edge_cnt[3]), .B(\add_27/carry[3] ), .CO(\add_27/carry[4] ), 
        .S(N14) );
  CLKXOR2X2M U46 ( .A(prescale[2]), .B(edge_cnt[2]), .Y(n38) );
  NOR2BX1M U47 ( .AN(prescale[0]), .B(edge_cnt[0]), .Y(n31) );
  OAI2B2X1M U48 ( .A1N(edge_cnt[1]), .A0(n31), .B0(prescale[1]), .B1(n31), .Y(
        n34) );
  NOR2BX1M U49 ( .AN(edge_cnt[0]), .B(prescale[0]), .Y(n32) );
  OAI2B2X1M U50 ( .A1N(prescale[1]), .A0(n32), .B0(edge_cnt[1]), .B1(n32), .Y(
        n33) );
  CLKNAND2X2M U51 ( .A(n34), .B(n33), .Y(n37) );
  CLKXOR2X2M U52 ( .A(prescale[3]), .B(edge_cnt[3]), .Y(n36) );
  CLKXOR2X2M U53 ( .A(prescale[4]), .B(n41), .Y(n35) );
  DLY1X1M U54 ( .A(edge_cnt[4]), .Y(n41) );
endmodule


module deserializer_test_1 ( sampled_bit, deser_en, RST, CLK, deser_New_bit, 
        P_DAta, test_si, test_so, test_se );
  output [7:0] P_DAta;
  input sampled_bit, deser_en, RST, CLK, deser_New_bit, test_si, test_se;
  output test_so;
  wire   n2, n10, n12, n14, n16, n18, n20, n22, n24, n26, n27, n28, n29, n30,
         n31, n32, n33;
  assign test_so = n27;

  SDFFRQX1M \shift_reg_reg[7]  ( .D(n24), .SI(n28), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DAta[7]) );
  SDFFRQX1M \shift_reg_reg[6]  ( .D(n22), .SI(n29), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DAta[6]) );
  SDFFRQX1M \shift_reg_reg[5]  ( .D(n20), .SI(n30), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DAta[5]) );
  SDFFRQX1M \shift_reg_reg[4]  ( .D(n18), .SI(n31), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DAta[4]) );
  SDFFRQX1M \shift_reg_reg[3]  ( .D(n16), .SI(n32), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DAta[3]) );
  SDFFRQX1M \shift_reg_reg[2]  ( .D(n14), .SI(n33), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DAta[2]) );
  SDFFRQX1M \shift_reg_reg[1]  ( .D(n12), .SI(P_DAta[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(P_DAta[1]) );
  SDFFRQX1M \shift_reg_reg[0]  ( .D(n10), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DAta[0]) );
  BUFX2M U10 ( .A(deser_New_bit), .Y(n26) );
  INVX2M U11 ( .A(n26), .Y(n2) );
  OAI22X1M U12 ( .A0(n2), .A1(n32), .B0(n26), .B1(n33), .Y(n12) );
  OAI22X1M U13 ( .A0(n2), .A1(n31), .B0(n26), .B1(n32), .Y(n14) );
  OAI22X1M U14 ( .A0(n2), .A1(n30), .B0(n26), .B1(n31), .Y(n16) );
  OAI22X1M U15 ( .A0(n2), .A1(n29), .B0(n26), .B1(n30), .Y(n18) );
  OAI22X1M U16 ( .A0(n2), .A1(n28), .B0(n26), .B1(n29), .Y(n20) );
  OAI22X1M U17 ( .A0(n2), .A1(n27), .B0(n26), .B1(n28), .Y(n22) );
  OAI2BB2X1M U26 ( .B0(n26), .B1(n27), .A0N(sampled_bit), .A1N(n26), .Y(n24)
         );
  OAI2BB2X1M U27 ( .B0(n33), .B1(n2), .A0N(P_DAta[0]), .A1N(n2), .Y(n10) );
  INVX2M U28 ( .A(P_DAta[7]), .Y(n27) );
  INVX2M U29 ( .A(P_DAta[1]), .Y(n33) );
  INVX2M U30 ( .A(P_DAta[2]), .Y(n32) );
  INVX2M U31 ( .A(P_DAta[3]), .Y(n31) );
  INVX2M U32 ( .A(P_DAta[4]), .Y(n30) );
  INVX2M U33 ( .A(P_DAta[5]), .Y(n29) );
  INVX2M U34 ( .A(P_DAta[6]), .Y(n28) );
endmodule


module PAR_CHK_test_1 ( PAR_en, sampled_bit, par_chk_en, PAR_TYP, 
        PAR_CHK_New_bit, RST, CLK, Par_err, test_si, test_so, test_se );
  input PAR_en, sampled_bit, par_chk_en, PAR_TYP, PAR_CHK_New_bit, RST, CLK,
         test_si, test_se;
  output Par_err, test_so;
  wire   PAR_bit, N9, n1, n3, n4, n5, n7, n9, n15, n16, n18, n21, n23, n25,
         n27, n29, n31, n33, n35, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49;
  wire   [7:0] shift_reg;
  assign test_so = shift_reg[7];

  SEDFFX1M TX_Par_reg ( .D(sampled_bit), .SI(PAR_bit), .E(N9), .SE(test_se), 
        .CK(CLK), .Q(n49), .QN(n16) );
  SDFFRQX1M \shift_reg_reg[0]  ( .D(n35), .SI(n49), .SE(test_se), .CK(CLK), 
        .RN(n39), .Q(shift_reg[0]) );
  SDFFRQX1M \shift_reg_reg[6]  ( .D(n23), .SI(n46), .SE(test_se), .CK(CLK), 
        .RN(n39), .Q(shift_reg[6]) );
  SDFFRQX1M \shift_reg_reg[5]  ( .D(n25), .SI(n45), .SE(test_se), .CK(CLK), 
        .RN(n39), .Q(shift_reg[5]) );
  SDFFRQX1M \shift_reg_reg[4]  ( .D(n27), .SI(n44), .SE(test_se), .CK(CLK), 
        .RN(n39), .Q(shift_reg[4]) );
  SDFFRQX1M \shift_reg_reg[3]  ( .D(n29), .SI(n43), .SE(test_se), .CK(CLK), 
        .RN(n39), .Q(shift_reg[3]) );
  SDFFRQX1M \shift_reg_reg[2]  ( .D(n31), .SI(n42), .SE(test_se), .CK(CLK), 
        .RN(n39), .Q(shift_reg[2]) );
  SDFFRQX1M \shift_reg_reg[1]  ( .D(n33), .SI(n41), .SE(test_se), .CK(CLK), 
        .RN(n39), .Q(shift_reg[1]) );
  SDFFRQX1M PAR_bit_reg ( .D(n18), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        n39), .Q(PAR_bit) );
  SDFFRQX1M \shift_reg_reg[7]  ( .D(n21), .SI(n47), .SE(test_se), .CK(CLK), 
        .RN(n39), .Q(shift_reg[7]) );
  BUFX2M U12 ( .A(PAR_CHK_New_bit), .Y(n38) );
  INVX2M U13 ( .A(n40), .Y(n39) );
  INVX2M U14 ( .A(RST), .Y(n40) );
  INVX2M U15 ( .A(n38), .Y(n9) );
  AND2X2M U16 ( .A(n39), .B(par_chk_en), .Y(N9) );
  OAI22X1M U17 ( .A0(n46), .A1(n9), .B0(n38), .B1(n47), .Y(n23) );
  OAI22X1M U18 ( .A0(n45), .A1(n9), .B0(n38), .B1(n46), .Y(n25) );
  OAI22X1M U19 ( .A0(n44), .A1(n9), .B0(n38), .B1(n45), .Y(n27) );
  OAI22X1M U20 ( .A0(n43), .A1(n9), .B0(n38), .B1(n44), .Y(n29) );
  OAI22X1M U21 ( .A0(n42), .A1(n9), .B0(n38), .B1(n43), .Y(n31) );
  OAI22X1M U22 ( .A0(n41), .A1(n9), .B0(n38), .B1(n42), .Y(n33) );
  OAI2BB2X1M U23 ( .B0(n38), .B1(n41), .A0N(sampled_bit), .A1N(n38), .Y(n35)
         );
  OAI2BB2X1M U24 ( .B0(n47), .B1(n9), .A0N(n9), .A1N(shift_reg[7]), .Y(n21) );
  OAI2BB2X1M U25 ( .B0(n1), .B1(n48), .A0N(n48), .A1N(PAR_bit), .Y(n18) );
  XOR3XLM U26 ( .A(n3), .B(PAR_TYP), .C(n4), .Y(n1) );
  INVX2M U27 ( .A(par_chk_en), .Y(n48) );
  XOR3XLM U38 ( .A(shift_reg[1]), .B(shift_reg[0]), .C(n5), .Y(n4) );
  NOR2BX2M U39 ( .AN(PAR_en), .B(n15), .Y(Par_err) );
  CLKXOR2X2M U40 ( .A(n16), .B(PAR_bit), .Y(n15) );
  XOR3XLM U41 ( .A(shift_reg[5]), .B(shift_reg[4]), .C(n7), .Y(n3) );
  CLKXOR2X2M U42 ( .A(shift_reg[7]), .B(shift_reg[6]), .Y(n7) );
  CLKXOR2X2M U43 ( .A(n43), .B(shift_reg[3]), .Y(n5) );
  INVX2M U44 ( .A(shift_reg[2]), .Y(n43) );
  INVX2M U45 ( .A(shift_reg[3]), .Y(n44) );
  INVX2M U46 ( .A(shift_reg[6]), .Y(n47) );
  INVX2M U47 ( .A(shift_reg[0]), .Y(n41) );
  INVX2M U48 ( .A(shift_reg[5]), .Y(n46) );
  INVX2M U49 ( .A(shift_reg[1]), .Y(n42) );
  INVX2M U50 ( .A(shift_reg[4]), .Y(n45) );
endmodule


module STR_CHK ( str_chk_en, RST, sampled_bit, STR_err );
  input str_chk_en, RST, sampled_bit;
  output STR_err;


  AND3X2M U2 ( .A(sampled_bit), .B(RST), .C(str_chk_en), .Y(STR_err) );
endmodule


module STP_CHK ( stp_chk_en, RST, sampled_bit, STP_err );
  input stp_chk_en, RST, sampled_bit;
  output STP_err;
  wire   n1;

  AND3X2M U2 ( .A(n1), .B(RST), .C(stp_chk_en), .Y(STP_err) );
  INVX2M U3 ( .A(sampled_bit), .Y(n1) );
endmodule


module UART_RX_test_1 ( RX_in, PAR_en, PAR_TYP, CLK_top, RST_top, prescale_top, 
        data_valid, P_DAta, test_si, test_so, test_se );
  input [4:0] prescale_top;
  output [7:0] P_DAta;
  input RX_in, PAR_en, PAR_TYP, CLK_top, RST_top, test_si, test_se;
  output data_valid, test_so;
  wire   Par_err, STR_err, STP_err, par_chk_en, enable, dat_samp_en,
         str_chk_en, stp_chk_en, deser_en, PAR_CHK_New_bit, reset_bit_cnt,
         deser_New_bit, sampled_bit, n1, n2, n3, n4, n5, n6;
  wire   [3:0] bit_cnt_top;
  wire   [4:0] edge_cnt_top;
  assign test_so = edge_cnt_top[4];

  INVX4M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST_top), .Y(n2) );
  FSM_RX_test_1 u_FSM ( .RX_in(RX_in), .PAR_en(PAR_en), .clk(CLK_top), .rst(n1), .Par_err(Par_err), .STR_err(STR_err), .STP_err(STP_err), .bit_cnt(
        bit_cnt_top), .edge_cnt(edge_cnt_top), .prescale(prescale_top), 
        .par_chk_en(par_chk_en), .enable(enable), .dat_samp_en(dat_samp_en), 
        .str_chk_en(str_chk_en), .stp_chk_en(stp_chk_en), .data_valid(
        data_valid), .deser_en(deser_en), .PAR_CHK_New_bit(PAR_CHK_New_bit), 
        .reset_bit_cnt(reset_bit_cnt), .deser_New_bit(deser_New_bit), 
        .test_si(test_si), .test_so(n6), .test_se(test_se) );
  data_sampler_test_1 u_data_sampler ( .RX_in(RX_in), .CLK(CLK_top), .RST(n1), 
        .dat_samp_en(dat_samp_en), .edge_cnt(edge_cnt_top), .prescale(
        prescale_top), .sampled_bit(sampled_bit), .test_si(n5), .test_so(n4), 
        .test_se(test_se) );
  edge_bit_counter_test_1 u_edge_bit_counter ( .enable(enable), 
        .reset_bit_cnt(reset_bit_cnt), .CLK(CLK_top), .RST(n1), .prescale(
        prescale_top), .bit_cnt(bit_cnt_top), .edge_cnt(edge_cnt_top), 
        .test_si(n3), .test_se(test_se) );
  deserializer_test_1 u_deserializer ( .sampled_bit(sampled_bit), .deser_en(
        deser_en), .RST(n1), .CLK(CLK_top), .deser_New_bit(deser_New_bit), 
        .P_DAta(P_DAta), .test_si(n4), .test_so(n3), .test_se(test_se) );
  PAR_CHK_test_1 u_PAR_CHK ( .PAR_en(PAR_en), .sampled_bit(sampled_bit), 
        .par_chk_en(par_chk_en), .PAR_TYP(PAR_TYP), .PAR_CHK_New_bit(
        PAR_CHK_New_bit), .RST(n1), .CLK(CLK_top), .Par_err(Par_err), 
        .test_si(n6), .test_so(n5), .test_se(test_se) );
  STR_CHK u_STR_CHK ( .str_chk_en(str_chk_en), .RST(n1), .sampled_bit(
        sampled_bit), .STR_err(STR_err) );
  STP_CHK u_STP_CHK ( .stp_chk_en(stp_chk_en), .RST(n1), .sampled_bit(
        sampled_bit), .STP_err(STP_err) );
endmodule


module UART_00000008_00000005_test_1 ( RST, TX_CLK, RX_CLK, RX_IN_S, RX_OUT_P, 
        RX_OUT_V, TX_IN_P, TX_IN_V, TX_OUT_S, TX_OUT_V, Prescale, 
        parity_enable, parity_type, test_si, test_so, test_se );
  output [7:0] RX_OUT_P;
  input [7:0] TX_IN_P;
  input [4:0] Prescale;
  input RST, TX_CLK, RX_CLK, RX_IN_S, TX_IN_V, parity_enable, parity_type,
         test_si, test_se;
  output RX_OUT_V, TX_OUT_S, TX_OUT_V, test_so;
  wire   n2;

  UART_TX_test_1 u_UART_TX_top ( .P_DATA(TX_IN_P), .Data_Valid(TX_IN_V), 
        .PAR_EN(parity_enable), .PAR_TYP(parity_type), .clk(TX_CLK), .rst(RST), 
        .TX_OUT_top(TX_OUT_S), .busy_top(TX_OUT_V), .test_si(n2), .test_so(
        test_so), .test_se(test_se) );
  UART_RX_test_1 u_UART_RX_top ( .RX_in(RX_IN_S), .PAR_en(parity_enable), 
        .PAR_TYP(parity_type), .CLK_top(RX_CLK), .RST_top(RST), .prescale_top(
        Prescale), .data_valid(RX_OUT_V), .P_DAta(RX_OUT_P), .test_si(test_si), 
        .test_so(n2), .test_se(test_se) );
endmodule


module DATA_SYNC_00000002_00000008_test_1 ( Unsync_bus, bus_enable, CLK, RST, 
        sync_bus, enable_pulse, test_si, test_se );
  input [7:0] Unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST, test_si, test_se;
  output enable_pulse;
  wire   SYNC_enable, pulse_Gen_ff, pulse_gen_comp, n2, n4, n6, n8, n10, n12,
         n14, n16, n18, n35, n36, n37, n38;
  wire   [1:0] MULT_FLOP_SYNC;

  SDFFRQX2M \MULT_FLOP_SYNC_reg[0]  ( .D(bus_enable), .SI(test_si), .SE(
        test_se), .CK(CLK), .RN(n36), .Q(MULT_FLOP_SYNC[0]) );
  SDFFRQX1M pulse_Gen_ff_reg ( .D(SYNC_enable), .SI(enable_pulse), .SE(test_se), .CK(CLK), .RN(RST), .Q(pulse_Gen_ff) );
  SDFFRQX1M \MULT_FLOP_SYNC_reg[1]  ( .D(MULT_FLOP_SYNC[0]), .SI(
        MULT_FLOP_SYNC[0]), .SE(test_se), .CK(CLK), .RN(n36), .Q(
        MULT_FLOP_SYNC[1]) );
  SDFFRQX1M enable_pulse_reg ( .D(n35), .SI(SYNC_enable), .SE(test_se), .CK(
        CLK), .RN(n36), .Q(enable_pulse) );
  SDFFRQX1M \sync_bus_reg[7]  ( .D(n18), .SI(sync_bus[6]), .SE(test_se), .CK(
        CLK), .RN(n36), .Q(sync_bus[7]) );
  SDFFRQX1M \sync_bus_reg[6]  ( .D(n16), .SI(sync_bus[5]), .SE(test_se), .CK(
        CLK), .RN(n36), .Q(sync_bus[6]) );
  SDFFRQX1M \sync_bus_reg[5]  ( .D(n14), .SI(sync_bus[4]), .SE(test_se), .CK(
        CLK), .RN(n36), .Q(sync_bus[5]) );
  SDFFRQX1M \sync_bus_reg[4]  ( .D(n12), .SI(sync_bus[3]), .SE(test_se), .CK(
        CLK), .RN(n36), .Q(sync_bus[4]) );
  SDFFRQX1M \sync_bus_reg[3]  ( .D(n10), .SI(sync_bus[2]), .SE(test_se), .CK(
        CLK), .RN(n36), .Q(sync_bus[3]) );
  SDFFRQX1M \sync_bus_reg[2]  ( .D(n8), .SI(sync_bus[1]), .SE(test_se), .CK(
        CLK), .RN(n36), .Q(sync_bus[2]) );
  SDFFRQX1M \sync_bus_reg[1]  ( .D(n6), .SI(sync_bus[0]), .SE(test_se), .CK(
        CLK), .RN(n36), .Q(sync_bus[1]) );
  SDFFRQX1M \sync_bus_reg[0]  ( .D(n4), .SI(pulse_Gen_ff), .SE(test_se), .CK(
        CLK), .RN(n36), .Q(sync_bus[0]) );
  SEDFFX1M SYNC_enable_reg ( .D(MULT_FLOP_SYNC[1]), .SI(MULT_FLOP_SYNC[1]), 
        .E(n36), .SE(test_se), .CK(CLK), .Q(SYNC_enable), .QN(n2) );
  INVX4M U28 ( .A(n37), .Y(n36) );
  INVX2M U29 ( .A(RST), .Y(n37) );
  INVX2M U30 ( .A(n35), .Y(n38) );
  BUFX2M U31 ( .A(pulse_gen_comp), .Y(n35) );
  NOR2X2M U32 ( .A(pulse_Gen_ff), .B(n2), .Y(pulse_gen_comp) );
  AO22X1M U33 ( .A0(Unsync_bus[0]), .A1(n35), .B0(sync_bus[0]), .B1(n38), .Y(
        n4) );
  AO22X1M U34 ( .A0(Unsync_bus[1]), .A1(n35), .B0(sync_bus[1]), .B1(n38), .Y(
        n6) );
  AO22X1M U35 ( .A0(Unsync_bus[2]), .A1(n35), .B0(sync_bus[2]), .B1(n38), .Y(
        n8) );
  AO22X1M U36 ( .A0(Unsync_bus[3]), .A1(n35), .B0(sync_bus[3]), .B1(n38), .Y(
        n10) );
  AO22X1M U37 ( .A0(Unsync_bus[4]), .A1(n35), .B0(sync_bus[4]), .B1(n38), .Y(
        n12) );
  AO22X1M U38 ( .A0(Unsync_bus[5]), .A1(n35), .B0(sync_bus[5]), .B1(n38), .Y(
        n14) );
  AO22X1M U39 ( .A0(Unsync_bus[6]), .A1(n35), .B0(sync_bus[6]), .B1(n38), .Y(
        n16) );
  AO22X1M U40 ( .A0(Unsync_bus[7]), .A1(n35), .B0(sync_bus[7]), .B1(n38), .Y(
        n18) );
endmodule


module DATA_SYNC_00000002_00000008_test_0 ( Unsync_bus, bus_enable, CLK, RST, 
        sync_bus, enable_pulse, test_si, test_se );
  input [7:0] Unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST, test_si, test_se;
  output enable_pulse;
  wire   SYNC_enable, pulse_Gen_ff, pulse_gen_comp, n36, n37, n38, n39, n45,
         n47, n49, n51, n53, n55, n57, n59, n61;
  wire   [1:0] MULT_FLOP_SYNC;

  SEDFFX1M SYNC_enable_reg ( .D(MULT_FLOP_SYNC[1]), .SI(MULT_FLOP_SYNC[1]), 
        .E(n37), .SE(test_se), .CK(CLK), .Q(SYNC_enable), .QN(n61) );
  SDFFRQX1M pulse_Gen_ff_reg ( .D(SYNC_enable), .SI(enable_pulse), .SE(test_se), .CK(CLK), .RN(RST), .Q(pulse_Gen_ff) );
  SDFFRQX1M \MULT_FLOP_SYNC_reg[1]  ( .D(MULT_FLOP_SYNC[0]), .SI(
        MULT_FLOP_SYNC[0]), .SE(test_se), .CK(CLK), .RN(n37), .Q(
        MULT_FLOP_SYNC[1]) );
  SDFFRQX1M enable_pulse_reg ( .D(n36), .SI(SYNC_enable), .SE(test_se), .CK(
        CLK), .RN(n37), .Q(enable_pulse) );
  SDFFRQX1M \sync_bus_reg[7]  ( .D(n45), .SI(sync_bus[6]), .SE(test_se), .CK(
        CLK), .RN(n37), .Q(sync_bus[7]) );
  SDFFRQX1M \sync_bus_reg[6]  ( .D(n47), .SI(sync_bus[5]), .SE(test_se), .CK(
        CLK), .RN(n37), .Q(sync_bus[6]) );
  SDFFRQX1M \sync_bus_reg[5]  ( .D(n49), .SI(sync_bus[4]), .SE(test_se), .CK(
        CLK), .RN(n37), .Q(sync_bus[5]) );
  SDFFRQX1M \sync_bus_reg[4]  ( .D(n51), .SI(sync_bus[3]), .SE(test_se), .CK(
        CLK), .RN(n37), .Q(sync_bus[4]) );
  SDFFRQX1M \sync_bus_reg[3]  ( .D(n53), .SI(sync_bus[2]), .SE(test_se), .CK(
        CLK), .RN(n37), .Q(sync_bus[3]) );
  SDFFRQX1M \sync_bus_reg[2]  ( .D(n55), .SI(sync_bus[1]), .SE(test_se), .CK(
        CLK), .RN(n37), .Q(sync_bus[2]) );
  SDFFRQX1M \sync_bus_reg[1]  ( .D(n57), .SI(sync_bus[0]), .SE(test_se), .CK(
        CLK), .RN(n37), .Q(sync_bus[1]) );
  SDFFRQX1M \sync_bus_reg[0]  ( .D(n59), .SI(pulse_Gen_ff), .SE(test_se), .CK(
        CLK), .RN(n37), .Q(sync_bus[0]) );
  SDFFRQX1M \MULT_FLOP_SYNC_reg[0]  ( .D(bus_enable), .SI(test_si), .SE(
        test_se), .CK(CLK), .RN(n37), .Q(MULT_FLOP_SYNC[0]) );
  INVX2M U29 ( .A(n36), .Y(n39) );
  INVX4M U30 ( .A(n38), .Y(n37) );
  INVX2M U31 ( .A(RST), .Y(n38) );
  BUFX2M U32 ( .A(pulse_gen_comp), .Y(n36) );
  NOR2X2M U33 ( .A(pulse_Gen_ff), .B(n61), .Y(pulse_gen_comp) );
  AO22X1M U34 ( .A0(Unsync_bus[4]), .A1(n36), .B0(sync_bus[4]), .B1(n39), .Y(
        n51) );
  AO22X1M U35 ( .A0(Unsync_bus[5]), .A1(n36), .B0(sync_bus[5]), .B1(n39), .Y(
        n49) );
  AO22X1M U36 ( .A0(Unsync_bus[1]), .A1(n36), .B0(sync_bus[1]), .B1(n39), .Y(
        n57) );
  AO22X1M U37 ( .A0(Unsync_bus[2]), .A1(n36), .B0(sync_bus[2]), .B1(n39), .Y(
        n55) );
  AO22X1M U38 ( .A0(Unsync_bus[6]), .A1(n36), .B0(sync_bus[6]), .B1(n39), .Y(
        n47) );
  AO22X1M U39 ( .A0(Unsync_bus[0]), .A1(n36), .B0(sync_bus[0]), .B1(n39), .Y(
        n59) );
  AO22X1M U40 ( .A0(Unsync_bus[3]), .A1(n36), .B0(sync_bus[3]), .B1(n39), .Y(
        n53) );
  AO22X1M U41 ( .A0(Unsync_bus[7]), .A1(n36), .B0(sync_bus[7]), .B1(n39), .Y(
        n45) );
endmodule


module BIT_SYNC_00000002_test_1 ( ASYNC, RST, CLK, SYNC, test_si, test_so, 
        test_se );
  input ASYNC, RST, CLK, test_si, test_se;
  output SYNC, test_so;
  wire   \MULT_FLOP_SYNC[0] ;

  SDFFRQX2M \MULT_FLOP_SYNC_reg[0]  ( .D(ASYNC), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\MULT_FLOP_SYNC[0] ) );
  SEDFFX1M SYNC_reg ( .D(\MULT_FLOP_SYNC[0] ), .SI(\MULT_FLOP_SYNC[0] ), .E(
        RST), .SE(test_se), .CK(CLK), .Q(SYNC), .QN(test_so) );
endmodule


module RST_SYNC_00000002_test_0 ( RST, CLK, SYNC_RST, test_si, test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST;
  wire   \MULT_FLOP_SYNC[0] ;

  SDFFRQX2M \MULT_FLOP_SYNC_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\MULT_FLOP_SYNC[0] ) );
  SDFFRQX1M SYNC_RST_reg ( .D(\MULT_FLOP_SYNC[0] ), .SI(\MULT_FLOP_SYNC[0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
endmodule


module RST_SYNC_00000002_0 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \MULT_FLOP_SYNC[0] ;

  SDFFRQX2M \MULT_FLOP_SYNC_reg[0]  ( .D(1'b1), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(\MULT_FLOP_SYNC[0] ) );
  SDFFRQX1M SYNC_RST_reg ( .D(\MULT_FLOP_SYNC[0] ), .SI(1'b0), .SE(1'b0), .CK(
        CLK), .RN(RST), .Q(SYNC_RST) );
endmodule


module ClkDiv_00000004_test_1 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, 
        o_div_clk, test_si, test_so, test_se );
  input [3:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   div_clk, odd_edge_tog, n19, n20, n21, n22, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n11, n12, n13, n14, n15, n16, n17, n18, n23, n43, n44;
  wire   [2:0] count;
  assign test_so = odd_edge_tog;

  SDFFSQX1M odd_edge_tog_reg ( .D(n40), .SI(div_clk), .SE(test_se), .CK(
        i_ref_clk), .SN(i_rst), .Q(odd_edge_tog) );
  SDFFRQX1M \count_reg[0]  ( .D(n42), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(n12), .Q(count[0]) );
  SDFFRQX1M div_clk_reg ( .D(n41), .SI(n18), .SE(test_se), .CK(i_ref_clk), 
        .RN(n12), .Q(div_clk) );
  SDFFRQX1M \count_reg[1]  ( .D(n39), .SI(n14), .SE(test_se), .CK(i_ref_clk), 
        .RN(n12), .Q(count[1]) );
  SDFFRQX1M \count_reg[2]  ( .D(n38), .SI(n17), .SE(test_se), .CK(i_ref_clk), 
        .RN(n12), .Q(count[2]) );
  OAI21X2M U13 ( .A0(i_div_ratio[3]), .A1(n36), .B0(i_clk_en), .Y(n22) );
  NAND2X2M U14 ( .A(n43), .B(n44), .Y(n36) );
  XNOR2X2M U15 ( .A(n35), .B(n17), .Y(n31) );
  OAI21X2M U16 ( .A0(n44), .A1(n43), .B0(n36), .Y(n35) );
  AOI21X2M U17 ( .A0(n14), .A1(n15), .B0(n22), .Y(n21) );
  INVX2M U18 ( .A(n26), .Y(n15) );
  INVX2M U19 ( .A(n22), .Y(n23) );
  INVX2M U20 ( .A(n32), .Y(n16) );
  INVX2M U21 ( .A(n13), .Y(n12) );
  INVX2M U22 ( .A(i_rst), .Y(n13) );
  OAI32X1M U23 ( .A0(n19), .A1(count[2]), .A2(n17), .B0(n20), .B1(n18), .Y(n38) );
  INVX2M U24 ( .A(count[2]), .Y(n18) );
  AOI21BX2M U25 ( .A0(n15), .A1(n17), .B0N(n21), .Y(n20) );
  OAI21X2M U26 ( .A0(n28), .A1(n29), .B0(i_div_ratio[0]), .Y(n24) );
  NOR4X1M U27 ( .A(odd_edge_tog), .B(n32), .C(n33), .D(n34), .Y(n28) );
  NOR4BX1M U28 ( .AN(odd_edge_tog), .B(n16), .C(n30), .D(n31), .Y(n29) );
  CLKXOR2X2M U29 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n34) );
  XNOR2X2M U30 ( .A(n37), .B(count[2]), .Y(n30) );
  NAND2X2M U31 ( .A(i_div_ratio[3]), .B(n36), .Y(n37) );
  NAND3X2M U32 ( .A(n15), .B(count[0]), .C(n23), .Y(n19) );
  NAND2X2M U33 ( .A(n27), .B(n24), .Y(n26) );
  OR4X1M U34 ( .A(n30), .B(n31), .C(n16), .D(i_div_ratio[0]), .Y(n27) );
  INVX2M U35 ( .A(i_div_ratio[1]), .Y(n44) );
  INVX2M U36 ( .A(i_div_ratio[2]), .Y(n43) );
  OAI32X1M U37 ( .A0(n22), .A1(count[0]), .A2(n26), .B0(n23), .B1(n14), .Y(n42) );
  XNOR2X2M U38 ( .A(n44), .B(count[0]), .Y(n32) );
  CLKXOR2X2M U39 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n33) );
  OAI22X1M U40 ( .A0(n21), .A1(n17), .B0(count[1]), .B1(n19), .Y(n39) );
  CLKXOR2X2M U41 ( .A(div_clk), .B(n25), .Y(n41) );
  NOR2X2M U42 ( .A(n15), .B(n22), .Y(n25) );
  CLKXOR2X2M U43 ( .A(odd_edge_tog), .B(n11), .Y(n40) );
  NOR2X2M U44 ( .A(n24), .B(n22), .Y(n11) );
  INVX2M U45 ( .A(count[1]), .Y(n17) );
  INVX2M U46 ( .A(count[0]), .Y(n14) );
  MX2XLM U47 ( .A(i_ref_clk), .B(div_clk), .S0(n23), .Y(o_div_clk) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module System_top ( scan_clk, scan_rst, test_mode, SE, SI, SO, REF_CLK, 
        UART_CLK, RST, RX_IN, TX_OUT );
  input [2:0] SI;
  output [2:0] SO;
  input scan_clk, scan_rst, test_mode, SE, REF_CLK, UART_CLK, RST, RX_IN;
  output TX_OUT;
  wire   RST_M, REF_CLK_M, TX_CLK, UART_TX_CLK_M, SYNC_RST_1, RST_SYNC1_M,
         SYNC_RST_2, RST_SYNC2_M, Rd_VLD, ALU_vld_OUT, BUSY, TX_VLD, Rx_valid,
         RdEn, WrEn, Gate_En, ALU_EN, GATED_CLK, RX_OUT_V, TX_IN_V, TX_OUT_V,
         _1_net_, n1, n2, n5, n6, n11, n12, n13;
  wire   [7:0] RdData;
  wire   [15:0] ALU_OUT;
  wire   [7:0] TX_IN;
  wire   [7:0] RX_out;
  wire   [7:0] Address;
  wire   [7:0] WrData;
  wire   [7:0] ALU_FUNC;
  wire   [7:0] Reg_0;
  wire   [7:0] Reg_1;
  wire   [7:0] Reg_2_top;
  wire   [7:0] Reg_3_top;
  wire   [7:0] RX_OUT_P;
  wire   [7:0] TX_IN_P;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12;

  OR2X2M U3 ( .A(Gate_En), .B(test_mode), .Y(_1_net_) );
  INVX2M U4 ( .A(n2), .Y(n1) );
  INVX2M U5 ( .A(RST_SYNC1_M), .Y(n2) );
  MUX2_4 u_RST_MUX2 ( .IN0(RST), .IN1(scan_rst), .SL(test_mode), .MUX_out(
        RST_M) );
  MUX2_3 u_REF_CLK_MUX2 ( .IN0(REF_CLK), .IN1(scan_clk), .SL(test_mode), 
        .MUX_out(REF_CLK_M) );
  MUX2_2 u_UART_TX_CLK_MUX2 ( .IN0(TX_CLK), .IN1(scan_clk), .SL(test_mode), 
        .MUX_out(UART_TX_CLK_M) );
  MUX2_1 u_RST_SYNC1_MUX2 ( .IN0(SYNC_RST_1), .IN1(scan_rst), .SL(test_mode), 
        .MUX_out(RST_SYNC1_M) );
  MUX2_0 u_RST_SYNC2_MUX2 ( .IN0(SYNC_RST_2), .IN1(scan_rst), .SL(test_mode), 
        .MUX_out(RST_SYNC2_M) );
  SYS_CTRL_test_1 u_SYS_CTRL ( .CLK(REF_CLK_M), .RST(n1), .Rd_D(RdData), 
        .Rd_D_VLD(Rd_VLD), .ALU_OUT(ALU_OUT), .ALU_VLD(ALU_vld_OUT), .BUSY(
        BUSY), .TX_VLD(TX_VLD), .TX_IN(TX_IN), .Rx_valid(Rx_valid), .RX_out(
        RX_out), .RdEn(RdEn), .Addr({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, Address[3:0]}), .WrEn(WrEn), .Gate_En(Gate_En), .Wr_D(WrData), .Func({SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, ALU_FUNC[3:0]}), 
        .ALU_EN(ALU_EN), .test_si(TX_IN_P[7]), .test_so(n5), .test_se(SE) );
  REG_FILE_00000008_00000010_test_1 u_REG_FILE ( .WrData(WrData), .Address(
        Address[3:0]), .WrEn(WrEn), .RdEn(RdEn), .CLK(REF_CLK_M), .RST(n1), 
        .RdData(RdData), .Rd_VLD(Rd_VLD), .Reg_0(Reg_0), .Reg_1(Reg_1), 
        .Reg_2({SYNOPSYS_UNCONNECTED__8, Reg_2_top[6:0]}), .Reg_3({
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, Reg_3_top[3:0]}), 
        .test_si3(SI[0]), .test_si2(SI[1]), .test_si1(n11), .test_so3(n6), 
        .test_so2(SO[1]), .test_so1(SO[2]), .test_se(SE) );
  ALU_TOP_00000008_test_1 u_ALU_TOP ( .A(Reg_0), .B(Reg_1), .ALU_FUNC(
        ALU_FUNC[3:0]), .CLK(GATED_CLK), .ALU_EN(ALU_EN), .ALU_vld_OUT(
        ALU_vld_OUT), .ALU_OUT(ALU_OUT), .test_si(n13), .test_so(n12), 
        .test_se(SE) );
  UART_00000008_00000005_test_1 u_UART ( .RST(RST_SYNC2_M), .TX_CLK(
        UART_TX_CLK_M), .RX_CLK(REF_CLK_M), .RX_IN_S(RX_IN), .RX_OUT_P(
        RX_OUT_P), .RX_OUT_V(RX_OUT_V), .TX_IN_P(TX_IN_P), .TX_IN_V(TX_IN_V), 
        .TX_OUT_S(TX_OUT), .TX_OUT_V(TX_OUT_V), .Prescale(Reg_2_top[6:2]), 
        .parity_enable(Reg_2_top[0]), .parity_type(Reg_2_top[1]), .test_si(n5), 
        .test_so(SO[0]), .test_se(SE) );
  DATA_SYNC_00000002_00000008_test_1 u_SYSCTRL_2_TX_DATA_SYNC ( .Unsync_bus(
        TX_IN), .bus_enable(TX_VLD), .CLK(UART_TX_CLK_M), .RST(RST_SYNC2_M), 
        .sync_bus(TX_IN_P), .enable_pulse(TX_IN_V), .test_si(RX_out[7]), 
        .test_se(SE) );
  DATA_SYNC_00000002_00000008_test_0 u_RX_2_SYSCTRL_DATA_SYNC ( .Unsync_bus(
        RX_OUT_P), .bus_enable(RX_OUT_V), .CLK(REF_CLK_M), .RST(RST_SYNC2_M), 
        .sync_bus(RX_out), .enable_pulse(Rx_valid), .test_si(SYNC_RST_1), 
        .test_se(SE) );
  BIT_SYNC_00000002_test_1 u_BIT_SYNC ( .ASYNC(TX_OUT_V), .RST(RST_SYNC2_M), 
        .CLK(REF_CLK_M), .SYNC(BUSY), .test_si(n12), .test_so(n11), .test_se(
        SE) );
  RST_SYNC_00000002_test_0 u_RST_1_SYNC ( .RST(RST_M), .CLK(REF_CLK_M), 
        .SYNC_RST(SYNC_RST_1), .test_si(n6), .test_se(SE) );
  RST_SYNC_00000002_0 u_RST_2_SYNC ( .RST(RST_M), .CLK(UART_CLK), .SYNC_RST(
        SYNC_RST_2) );
  ClkDiv_00000004_test_1 U0_ClkDiv ( .i_ref_clk(REF_CLK_M), .i_rst(RST_SYNC2_M), .i_clk_en(1'b1), .i_div_ratio(Reg_3_top[3:0]), .o_div_clk(TX_CLK), .test_si(
        SI[2]), .test_so(n13), .test_se(SE) );
  CLK_GATE u_CLK_GATE ( .CLK_EN(_1_net_), .CLK(REF_CLK_M), .GATED_CLK(
        GATED_CLK) );
endmodule

