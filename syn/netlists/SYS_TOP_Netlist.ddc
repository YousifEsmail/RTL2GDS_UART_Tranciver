/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Sat Sep  3 20:17:42 2022
/////////////////////////////////////////////////////////////


module FSM_1_SYS_CTRL ( CLK, RST, Rx_valid, RX_out, RdEn, Addr, WrEn, Gate_En, 
        Wr_D, Func, ALU_EN );
  input [7:0] RX_out;
  output [7:0] Addr;
  output [7:0] Wr_D;
  output [7:0] Func;
  input CLK, RST, Rx_valid;
  output RdEn, WrEn, Gate_En, ALU_EN;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n1, n2, n3, n4, n5, n6, n7, n8, n41, n42, n43;
  wire   [7:0] Addr_reg;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign Func[4] = 1'b0;
  assign Func[5] = 1'b0;
  assign Func[6] = 1'b0;
  assign Func[7] = 1'b0;

  DFFRQX2M \Addr_reg_reg[7]  ( .D(Addr[7]), .CK(CLK), .RN(n2), .Q(Addr_reg[7])
         );
  DFFRQX2M \Addr_reg_reg[6]  ( .D(Addr[6]), .CK(CLK), .RN(n2), .Q(Addr_reg[6])
         );
  DFFRQX2M \Addr_reg_reg[5]  ( .D(Addr[5]), .CK(CLK), .RN(n2), .Q(Addr_reg[5])
         );
  DFFRQX2M \Addr_reg_reg[4]  ( .D(Addr[4]), .CK(CLK), .RN(n2), .Q(Addr_reg[4])
         );
  DFFRQX2M \Addr_reg_reg[3]  ( .D(Addr[3]), .CK(CLK), .RN(n2), .Q(Addr_reg[3])
         );
  DFFRQX2M \Addr_reg_reg[2]  ( .D(Addr[2]), .CK(CLK), .RN(n2), .Q(Addr_reg[2])
         );
  DFFRQX2M \Addr_reg_reg[1]  ( .D(Addr[1]), .CK(CLK), .RN(n2), .Q(Addr_reg[1])
         );
  DFFRQX2M \Addr_reg_reg[0]  ( .D(Addr[0]), .CK(CLK), .RN(n2), .Q(Addr_reg[0])
         );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(n2), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(n2), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(n2), .Q(
        current_state[2]) );
  NOR2X6M U3 ( .A(n31), .B(n38), .Y(Func[1]) );
  OAI2BB2X2M U4 ( .B0(n41), .B1(n30), .A0N(Addr_reg[2]), .A1N(n1), .Y(Addr[2])
         );
  OAI2BB2X2M U5 ( .B0(n41), .B1(n29), .A0N(Addr_reg[3]), .A1N(n1), .Y(Addr[3])
         );
  NOR2X4M U6 ( .A(n38), .B(n5), .Y(ALU_EN) );
  OAI211X2M U7 ( .A0(n41), .A1(n32), .B0(n39), .C0(n36), .Y(Addr[0]) );
  OAI2BB2X2M U8 ( .B0(n41), .B1(n31), .A0N(Addr_reg[1]), .A1N(n1), .Y(Addr[1])
         );
  NOR2X2M U9 ( .A(n8), .B(n5), .Y(WrEn) );
  NAND2X2M U10 ( .A(n36), .B(n18), .Y(Gate_En) );
  INVX4M U11 ( .A(n3), .Y(n2) );
  INVX2M U12 ( .A(RST), .Y(n3) );
  NOR2X2M U13 ( .A(n30), .B(n38), .Y(Func[2]) );
  NOR2X2M U14 ( .A(n29), .B(n38), .Y(Func[3]) );
  INVX2M U15 ( .A(Rx_valid), .Y(n5) );
  NOR2X6M U16 ( .A(n32), .B(n38), .Y(Func[0]) );
  AOI2BB1X2M U17 ( .A0N(n9), .A1N(n5), .B0(ALU_EN), .Y(n36) );
  OAI211X2M U18 ( .A0(n5), .A1(n35), .B0(n18), .C0(n4), .Y(RdEn) );
  INVX2M U19 ( .A(ALU_EN), .Y(n4) );
  NAND2BX2M U20 ( .AN(n22), .B(n13), .Y(n18) );
  INVX2M U21 ( .A(n33), .Y(n8) );
  NAND3BX2M U22 ( .AN(n1), .B(n9), .C(n10), .Y(n33) );
  NOR2X2M U23 ( .A(n8), .B(n32), .Y(Wr_D[0]) );
  NOR2X2M U24 ( .A(n8), .B(n31), .Y(Wr_D[1]) );
  NOR2X2M U25 ( .A(n8), .B(n30), .Y(Wr_D[2]) );
  NOR2X2M U26 ( .A(n8), .B(n29), .Y(Wr_D[3]) );
  NOR2X2M U27 ( .A(n8), .B(n25), .Y(Wr_D[7]) );
  NOR2X2M U28 ( .A(n8), .B(n28), .Y(Wr_D[4]) );
  NOR2X2M U29 ( .A(n8), .B(n27), .Y(Wr_D[5]) );
  NOR2X2M U30 ( .A(n8), .B(n26), .Y(Wr_D[6]) );
  NAND3X2M U31 ( .A(current_state[2]), .B(current_state[0]), .C(
        current_state[1]), .Y(n38) );
  NAND2X2M U32 ( .A(RX_out[2]), .B(Rx_valid), .Y(n30) );
  NAND2X2M U33 ( .A(RX_out[3]), .B(Rx_valid), .Y(n29) );
  NAND2X2M U34 ( .A(Addr_reg[0]), .B(n1), .Y(n39) );
  INVX2M U35 ( .A(n40), .Y(n41) );
  OAI31X1M U36 ( .A0(n43), .A1(current_state[2]), .A2(current_state[0]), .B0(
        n35), .Y(n40) );
  NAND3X2M U37 ( .A(n42), .B(n43), .C(current_state[2]), .Y(n35) );
  INVX2M U38 ( .A(current_state[0]), .Y(n42) );
  INVX2M U39 ( .A(current_state[1]), .Y(n43) );
  NOR4BX2M U40 ( .AN(RX_out[3]), .B(n25), .C(n21), .D(current_state[0]), .Y(
        n13) );
  NAND3X2M U41 ( .A(current_state[0]), .B(n43), .C(current_state[2]), .Y(n10)
         );
  NAND3X2M U42 ( .A(current_state[2]), .B(n42), .C(current_state[1]), .Y(n9)
         );
  NAND2X2M U43 ( .A(RX_out[1]), .B(Rx_valid), .Y(n31) );
  NAND2X2M U44 ( .A(RX_out[0]), .B(Rx_valid), .Y(n32) );
  NAND2X2M U45 ( .A(Rx_valid), .B(RX_out[7]), .Y(n25) );
  NAND4X2M U46 ( .A(RX_out[2]), .B(RX_out[4]), .C(RX_out[6]), .D(n37), .Y(n22)
         );
  NOR3X2M U47 ( .A(n7), .B(RX_out[5]), .C(RX_out[1]), .Y(n37) );
  INVX2M U48 ( .A(RX_out[0]), .Y(n7) );
  BUFX2M U49 ( .A(n34), .Y(n1) );
  NOR3X2M U50 ( .A(n42), .B(current_state[2]), .C(n43), .Y(n34) );
  OR2X2M U51 ( .A(current_state[2]), .B(current_state[1]), .Y(n21) );
  NAND4X2M U52 ( .A(RX_out[5]), .B(RX_out[1]), .C(n19), .D(n13), .Y(n15) );
  NOR2X2M U53 ( .A(RX_out[6]), .B(RX_out[2]), .Y(n19) );
  OAI211X2M U54 ( .A0(n5), .A1(n10), .B0(n16), .C0(n6), .Y(next_state[1]) );
  OAI21X2M U55 ( .A0(n42), .A1(n5), .B0(current_state[1]), .Y(n16) );
  INVX2M U56 ( .A(n17), .Y(n6) );
  OAI31X1M U57 ( .A0(RX_out[0]), .A1(RX_out[4]), .A2(n15), .B0(n18), .Y(n17)
         );
  OAI2BB2X1M U58 ( .B0(n41), .B1(n28), .A0N(Addr_reg[4]), .A1N(n1), .Y(Addr[4]) );
  OAI2BB2X1M U59 ( .B0(n41), .B1(n27), .A0N(Addr_reg[5]), .A1N(n1), .Y(Addr[5]) );
  OAI2BB2X1M U60 ( .B0(n41), .B1(n26), .A0N(Addr_reg[6]), .A1N(n1), .Y(Addr[6]) );
  OAI2BB2X1M U61 ( .B0(n41), .B1(n25), .A0N(Addr_reg[7]), .A1N(n1), .Y(Addr[7]) );
  NAND4X2M U62 ( .A(n9), .B(n10), .C(n11), .D(n12), .Y(next_state[2]) );
  AOI22X1M U63 ( .A0(n13), .A1(n14), .B0(current_state[2]), .B1(n5), .Y(n12)
         );
  NAND3BX2M U64 ( .AN(n15), .B(RX_out[0]), .C(RX_out[4]), .Y(n11) );
  OAI2BB1X2M U65 ( .A0N(n14), .A1N(n13), .B0(n20), .Y(next_state[0]) );
  AOI33X2M U66 ( .A0(n21), .A1(n5), .A2(current_state[0]), .B0(
        current_state[1]), .B1(n42), .B2(Rx_valid), .Y(n20) );
  NAND2X2M U67 ( .A(RX_out[4]), .B(Rx_valid), .Y(n28) );
  NAND2X2M U68 ( .A(RX_out[5]), .B(Rx_valid), .Y(n27) );
  NAND2X2M U69 ( .A(RX_out[6]), .B(Rx_valid), .Y(n26) );
  NAND2X2M U70 ( .A(n22), .B(n23), .Y(n14) );
  NAND4X2M U71 ( .A(RX_out[2]), .B(n7), .C(RX_out[6]), .D(n24), .Y(n23) );
  NOR3X2M U72 ( .A(RX_out[1]), .B(RX_out[5]), .C(RX_out[4]), .Y(n24) );
endmodule


module FSM_2_SYS_CTRL ( CLK, RST, Rd_D, Rd_D_VLD, ALU_OUT, ALU_VLD, BUSY, 
        TX_VLD, TX_IN );
  input [7:0] Rd_D;
  input [15:0] ALU_OUT;
  output [7:0] TX_IN;
  input CLK, RST, Rd_D_VLD, ALU_VLD, BUSY;
  output TX_VLD;
  wire   N75, N76, N77, N78, N79, N80, N81, N82, N88, N89, N90, N91, N92, N93,
         N94, N95, \finish[3] , \finish[2] , \finish[1] , \finish[0] , N86,
         N102, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  INVX2M U3 ( .A(BUSY), .Y(n64) );
  AOI21X2M U4 ( .A0(n64), .A1(n53), .B0(n14), .Y(n15) );
  OAI2BB1X2M U5 ( .A0N(n28), .A1N(n63), .B0(n17), .Y(n18) );
  NAND3BX2M U6 ( .AN(n14), .B(n52), .C(\finish[3] ), .Y(n21) );
  AND2X2M U7 ( .A(\finish[2] ), .B(n15), .Y(\finish[3] ) );
  AND2X2M U8 ( .A(\finish[1] ), .B(n15), .Y(\finish[2] ) );
  AND2X2M U9 ( .A(\finish[0] ), .B(n15), .Y(\finish[1] ) );
  INVX2M U10 ( .A(n52), .Y(n53) );
  OR2X2M U11 ( .A(N86), .B(n14), .Y(\finish[0] ) );
  INVX2M U12 ( .A(ALU_OUT[7]), .Y(n61) );
  INVX2M U13 ( .A(ALU_OUT[1]), .Y(n55) );
  INVX2M U14 ( .A(ALU_OUT[2]), .Y(n56) );
  INVX2M U15 ( .A(ALU_OUT[3]), .Y(n57) );
  INVX2M U16 ( .A(ALU_OUT[4]), .Y(n58) );
  INVX2M U17 ( .A(ALU_OUT[5]), .Y(n59) );
  INVX2M U18 ( .A(ALU_OUT[6]), .Y(n60) );
  INVX2M U19 ( .A(ALU_OUT[0]), .Y(n54) );
  MX2X2M U20 ( .A(ALU_OUT[0]), .B(N88), .S0(n50), .Y(n33) );
  OAI22X1M U21 ( .A0(n53), .A1(n61), .B0(n64), .B1(n54), .Y(N88) );
  OAI31X1M U22 ( .A0(n63), .A1(current_state[2]), .A2(n20), .B0(n18), .Y(
        next_state[1]) );
  NOR2X2M U23 ( .A(BUSY), .B(n21), .Y(n20) );
  NAND2BX2M U24 ( .AN(Rd_D_VLD), .B(ALU_VLD), .Y(n28) );
  OAI2B1X2M U25 ( .A1N(n17), .A0(Rd_D_VLD), .B0(n18), .Y(n16) );
  NOR2X2M U26 ( .A(BUSY), .B(n16), .Y(N86) );
  AOI21X2M U27 ( .A0(n22), .A1(n23), .B0(current_state[2]), .Y(next_state[0])
         );
  NAND2X2M U28 ( .A(BUSY), .B(current_state[1]), .Y(n23) );
  AOI33X2M U29 ( .A0(n21), .A1(n64), .A2(current_state[0]), .B0(n62), .B1(n63), 
        .B2(n51), .Y(n22) );
  BUFX2M U30 ( .A(N102), .Y(n52) );
  NOR2BX2M U31 ( .AN(n16), .B(BUSY), .Y(N102) );
  BUFX2M U32 ( .A(n24), .Y(n51) );
  NOR2BX2M U33 ( .AN(Rd_D_VLD), .B(ALU_VLD), .Y(n24) );
  NAND3X2M U34 ( .A(current_state[0]), .B(n49), .C(current_state[1]), .Y(n14)
         );
  NOR2X2M U35 ( .A(current_state[0]), .B(current_state[2]), .Y(n17) );
  INVX2M U36 ( .A(current_state[1]), .Y(n63) );
  NOR3X2M U37 ( .A(n64), .B(current_state[1]), .C(n19), .Y(next_state[2]) );
  CLKXOR2X2M U38 ( .A(n62), .B(current_state[2]), .Y(n19) );
  INVX2M U39 ( .A(current_state[0]), .Y(n62) );
  MXI3X1M U40 ( .A(n2), .B(n41), .C(n3), .S0(n1), .S1(current_state[1]), .Y(
        TX_IN[0]) );
  INVX2M U41 ( .A(Rd_D[0]), .Y(n41) );
  NAND2X2M U42 ( .A(n33), .B(n49), .Y(n3) );
  MXI3X1M U43 ( .A(n4), .B(n42), .C(n5), .S0(n1), .S1(current_state[1]), .Y(
        TX_IN[1]) );
  INVX2M U44 ( .A(Rd_D[1]), .Y(n42) );
  NAND2X2M U45 ( .A(n34), .B(n49), .Y(n5) );
  MXI3X1M U46 ( .A(n6), .B(n43), .C(n7), .S0(n1), .S1(current_state[1]), .Y(
        TX_IN[2]) );
  INVX2M U47 ( .A(Rd_D[2]), .Y(n43) );
  NAND2X2M U48 ( .A(n35), .B(n49), .Y(n7) );
  MXI3X1M U49 ( .A(n8), .B(n44), .C(n9), .S0(n1), .S1(current_state[1]), .Y(
        TX_IN[3]) );
  INVX2M U50 ( .A(Rd_D[3]), .Y(n44) );
  NAND2X2M U51 ( .A(n36), .B(n49), .Y(n9) );
  MXI3X1M U52 ( .A(n10), .B(n45), .C(n11), .S0(n1), .S1(current_state[1]), .Y(
        TX_IN[4]) );
  INVX2M U53 ( .A(Rd_D[4]), .Y(n45) );
  NAND2X2M U54 ( .A(n37), .B(n49), .Y(n11) );
  MXI3X1M U55 ( .A(n12), .B(n46), .C(n13), .S0(n1), .S1(current_state[1]), .Y(
        TX_IN[5]) );
  INVX2M U56 ( .A(Rd_D[5]), .Y(n46) );
  NAND2X2M U57 ( .A(n38), .B(n49), .Y(n13) );
  MXI3X1M U58 ( .A(n29), .B(n47), .C(n30), .S0(n1), .S1(current_state[1]), .Y(
        TX_IN[6]) );
  INVX2M U59 ( .A(Rd_D[6]), .Y(n47) );
  NAND2X2M U60 ( .A(n39), .B(n49), .Y(n30) );
  MXI3X1M U61 ( .A(n31), .B(n48), .C(n32), .S0(n1), .S1(current_state[1]), .Y(
        TX_IN[7]) );
  INVX2M U62 ( .A(Rd_D[7]), .Y(n48) );
  NAND2X2M U63 ( .A(n40), .B(n49), .Y(n32) );
  CLKXOR2X2M U64 ( .A(n50), .B(current_state[2]), .Y(n1) );
  OAI211X2M U65 ( .A0(n25), .A1(n14), .B0(n18), .C0(n26), .Y(TX_VLD) );
  NOR2X2M U66 ( .A(n52), .B(N86), .Y(n25) );
  AOI22X1M U67 ( .A0(n27), .A1(n63), .B0(n51), .B1(n17), .Y(n26) );
  OAI32X1M U68 ( .A0(n49), .A1(current_state[0]), .A2(BUSY), .B0(
        current_state[2]), .B1(n62), .Y(n27) );
  INVX4M U69 ( .A(current_state[2]), .Y(n49) );
  BUFX2M U70 ( .A(current_state[0]), .Y(n50) );
  NAND2X2M U71 ( .A(N75), .B(n49), .Y(n2) );
  OAI2BB2X1M U72 ( .B0(n54), .B1(n28), .A0N(Rd_D[0]), .A1N(n51), .Y(N75) );
  NAND2X2M U73 ( .A(N76), .B(n49), .Y(n4) );
  OAI2BB2X1M U74 ( .B0(n55), .B1(n28), .A0N(Rd_D[1]), .A1N(n51), .Y(N76) );
  NAND2X2M U75 ( .A(N77), .B(n49), .Y(n6) );
  OAI2BB2X1M U76 ( .B0(n56), .B1(n28), .A0N(Rd_D[2]), .A1N(n51), .Y(N77) );
  NAND2X2M U77 ( .A(N78), .B(n49), .Y(n8) );
  OAI2BB2X1M U78 ( .B0(n57), .B1(n28), .A0N(Rd_D[3]), .A1N(n51), .Y(N78) );
  NAND2X2M U79 ( .A(N79), .B(n49), .Y(n10) );
  OAI2BB2X1M U80 ( .B0(n58), .B1(n28), .A0N(Rd_D[4]), .A1N(n51), .Y(N79) );
  NAND2X2M U81 ( .A(N80), .B(n49), .Y(n12) );
  OAI2BB2X1M U82 ( .B0(n59), .B1(n28), .A0N(Rd_D[5]), .A1N(n51), .Y(N80) );
  NAND2X2M U83 ( .A(N81), .B(n49), .Y(n29) );
  OAI2BB2X1M U84 ( .B0(n60), .B1(n28), .A0N(Rd_D[6]), .A1N(n51), .Y(N81) );
  NAND2X2M U85 ( .A(N82), .B(n49), .Y(n31) );
  OAI2BB2X1M U86 ( .B0(n61), .B1(n28), .A0N(Rd_D[7]), .A1N(n51), .Y(N82) );
  MX2X2M U87 ( .A(ALU_OUT[1]), .B(N89), .S0(n50), .Y(n34) );
  OAI2BB2X1M U88 ( .B0(n64), .B1(n55), .A0N(ALU_OUT[8]), .A1N(n52), .Y(N89) );
  MX2X2M U89 ( .A(ALU_OUT[2]), .B(N90), .S0(n50), .Y(n35) );
  OAI2BB2X1M U90 ( .B0(n64), .B1(n56), .A0N(ALU_OUT[9]), .A1N(n52), .Y(N90) );
  MX2X2M U91 ( .A(ALU_OUT[3]), .B(N91), .S0(n50), .Y(n36) );
  OAI2BB2X1M U92 ( .B0(n64), .B1(n57), .A0N(ALU_OUT[10]), .A1N(n52), .Y(N91)
         );
  MX2X2M U93 ( .A(ALU_OUT[4]), .B(N92), .S0(n50), .Y(n37) );
  OAI2BB2X1M U94 ( .B0(n64), .B1(n58), .A0N(ALU_OUT[11]), .A1N(n52), .Y(N92)
         );
  MX2X2M U95 ( .A(ALU_OUT[5]), .B(N93), .S0(n50), .Y(n38) );
  OAI2BB2X1M U96 ( .B0(n64), .B1(n59), .A0N(ALU_OUT[12]), .A1N(n52), .Y(N93)
         );
  MX2X2M U97 ( .A(ALU_OUT[6]), .B(N94), .S0(n50), .Y(n39) );
  OAI2BB2X1M U98 ( .B0(n64), .B1(n60), .A0N(ALU_OUT[13]), .A1N(n52), .Y(N94)
         );
  MX2X2M U99 ( .A(ALU_OUT[7]), .B(N95), .S0(n50), .Y(n40) );
  OAI2BB2X1M U100 ( .B0(n64), .B1(n61), .A0N(ALU_OUT[14]), .A1N(n52), .Y(N95)
         );
endmodule


module SYS_CTRL ( CLK, RST, Rd_D, Rd_D_VLD, ALU_OUT, ALU_VLD, BUSY, TX_VLD, 
        TX_IN, Rx_valid, RX_out, RdEn, Addr, WrEn, Gate_En, Wr_D, Func, ALU_EN
 );
  input [7:0] Rd_D;
  input [15:0] ALU_OUT;
  output [7:0] TX_IN;
  input [7:0] RX_out;
  output [7:0] Addr;
  output [7:0] Wr_D;
  output [7:0] Func;
  input CLK, RST, Rd_D_VLD, ALU_VLD, BUSY, Rx_valid;
  output TX_VLD, RdEn, WrEn, Gate_En, ALU_EN;

  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;
  assign Func[7] = 1'b0;
  assign Func[6] = 1'b0;
  assign Func[5] = 1'b0;
  assign Func[4] = 1'b0;

  FSM_1_SYS_CTRL u_FSM_1_SYS_CTRL ( .CLK(CLK), .RST(RST), .Rx_valid(Rx_valid), 
        .RX_out(RX_out), .RdEn(RdEn), .Addr(Addr), .WrEn(WrEn), .Gate_En(
        Gate_En), .Wr_D(Wr_D), .Func({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, Func[3:0]}), .ALU_EN(ALU_EN) );
  FSM_2_SYS_CTRL u_FSM_2_SYS_CTRL ( .CLK(CLK), .RST(RST), .Rd_D(Rd_D), 
        .Rd_D_VLD(Rd_D_VLD), .ALU_OUT(ALU_OUT), .ALU_VLD(ALU_VLD), .BUSY(BUSY), 
        .TX_VLD(TX_VLD), .TX_IN(TX_IN) );
endmodule


module REG_FILE_00000008_00000010 ( WrData, Address, WrEn, RdEn, CLK, RST, 
        RdData, Rd_VLD, Reg_0, Reg_1, Reg_2, Reg_3 );
  input [7:0] WrData;
  input [3:0] Address;
  output [7:0] RdData;
  output [7:0] Reg_0;
  output [7:0] Reg_1;
  output [7:0] Reg_2;
  output [7:0] Reg_3;
  input WrEn, RdEn, CLK, RST;
  output Rd_VLD;
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
         \Reg_File[4][2] , \Reg_File[4][1] , \Reg_File[4][0] , N109, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n110, n111, n112, n113, n114, n115, n116, n117,
         n119, n120, n121, n122, n123, n124, n125, n126, n128, n129, n130,
         n131, n132, n133, n134, n135, n137, n138, n139, n140, n141, n142,
         n143, n144, n146, n147, n148, n149, n150, n151, n152, n153, n155,
         n156, n157, n158, n159, n160, n161, n162, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n109, n118, n127,
         n136, n145, n154, n163, n197, n198, n199, n200, n201, n202, n203,
         n204, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346;

  DFFRQX2M \Reg_File_reg[15][7]  ( .D(n332), .CK(CLK), .RN(n136), .Q(
        \Reg_File[15][7] ) );
  DFFRQX2M \Reg_File_reg[15][6]  ( .D(n331), .CK(CLK), .RN(n197), .Q(
        \Reg_File[15][6] ) );
  DFFRQX2M \Reg_File_reg[15][5]  ( .D(n330), .CK(CLK), .RN(n197), .Q(
        \Reg_File[15][5] ) );
  DFFRQX2M \Reg_File_reg[15][4]  ( .D(n329), .CK(CLK), .RN(n197), .Q(
        \Reg_File[15][4] ) );
  DFFRQX2M \Reg_File_reg[15][3]  ( .D(n328), .CK(CLK), .RN(n197), .Q(
        \Reg_File[15][3] ) );
  DFFRQX2M \Reg_File_reg[15][2]  ( .D(n327), .CK(CLK), .RN(n197), .Q(
        \Reg_File[15][2] ) );
  DFFRQX2M \Reg_File_reg[15][1]  ( .D(n326), .CK(CLK), .RN(n197), .Q(
        \Reg_File[15][1] ) );
  DFFRQX2M \Reg_File_reg[15][0]  ( .D(n325), .CK(CLK), .RN(n163), .Q(
        \Reg_File[15][0] ) );
  DFFRQX2M \Reg_File_reg[11][7]  ( .D(n300), .CK(CLK), .RN(n163), .Q(
        \Reg_File[11][7] ) );
  DFFRQX2M \Reg_File_reg[11][6]  ( .D(n299), .CK(CLK), .RN(n163), .Q(
        \Reg_File[11][6] ) );
  DFFRQX2M \Reg_File_reg[11][5]  ( .D(n298), .CK(CLK), .RN(n163), .Q(
        \Reg_File[11][5] ) );
  DFFRQX2M \Reg_File_reg[11][4]  ( .D(n297), .CK(CLK), .RN(n163), .Q(
        \Reg_File[11][4] ) );
  DFFRQX2M \Reg_File_reg[11][3]  ( .D(n296), .CK(CLK), .RN(n163), .Q(
        \Reg_File[11][3] ) );
  DFFRQX2M \Reg_File_reg[11][2]  ( .D(n295), .CK(CLK), .RN(n163), .Q(
        \Reg_File[11][2] ) );
  DFFRQX2M \Reg_File_reg[11][1]  ( .D(n294), .CK(CLK), .RN(n163), .Q(
        \Reg_File[11][1] ) );
  DFFRQX2M \Reg_File_reg[11][0]  ( .D(n293), .CK(CLK), .RN(n154), .Q(
        \Reg_File[11][0] ) );
  DFFRQX2M \Reg_File_reg[5][7]  ( .D(n252), .CK(CLK), .RN(n154), .Q(
        \Reg_File[5][7] ) );
  DFFRQX2M \Reg_File_reg[5][6]  ( .D(n251), .CK(CLK), .RN(n154), .Q(
        \Reg_File[5][6] ) );
  DFFRQX2M \Reg_File_reg[5][5]  ( .D(n250), .CK(CLK), .RN(n154), .Q(
        \Reg_File[5][5] ) );
  DFFRQX2M \Reg_File_reg[5][4]  ( .D(n249), .CK(CLK), .RN(n154), .Q(
        \Reg_File[5][4] ) );
  DFFRQX2M \Reg_File_reg[5][3]  ( .D(n248), .CK(CLK), .RN(n154), .Q(
        \Reg_File[5][3] ) );
  DFFRQX2M \Reg_File_reg[5][2]  ( .D(n247), .CK(CLK), .RN(n154), .Q(
        \Reg_File[5][2] ) );
  DFFRQX2M \Reg_File_reg[5][1]  ( .D(n246), .CK(CLK), .RN(n154), .Q(
        \Reg_File[5][1] ) );
  DFFRQX2M \Reg_File_reg[5][0]  ( .D(n245), .CK(CLK), .RN(n145), .Q(
        \Reg_File[5][0] ) );
  DFFRQX2M \Reg_File_reg[14][7]  ( .D(n324), .CK(CLK), .RN(n163), .Q(
        \Reg_File[14][7] ) );
  DFFRQX2M \Reg_File_reg[14][6]  ( .D(n323), .CK(CLK), .RN(n163), .Q(
        \Reg_File[14][6] ) );
  DFFRQX2M \Reg_File_reg[14][5]  ( .D(n322), .CK(CLK), .RN(n163), .Q(
        \Reg_File[14][5] ) );
  DFFRQX2M \Reg_File_reg[14][4]  ( .D(n321), .CK(CLK), .RN(n163), .Q(
        \Reg_File[14][4] ) );
  DFFRQX2M \Reg_File_reg[14][3]  ( .D(n320), .CK(CLK), .RN(n163), .Q(
        \Reg_File[14][3] ) );
  DFFRQX2M \Reg_File_reg[14][2]  ( .D(n319), .CK(CLK), .RN(n163), .Q(
        \Reg_File[14][2] ) );
  DFFRQX2M \Reg_File_reg[14][1]  ( .D(n318), .CK(CLK), .RN(n163), .Q(
        \Reg_File[14][1] ) );
  DFFRQX2M \Reg_File_reg[14][0]  ( .D(n317), .CK(CLK), .RN(n163), .Q(
        \Reg_File[14][0] ) );
  DFFRQX2M \Reg_File_reg[10][7]  ( .D(n292), .CK(CLK), .RN(n154), .Q(
        \Reg_File[10][7] ) );
  DFFRQX2M \Reg_File_reg[10][6]  ( .D(n291), .CK(CLK), .RN(n154), .Q(
        \Reg_File[10][6] ) );
  DFFRQX2M \Reg_File_reg[10][5]  ( .D(n290), .CK(CLK), .RN(n154), .Q(
        \Reg_File[10][5] ) );
  DFFRQX2M \Reg_File_reg[10][4]  ( .D(n289), .CK(CLK), .RN(n154), .Q(
        \Reg_File[10][4] ) );
  DFFRQX2M \Reg_File_reg[10][3]  ( .D(n288), .CK(CLK), .RN(n154), .Q(
        \Reg_File[10][3] ) );
  DFFRQX2M \Reg_File_reg[10][2]  ( .D(n287), .CK(CLK), .RN(n154), .Q(
        \Reg_File[10][2] ) );
  DFFRQX2M \Reg_File_reg[10][1]  ( .D(n286), .CK(CLK), .RN(n154), .Q(
        \Reg_File[10][1] ) );
  DFFRQX2M \Reg_File_reg[10][0]  ( .D(n285), .CK(CLK), .RN(n154), .Q(
        \Reg_File[10][0] ) );
  DFFRQX2M \Reg_File_reg[4][7]  ( .D(n244), .CK(CLK), .RN(n145), .Q(
        \Reg_File[4][7] ) );
  DFFRQX2M \Reg_File_reg[4][6]  ( .D(n243), .CK(CLK), .RN(n145), .Q(
        \Reg_File[4][6] ) );
  DFFRQX2M \Reg_File_reg[4][5]  ( .D(n242), .CK(CLK), .RN(n145), .Q(
        \Reg_File[4][5] ) );
  DFFRQX2M \Reg_File_reg[4][4]  ( .D(n241), .CK(CLK), .RN(n145), .Q(
        \Reg_File[4][4] ) );
  DFFRQX2M \Reg_File_reg[4][3]  ( .D(n240), .CK(CLK), .RN(n145), .Q(
        \Reg_File[4][3] ) );
  DFFRQX2M \Reg_File_reg[4][2]  ( .D(n239), .CK(CLK), .RN(n145), .Q(
        \Reg_File[4][2] ) );
  DFFRQX2M \Reg_File_reg[4][1]  ( .D(n238), .CK(CLK), .RN(n145), .Q(
        \Reg_File[4][1] ) );
  DFFRQX2M \Reg_File_reg[4][0]  ( .D(n237), .CK(CLK), .RN(n145), .Q(
        \Reg_File[4][0] ) );
  DFFRX1M \Reg_File_reg[12][7]  ( .D(n308), .CK(CLK), .RN(n84), .QN(n9) );
  DFFRX1M \Reg_File_reg[12][6]  ( .D(n307), .CK(CLK), .RN(n84), .QN(n10) );
  DFFRX1M \Reg_File_reg[12][5]  ( .D(n306), .CK(CLK), .RN(n84), .QN(n11) );
  DFFRX1M \Reg_File_reg[12][4]  ( .D(n305), .CK(CLK), .RN(n84), .QN(n12) );
  DFFRX1M \Reg_File_reg[12][3]  ( .D(n304), .CK(CLK), .RN(n84), .QN(n13) );
  DFFRX1M \Reg_File_reg[12][2]  ( .D(n303), .CK(CLK), .RN(n84), .QN(n14) );
  DFFRX1M \Reg_File_reg[12][1]  ( .D(n302), .CK(CLK), .RN(n109), .QN(n15) );
  DFFRX1M \Reg_File_reg[12][0]  ( .D(n301), .CK(CLK), .RN(n109), .QN(n16) );
  DFFRX1M \Reg_File_reg[8][7]  ( .D(n276), .CK(CLK), .RN(n109), .QN(n25) );
  DFFRX1M \Reg_File_reg[8][6]  ( .D(n275), .CK(CLK), .RN(n109), .QN(n26) );
  DFFRX1M \Reg_File_reg[8][5]  ( .D(n274), .CK(CLK), .RN(n109), .QN(n27) );
  DFFRX1M \Reg_File_reg[8][4]  ( .D(n273), .CK(CLK), .RN(n109), .QN(n28) );
  DFFRX1M \Reg_File_reg[8][3]  ( .D(n272), .CK(CLK), .RN(n118), .QN(n29) );
  DFFRX1M \Reg_File_reg[8][2]  ( .D(n271), .CK(CLK), .RN(n109), .QN(n30) );
  DFFRX1M \Reg_File_reg[8][1]  ( .D(n270), .CK(CLK), .RN(n118), .QN(n31) );
  DFFRX1M \Reg_File_reg[8][0]  ( .D(n269), .CK(CLK), .RN(n118), .QN(n32) );
  DFFRX1M \Reg_File_reg[6][7]  ( .D(n260), .CK(CLK), .RN(n118), .QN(n41) );
  DFFRX1M \Reg_File_reg[6][6]  ( .D(n259), .CK(CLK), .RN(n118), .QN(n42) );
  DFFRX1M \Reg_File_reg[6][5]  ( .D(n258), .CK(CLK), .RN(n118), .QN(n43) );
  DFFRX1M \Reg_File_reg[6][4]  ( .D(n257), .CK(CLK), .RN(n118), .QN(n44) );
  DFFRX1M \Reg_File_reg[6][3]  ( .D(n256), .CK(CLK), .RN(n127), .QN(n45) );
  DFFRX1M \Reg_File_reg[6][2]  ( .D(n255), .CK(CLK), .RN(n127), .QN(n46) );
  DFFRX1M \Reg_File_reg[6][1]  ( .D(n254), .CK(CLK), .RN(n127), .QN(n47) );
  DFFRX1M \Reg_File_reg[6][0]  ( .D(n253), .CK(CLK), .RN(n127), .QN(n48) );
  DFFRX1M \Reg_File_reg[2][7]  ( .D(n228), .CK(CLK), .RN(n127), .Q(Reg_2[7]), 
        .QN(n57) );
  DFFRX1M \Reg_File_reg[2][1]  ( .D(n222), .CK(CLK), .RN(n127), .Q(Reg_2[1]), 
        .QN(n63) );
  DFFRX1M \Reg_File_reg[13][7]  ( .D(n316), .CK(CLK), .RN(n84), .QN(n1) );
  DFFRX1M \Reg_File_reg[13][6]  ( .D(n315), .CK(CLK), .RN(n84), .QN(n2) );
  DFFRX1M \Reg_File_reg[13][5]  ( .D(n314), .CK(CLK), .RN(n84), .QN(n3) );
  DFFRX1M \Reg_File_reg[13][4]  ( .D(n313), .CK(CLK), .RN(n84), .QN(n4) );
  DFFRX1M \Reg_File_reg[13][3]  ( .D(n312), .CK(CLK), .RN(n84), .QN(n5) );
  DFFRX1M \Reg_File_reg[13][2]  ( .D(n311), .CK(CLK), .RN(n84), .QN(n6) );
  DFFRX1M \Reg_File_reg[13][1]  ( .D(n310), .CK(CLK), .RN(n84), .QN(n7) );
  DFFRX1M \Reg_File_reg[13][0]  ( .D(n309), .CK(CLK), .RN(n84), .QN(n8) );
  DFFRX1M \Reg_File_reg[9][7]  ( .D(n284), .CK(CLK), .RN(n109), .QN(n17) );
  DFFRX1M \Reg_File_reg[9][6]  ( .D(n283), .CK(CLK), .RN(n109), .QN(n18) );
  DFFRX1M \Reg_File_reg[9][5]  ( .D(n282), .CK(CLK), .RN(n109), .QN(n19) );
  DFFRX1M \Reg_File_reg[9][4]  ( .D(n281), .CK(CLK), .RN(n109), .QN(n20) );
  DFFRX1M \Reg_File_reg[9][3]  ( .D(n280), .CK(CLK), .RN(n109), .QN(n21) );
  DFFRX1M \Reg_File_reg[9][2]  ( .D(n279), .CK(CLK), .RN(n109), .QN(n22) );
  DFFRX1M \Reg_File_reg[9][1]  ( .D(n278), .CK(CLK), .RN(n109), .QN(n23) );
  DFFRX1M \Reg_File_reg[9][0]  ( .D(n277), .CK(CLK), .RN(n109), .QN(n24) );
  DFFRX1M \Reg_File_reg[7][7]  ( .D(n268), .CK(CLK), .RN(n118), .QN(n33) );
  DFFRX1M \Reg_File_reg[7][6]  ( .D(n267), .CK(CLK), .RN(n118), .QN(n34) );
  DFFRX1M \Reg_File_reg[7][5]  ( .D(n266), .CK(CLK), .RN(n118), .QN(n35) );
  DFFRX1M \Reg_File_reg[7][4]  ( .D(n265), .CK(CLK), .RN(n118), .QN(n36) );
  DFFRX1M \Reg_File_reg[7][3]  ( .D(n264), .CK(CLK), .RN(n118), .QN(n37) );
  DFFRX1M \Reg_File_reg[7][2]  ( .D(n263), .CK(CLK), .RN(n118), .QN(n38) );
  DFFRX1M \Reg_File_reg[7][1]  ( .D(n262), .CK(CLK), .RN(n118), .QN(n39) );
  DFFRX1M \Reg_File_reg[7][0]  ( .D(n261), .CK(CLK), .RN(n118), .QN(n40) );
  DFFRX1M \Reg_File_reg[3][7]  ( .D(n236), .CK(CLK), .RN(n127), .Q(Reg_3[7]), 
        .QN(n49) );
  DFFRX1M \Reg_File_reg[3][6]  ( .D(n235), .CK(CLK), .RN(n127), .Q(Reg_3[6]), 
        .QN(n50) );
  DFFRX1M \Reg_File_reg[3][5]  ( .D(n234), .CK(CLK), .RN(n127), .Q(Reg_3[5]), 
        .QN(n51) );
  DFFRX1M \Reg_File_reg[3][4]  ( .D(n233), .CK(CLK), .RN(n127), .Q(Reg_3[4]), 
        .QN(n52) );
  DFFSX1M \Reg_File_reg[3][3]  ( .D(n232), .CK(CLK), .SN(n136), .Q(Reg_3[3]), 
        .QN(n53) );
  DFFRX1M \Reg_File_reg[3][0]  ( .D(n229), .CK(CLK), .RN(n127), .Q(Reg_3[0]), 
        .QN(n56) );
  DFFRX1M \Reg_File_reg[3][1]  ( .D(n230), .CK(CLK), .RN(n127), .Q(Reg_3[1]), 
        .QN(n55) );
  DFFRQX2M Rd_VLD_reg ( .D(N109), .CK(CLK), .RN(n136), .Q(Rd_VLD) );
  DFFRX1M \Reg_File_reg[3][2]  ( .D(n231), .CK(CLK), .RN(n127), .Q(Reg_3[2]), 
        .QN(n54) );
  DFFSX1M \Reg_File_reg[2][0]  ( .D(n221), .CK(CLK), .SN(n136), .Q(Reg_2[0]), 
        .QN(n64) );
  DFFSX1M \Reg_File_reg[2][4]  ( .D(n225), .CK(CLK), .SN(n136), .Q(Reg_2[4]), 
        .QN(n60) );
  DFFSX1M \Reg_File_reg[2][2]  ( .D(n223), .CK(CLK), .SN(n136), .Q(Reg_2[2]), 
        .QN(n62) );
  DFFSX1M \Reg_File_reg[2][3]  ( .D(n224), .CK(CLK), .SN(n136), .Q(Reg_2[3]), 
        .QN(n61) );
  DFFRX1M \Reg_File_reg[2][5]  ( .D(n226), .CK(CLK), .RN(n127), .Q(Reg_2[5]), 
        .QN(n59) );
  EDFFX1M \RdData_reg[6]  ( .D(n65), .E(n73), .CK(CLK), .Q(RdData[6]) );
  EDFFX1M \RdData_reg[5]  ( .D(n72), .E(n73), .CK(CLK), .Q(RdData[5]) );
  EDFFX1M \RdData_reg[4]  ( .D(n71), .E(n73), .CK(CLK), .Q(RdData[4]) );
  EDFFX1M \RdData_reg[3]  ( .D(n70), .E(n73), .CK(CLK), .Q(RdData[3]) );
  EDFFX1M \RdData_reg[2]  ( .D(n69), .E(n73), .CK(CLK), .Q(RdData[2]) );
  EDFFX1M \RdData_reg[1]  ( .D(n68), .E(n73), .CK(CLK), .Q(RdData[1]) );
  EDFFX1M \RdData_reg[0]  ( .D(n67), .E(n73), .CK(CLK), .Q(RdData[0]) );
  EDFFX1M \RdData_reg[7]  ( .D(n66), .E(n73), .CK(CLK), .Q(RdData[7]) );
  DFFRQX2M \Reg_File_reg[0][7]  ( .D(n212), .CK(CLK), .RN(n136), .Q(Reg_0[7])
         );
  DFFRQX4M \Reg_File_reg[0][1]  ( .D(n206), .CK(CLK), .RN(n136), .Q(Reg_0[1])
         );
  DFFRQX4M \Reg_File_reg[0][4]  ( .D(n209), .CK(CLK), .RN(n136), .Q(Reg_0[4])
         );
  DFFRQX4M \Reg_File_reg[0][6]  ( .D(n211), .CK(CLK), .RN(n136), .Q(Reg_0[6])
         );
  DFFRQX4M \Reg_File_reg[0][3]  ( .D(n208), .CK(CLK), .RN(n136), .Q(Reg_0[3])
         );
  DFFRQX4M \Reg_File_reg[0][2]  ( .D(n207), .CK(CLK), .RN(n136), .Q(Reg_0[2])
         );
  DFFRQX4M \Reg_File_reg[0][5]  ( .D(n210), .CK(CLK), .RN(n136), .Q(Reg_0[5])
         );
  DFFRQX4M \Reg_File_reg[0][0]  ( .D(n205), .CK(CLK), .RN(n136), .Q(Reg_0[0])
         );
  DFFRX1M \Reg_File_reg[2][6]  ( .D(n227), .CK(CLK), .RN(n127), .Q(Reg_2[6]), 
        .QN(n58) );
  DFFRQX4M \Reg_File_reg[1][6]  ( .D(n219), .CK(CLK), .RN(n145), .Q(Reg_1[6])
         );
  DFFRHQX8M \Reg_File_reg[1][5]  ( .D(n218), .CK(CLK), .RN(n145), .Q(Reg_1[5])
         );
  DFFRHQX8M \Reg_File_reg[1][4]  ( .D(n217), .CK(CLK), .RN(n145), .Q(Reg_1[4])
         );
  DFFRHQX4M \Reg_File_reg[1][3]  ( .D(n216), .CK(CLK), .RN(n145), .Q(Reg_1[3])
         );
  DFFRHQX4M \Reg_File_reg[1][0]  ( .D(n213), .CK(CLK), .RN(n136), .Q(Reg_1[0])
         );
  DFFRQX4M \Reg_File_reg[1][2]  ( .D(n215), .CK(CLK), .RN(n145), .Q(Reg_1[2])
         );
  DFFRQX4M \Reg_File_reg[1][1]  ( .D(n214), .CK(CLK), .RN(n145), .Q(Reg_1[1])
         );
  DFFRQX4M \Reg_File_reg[1][7]  ( .D(n220), .CK(CLK), .RN(n145), .Q(Reg_1[7])
         );
  NAND4X2M U3 ( .A(n110), .B(n111), .C(n112), .D(n113), .Y(n65) );
  NAND4X2M U4 ( .A(n85), .B(n86), .C(n87), .D(n88), .Y(n66) );
  NAND4X2M U5 ( .A(n164), .B(n165), .C(n166), .D(n167), .Y(n67) );
  NAND4X2M U6 ( .A(n155), .B(n156), .C(n157), .D(n158), .Y(n68) );
  NAND4X2M U7 ( .A(n146), .B(n147), .C(n148), .D(n149), .Y(n69) );
  NAND4X2M U8 ( .A(n137), .B(n138), .C(n139), .D(n140), .Y(n70) );
  NAND4X2M U9 ( .A(n128), .B(n129), .C(n130), .D(n131), .Y(n71) );
  NAND4X2M U10 ( .A(n119), .B(n120), .C(n121), .D(n122), .Y(n72) );
  AND2X2M U11 ( .A(N109), .B(n84), .Y(n73) );
  BUFX2M U12 ( .A(n173), .Y(n75) );
  NOR2BX2M U13 ( .AN(Address[2]), .B(Address[1]), .Y(n182) );
  NOR2BX2M U14 ( .AN(Address[3]), .B(Address[0]), .Y(n188) );
  NOR2BX2M U15 ( .AN(Address[3]), .B(n337), .Y(n190) );
  NOR2BX2M U16 ( .AN(Address[2]), .B(n339), .Y(n185) );
  NOR2X2M U17 ( .A(Address[2]), .B(Address[1]), .Y(n175) );
  NOR2X2M U18 ( .A(Address[3]), .B(Address[0]), .Y(n174) );
  NOR2X2M U19 ( .A(n337), .B(Address[3]), .Y(n177) );
  NOR2X2M U20 ( .A(n339), .B(Address[2]), .Y(n179) );
  OAI2BB2XLM U21 ( .B0(n338), .B1(n82), .A0N(n82), .A1N(Reg_1[0]), .Y(n213) );
  OAI2BB2XLM U22 ( .B0(n340), .B1(n82), .A0N(n82), .A1N(Reg_1[1]), .Y(n214) );
  OAI2BB2XLM U23 ( .B0(n341), .B1(n82), .A0N(n82), .A1N(Reg_1[2]), .Y(n215) );
  OAI2BB2XLM U24 ( .B0(n342), .B1(n82), .A0N(n82), .A1N(Reg_1[3]), .Y(n216) );
  OAI2BB2XLM U25 ( .B0(n343), .B1(n82), .A0N(n82), .A1N(Reg_1[4]), .Y(n217) );
  OAI2BB2XLM U26 ( .B0(n344), .B1(n82), .A0N(n82), .A1N(Reg_1[5]), .Y(n218) );
  OAI2BB2XLM U27 ( .B0(n345), .B1(n82), .A0N(n82), .A1N(Reg_1[6]), .Y(n219) );
  OAI2BB2XLM U28 ( .B0(n346), .B1(n82), .A0N(n82), .A1N(Reg_1[7]), .Y(n220) );
  OAI2BB2XLM U29 ( .B0(n83), .B1(n345), .A0N(n83), .A1N(Reg_0[6]), .Y(n211) );
  OAI2BB2XLM U30 ( .B0(n83), .B1(n346), .A0N(n83), .A1N(Reg_0[7]), .Y(n212) );
  INVX2M U31 ( .A(n178), .Y(n336) );
  INVX2M U32 ( .A(n180), .Y(n335) );
  INVX2M U33 ( .A(n184), .Y(n334) );
  INVX2M U34 ( .A(n186), .Y(n333) );
  INVX2M U35 ( .A(n187), .Y(n204) );
  INVX2M U36 ( .A(n189), .Y(n203) );
  INVX2M U37 ( .A(n193), .Y(n202) );
  INVX2M U38 ( .A(n194), .Y(n201) );
  BUFX4M U39 ( .A(n176), .Y(n82) );
  NAND2X2M U40 ( .A(n75), .B(n104), .Y(n176) );
  BUFX4M U41 ( .A(n192), .Y(n78) );
  NAND2X2M U42 ( .A(n75), .B(n94), .Y(n192) );
  BUFX4M U43 ( .A(n195), .Y(n77) );
  NAND2X2M U44 ( .A(n75), .B(n90), .Y(n195) );
  BUFX4M U45 ( .A(n196), .Y(n76) );
  NAND2X2M U46 ( .A(n75), .B(n89), .Y(n196) );
  BUFX2M U47 ( .A(n173), .Y(n74) );
  NAND2BX2M U48 ( .AN(n107), .B(n74), .Y(n178) );
  NAND2BX2M U49 ( .AN(n108), .B(n74), .Y(n180) );
  NAND2BX2M U50 ( .AN(n102), .B(n74), .Y(n184) );
  NAND2BX2M U51 ( .AN(n103), .B(n74), .Y(n186) );
  NAND2BX2M U52 ( .AN(n97), .B(n74), .Y(n187) );
  NAND2BX2M U53 ( .AN(n98), .B(n74), .Y(n189) );
  NAND2BX2M U54 ( .AN(n92), .B(n74), .Y(n193) );
  NAND2BX2M U55 ( .AN(n93), .B(n74), .Y(n194) );
  BUFX4M U56 ( .A(n183), .Y(n80) );
  NAND2X2M U57 ( .A(n75), .B(n99), .Y(n183) );
  BUFX4M U58 ( .A(n181), .Y(n81) );
  NAND2X2M U59 ( .A(n75), .B(n100), .Y(n181) );
  BUFX4M U60 ( .A(n191), .Y(n79) );
  NAND2X2M U61 ( .A(n75), .B(n95), .Y(n191) );
  BUFX4M U62 ( .A(n172), .Y(n83) );
  NAND2X2M U63 ( .A(n75), .B(n105), .Y(n172) );
  BUFX4M U64 ( .A(n198), .Y(n136) );
  BUFX4M U65 ( .A(n198), .Y(n127) );
  BUFX4M U66 ( .A(n198), .Y(n118) );
  BUFX4M U67 ( .A(n198), .Y(n109) );
  BUFX4M U68 ( .A(n198), .Y(n145) );
  BUFX4M U69 ( .A(n198), .Y(n154) );
  BUFX4M U70 ( .A(n198), .Y(n163) );
  BUFX2M U71 ( .A(n198), .Y(n197) );
  NAND2X2M U72 ( .A(n174), .B(n179), .Y(n107) );
  NAND2X2M U73 ( .A(n182), .B(n188), .Y(n92) );
  NAND2X2M U74 ( .A(n175), .B(n188), .Y(n97) );
  NAND2X2M U75 ( .A(n177), .B(n179), .Y(n108) );
  NAND2X2M U76 ( .A(n174), .B(n185), .Y(n102) );
  NAND2X2M U77 ( .A(n182), .B(n190), .Y(n93) );
  NAND2X2M U78 ( .A(n175), .B(n190), .Y(n98) );
  NAND2X2M U79 ( .A(n177), .B(n185), .Y(n103) );
  NOR2BX2M U80 ( .AN(WrEn), .B(RdEn), .Y(n173) );
  AND2X2M U81 ( .A(n174), .B(n175), .Y(n105) );
  AND2X2M U82 ( .A(n179), .B(n188), .Y(n95) );
  AND2X2M U83 ( .A(n174), .B(n182), .Y(n100) );
  AND2X2M U84 ( .A(n177), .B(n175), .Y(n104) );
  AND2X2M U85 ( .A(n188), .B(n185), .Y(n90) );
  AND2X2M U86 ( .A(n177), .B(n182), .Y(n99) );
  AND2X2M U87 ( .A(n179), .B(n190), .Y(n94) );
  AND2X2M U88 ( .A(n185), .B(n190), .Y(n89) );
  NOR2BX2M U89 ( .AN(RdEn), .B(WrEn), .Y(N109) );
  BUFX4M U90 ( .A(n199), .Y(n84) );
  BUFX2M U91 ( .A(n200), .Y(n199) );
  BUFX2M U92 ( .A(n200), .Y(n198) );
  INVX2M U93 ( .A(Address[0]), .Y(n337) );
  INVX2M U94 ( .A(Address[1]), .Y(n339) );
  INVX4M U95 ( .A(WrData[0]), .Y(n338) );
  INVX4M U96 ( .A(WrData[1]), .Y(n340) );
  INVX4M U97 ( .A(WrData[2]), .Y(n341) );
  INVX4M U98 ( .A(WrData[3]), .Y(n342) );
  INVX4M U99 ( .A(WrData[7]), .Y(n346) );
  INVX4M U100 ( .A(WrData[4]), .Y(n343) );
  INVX4M U101 ( .A(WrData[5]), .Y(n344) );
  INVX4M U102 ( .A(WrData[6]), .Y(n345) );
  BUFX2M U103 ( .A(RST), .Y(n200) );
  AOI221XLM U104 ( .A0(Reg_1[0]), .A1(n104), .B0(Reg_0[0]), .B1(n105), .C0(
        n171), .Y(n164) );
  OAI22X1M U105 ( .A0(n107), .A1(n64), .B0(n108), .B1(n56), .Y(n171) );
  AOI221XLM U106 ( .A0(Reg_1[1]), .A1(n104), .B0(Reg_0[1]), .B1(n105), .C0(
        n162), .Y(n155) );
  OAI22X1M U107 ( .A0(n107), .A1(n63), .B0(n108), .B1(n55), .Y(n162) );
  AOI221XLM U108 ( .A0(Reg_1[2]), .A1(n104), .B0(Reg_0[2]), .B1(n105), .C0(
        n153), .Y(n146) );
  OAI22X1M U109 ( .A0(n107), .A1(n62), .B0(n108), .B1(n54), .Y(n153) );
  AOI221XLM U110 ( .A0(Reg_1[3]), .A1(n104), .B0(Reg_0[3]), .B1(n105), .C0(
        n144), .Y(n137) );
  OAI22X1M U111 ( .A0(n107), .A1(n61), .B0(n108), .B1(n53), .Y(n144) );
  AOI221XLM U112 ( .A0(Reg_1[4]), .A1(n104), .B0(Reg_0[4]), .B1(n105), .C0(
        n135), .Y(n128) );
  OAI22X1M U113 ( .A0(n107), .A1(n60), .B0(n108), .B1(n52), .Y(n135) );
  AOI221XLM U114 ( .A0(Reg_1[5]), .A1(n104), .B0(Reg_0[5]), .B1(n105), .C0(
        n126), .Y(n119) );
  OAI22X1M U115 ( .A0(n107), .A1(n59), .B0(n108), .B1(n51), .Y(n126) );
  AOI221XLM U116 ( .A0(Reg_1[6]), .A1(n104), .B0(Reg_0[6]), .B1(n105), .C0(
        n117), .Y(n110) );
  OAI22X1M U117 ( .A0(n107), .A1(n58), .B0(n108), .B1(n50), .Y(n117) );
  AOI221XLM U118 ( .A0(Reg_1[7]), .A1(n104), .B0(Reg_0[7]), .B1(n105), .C0(
        n106), .Y(n85) );
  OAI22X1M U119 ( .A0(n107), .A1(n57), .B0(n108), .B1(n49), .Y(n106) );
  AOI221XLM U120 ( .A0(\Reg_File[15][0] ), .A1(n89), .B0(\Reg_File[14][0] ), 
        .B1(n90), .C0(n168), .Y(n167) );
  OAI22X1M U121 ( .A0(n92), .A1(n16), .B0(n93), .B1(n8), .Y(n168) );
  AOI221XLM U122 ( .A0(\Reg_File[15][1] ), .A1(n89), .B0(\Reg_File[14][1] ), 
        .B1(n90), .C0(n159), .Y(n158) );
  OAI22X1M U123 ( .A0(n92), .A1(n15), .B0(n93), .B1(n7), .Y(n159) );
  AOI221XLM U124 ( .A0(\Reg_File[15][2] ), .A1(n89), .B0(\Reg_File[14][2] ), 
        .B1(n90), .C0(n150), .Y(n149) );
  OAI22X1M U125 ( .A0(n92), .A1(n14), .B0(n93), .B1(n6), .Y(n150) );
  AOI221XLM U126 ( .A0(\Reg_File[15][3] ), .A1(n89), .B0(\Reg_File[14][3] ), 
        .B1(n90), .C0(n141), .Y(n140) );
  OAI22X1M U127 ( .A0(n92), .A1(n13), .B0(n93), .B1(n5), .Y(n141) );
  AOI221XLM U128 ( .A0(\Reg_File[15][4] ), .A1(n89), .B0(\Reg_File[14][4] ), 
        .B1(n90), .C0(n132), .Y(n131) );
  OAI22X1M U129 ( .A0(n92), .A1(n12), .B0(n93), .B1(n4), .Y(n132) );
  AOI221XLM U130 ( .A0(\Reg_File[15][5] ), .A1(n89), .B0(\Reg_File[14][5] ), 
        .B1(n90), .C0(n123), .Y(n122) );
  OAI22X1M U131 ( .A0(n92), .A1(n11), .B0(n93), .B1(n3), .Y(n123) );
  AOI221XLM U132 ( .A0(\Reg_File[15][6] ), .A1(n89), .B0(\Reg_File[14][6] ), 
        .B1(n90), .C0(n114), .Y(n113) );
  OAI22X1M U133 ( .A0(n92), .A1(n10), .B0(n93), .B1(n2), .Y(n114) );
  AOI221XLM U134 ( .A0(\Reg_File[15][7] ), .A1(n89), .B0(\Reg_File[14][7] ), 
        .B1(n90), .C0(n91), .Y(n88) );
  OAI22X1M U135 ( .A0(n92), .A1(n9), .B0(n93), .B1(n1), .Y(n91) );
  OAI22X1M U136 ( .A0(n97), .A1(n32), .B0(n98), .B1(n24), .Y(n169) );
  OAI22X1M U137 ( .A0(n97), .A1(n31), .B0(n98), .B1(n23), .Y(n160) );
  OAI22X1M U138 ( .A0(n97), .A1(n30), .B0(n98), .B1(n22), .Y(n151) );
  OAI22X1M U139 ( .A0(n97), .A1(n29), .B0(n98), .B1(n21), .Y(n142) );
  OAI22X1M U140 ( .A0(n97), .A1(n28), .B0(n98), .B1(n20), .Y(n133) );
  OAI22X1M U141 ( .A0(n97), .A1(n27), .B0(n98), .B1(n19), .Y(n124) );
  OAI22X1M U142 ( .A0(n97), .A1(n26), .B0(n98), .B1(n18), .Y(n115) );
  OAI22X1M U143 ( .A0(n97), .A1(n25), .B0(n98), .B1(n17), .Y(n96) );
  OAI22X1M U144 ( .A0(n102), .A1(n48), .B0(n103), .B1(n40), .Y(n170) );
  OAI22X1M U145 ( .A0(n102), .A1(n47), .B0(n103), .B1(n39), .Y(n161) );
  OAI22X1M U146 ( .A0(n102), .A1(n46), .B0(n103), .B1(n38), .Y(n152) );
  OAI22X1M U147 ( .A0(n102), .A1(n45), .B0(n103), .B1(n37), .Y(n143) );
  OAI22X1M U148 ( .A0(n102), .A1(n44), .B0(n103), .B1(n36), .Y(n134) );
  OAI22X1M U149 ( .A0(n102), .A1(n43), .B0(n103), .B1(n35), .Y(n125) );
  OAI22X1M U150 ( .A0(n102), .A1(n42), .B0(n103), .B1(n34), .Y(n116) );
  OAI22X1M U151 ( .A0(n102), .A1(n41), .B0(n103), .B1(n33), .Y(n101) );
  OAI22X1M U152 ( .A0(n338), .A1(n178), .B0(n336), .B1(n64), .Y(n221) );
  OAI22X1M U153 ( .A0(n341), .A1(n178), .B0(n336), .B1(n62), .Y(n223) );
  OAI22X1M U154 ( .A0(n342), .A1(n178), .B0(n336), .B1(n61), .Y(n224) );
  OAI22X1M U155 ( .A0(n343), .A1(n178), .B0(n336), .B1(n60), .Y(n225) );
  OAI22X1M U156 ( .A0(n342), .A1(n180), .B0(n335), .B1(n53), .Y(n232) );
  OAI22X1M U157 ( .A0(n340), .A1(n178), .B0(n336), .B1(n63), .Y(n222) );
  OAI22X1M U158 ( .A0(n344), .A1(n178), .B0(n336), .B1(n59), .Y(n226) );
  OAI22X1M U159 ( .A0(n345), .A1(n178), .B0(n336), .B1(n58), .Y(n227) );
  OAI22X1M U160 ( .A0(n346), .A1(n178), .B0(n336), .B1(n57), .Y(n228) );
  OAI22X1M U161 ( .A0(n338), .A1(n180), .B0(n335), .B1(n56), .Y(n229) );
  OAI22X1M U162 ( .A0(n340), .A1(n180), .B0(n335), .B1(n55), .Y(n230) );
  OAI22X1M U163 ( .A0(n341), .A1(n180), .B0(n335), .B1(n54), .Y(n231) );
  OAI22X1M U164 ( .A0(n343), .A1(n180), .B0(n335), .B1(n52), .Y(n233) );
  OAI22X1M U165 ( .A0(n344), .A1(n180), .B0(n335), .B1(n51), .Y(n234) );
  OAI22X1M U166 ( .A0(n345), .A1(n180), .B0(n335), .B1(n50), .Y(n235) );
  OAI22X1M U167 ( .A0(n346), .A1(n180), .B0(n335), .B1(n49), .Y(n236) );
  OAI22X1M U168 ( .A0(n338), .A1(n184), .B0(n334), .B1(n48), .Y(n253) );
  OAI22X1M U169 ( .A0(n340), .A1(n184), .B0(n334), .B1(n47), .Y(n254) );
  OAI22X1M U170 ( .A0(n341), .A1(n184), .B0(n334), .B1(n46), .Y(n255) );
  OAI22X1M U171 ( .A0(n342), .A1(n184), .B0(n334), .B1(n45), .Y(n256) );
  OAI22X1M U172 ( .A0(n343), .A1(n184), .B0(n334), .B1(n44), .Y(n257) );
  OAI22X1M U173 ( .A0(n344), .A1(n184), .B0(n334), .B1(n43), .Y(n258) );
  OAI22X1M U174 ( .A0(n345), .A1(n184), .B0(n334), .B1(n42), .Y(n259) );
  OAI22X1M U175 ( .A0(n346), .A1(n184), .B0(n334), .B1(n41), .Y(n260) );
  OAI22X1M U176 ( .A0(n338), .A1(n186), .B0(n333), .B1(n40), .Y(n261) );
  OAI22X1M U177 ( .A0(n340), .A1(n186), .B0(n333), .B1(n39), .Y(n262) );
  OAI22X1M U178 ( .A0(n341), .A1(n186), .B0(n333), .B1(n38), .Y(n263) );
  OAI22X1M U179 ( .A0(n342), .A1(n186), .B0(n333), .B1(n37), .Y(n264) );
  OAI22X1M U180 ( .A0(n343), .A1(n186), .B0(n333), .B1(n36), .Y(n265) );
  OAI22X1M U181 ( .A0(n344), .A1(n186), .B0(n333), .B1(n35), .Y(n266) );
  OAI22X1M U182 ( .A0(n345), .A1(n186), .B0(n333), .B1(n34), .Y(n267) );
  OAI22X1M U183 ( .A0(n346), .A1(n186), .B0(n333), .B1(n33), .Y(n268) );
  OAI22X1M U184 ( .A0(n338), .A1(n187), .B0(n204), .B1(n32), .Y(n269) );
  OAI22X1M U185 ( .A0(n340), .A1(n187), .B0(n204), .B1(n31), .Y(n270) );
  OAI22X1M U186 ( .A0(n341), .A1(n187), .B0(n204), .B1(n30), .Y(n271) );
  OAI22X1M U187 ( .A0(n342), .A1(n187), .B0(n204), .B1(n29), .Y(n272) );
  OAI22X1M U188 ( .A0(n343), .A1(n187), .B0(n204), .B1(n28), .Y(n273) );
  OAI22X1M U189 ( .A0(n344), .A1(n187), .B0(n204), .B1(n27), .Y(n274) );
  OAI22X1M U190 ( .A0(n345), .A1(n187), .B0(n204), .B1(n26), .Y(n275) );
  OAI22X1M U191 ( .A0(n346), .A1(n187), .B0(n204), .B1(n25), .Y(n276) );
  OAI22X1M U192 ( .A0(n338), .A1(n189), .B0(n203), .B1(n24), .Y(n277) );
  OAI22X1M U193 ( .A0(n340), .A1(n189), .B0(n203), .B1(n23), .Y(n278) );
  OAI22X1M U194 ( .A0(n341), .A1(n189), .B0(n203), .B1(n22), .Y(n279) );
  OAI22X1M U195 ( .A0(n342), .A1(n189), .B0(n203), .B1(n21), .Y(n280) );
  OAI22X1M U196 ( .A0(n343), .A1(n189), .B0(n203), .B1(n20), .Y(n281) );
  OAI22X1M U197 ( .A0(n344), .A1(n189), .B0(n203), .B1(n19), .Y(n282) );
  OAI22X1M U198 ( .A0(n345), .A1(n189), .B0(n203), .B1(n18), .Y(n283) );
  OAI22X1M U199 ( .A0(n346), .A1(n189), .B0(n203), .B1(n17), .Y(n284) );
  OAI22X1M U200 ( .A0(n338), .A1(n193), .B0(n202), .B1(n16), .Y(n301) );
  OAI22X1M U201 ( .A0(n340), .A1(n193), .B0(n202), .B1(n15), .Y(n302) );
  OAI22X1M U202 ( .A0(n341), .A1(n193), .B0(n202), .B1(n14), .Y(n303) );
  OAI22X1M U203 ( .A0(n342), .A1(n193), .B0(n202), .B1(n13), .Y(n304) );
  OAI22X1M U204 ( .A0(n343), .A1(n193), .B0(n202), .B1(n12), .Y(n305) );
  OAI22X1M U205 ( .A0(n344), .A1(n193), .B0(n202), .B1(n11), .Y(n306) );
  OAI22X1M U206 ( .A0(n345), .A1(n193), .B0(n202), .B1(n10), .Y(n307) );
  OAI22X1M U207 ( .A0(n346), .A1(n193), .B0(n202), .B1(n9), .Y(n308) );
  OAI22X1M U208 ( .A0(n338), .A1(n194), .B0(n201), .B1(n8), .Y(n309) );
  OAI22X1M U209 ( .A0(n340), .A1(n194), .B0(n201), .B1(n7), .Y(n310) );
  OAI22X1M U210 ( .A0(n341), .A1(n194), .B0(n201), .B1(n6), .Y(n311) );
  OAI22X1M U211 ( .A0(n342), .A1(n194), .B0(n201), .B1(n5), .Y(n312) );
  OAI22X1M U212 ( .A0(n343), .A1(n194), .B0(n201), .B1(n4), .Y(n313) );
  OAI22X1M U213 ( .A0(n344), .A1(n194), .B0(n201), .B1(n3), .Y(n314) );
  OAI22X1M U214 ( .A0(n345), .A1(n194), .B0(n201), .B1(n2), .Y(n315) );
  OAI22X1M U215 ( .A0(n346), .A1(n194), .B0(n201), .B1(n1), .Y(n316) );
  OAI2BB2X1M U216 ( .B0(n340), .B1(n80), .A0N(n80), .A1N(\Reg_File[5][1] ), 
        .Y(n246) );
  OAI2BB2X1M U217 ( .B0(n341), .B1(n80), .A0N(n80), .A1N(\Reg_File[5][2] ), 
        .Y(n247) );
  OAI2BB2X1M U218 ( .B0(n340), .B1(n78), .A0N(n78), .A1N(\Reg_File[11][1] ), 
        .Y(n294) );
  OAI2BB2X1M U219 ( .B0(n341), .B1(n78), .A0N(n78), .A1N(\Reg_File[11][2] ), 
        .Y(n295) );
  OAI2BB2X1M U220 ( .B0(n340), .B1(n77), .A0N(n77), .A1N(\Reg_File[14][1] ), 
        .Y(n318) );
  OAI2BB2X1M U221 ( .B0(n341), .B1(n77), .A0N(n77), .A1N(\Reg_File[14][2] ), 
        .Y(n319) );
  OAI2BB2X1M U222 ( .B0(n340), .B1(n76), .A0N(n76), .A1N(\Reg_File[15][1] ), 
        .Y(n326) );
  OAI2BB2X1M U223 ( .B0(n341), .B1(n76), .A0N(n76), .A1N(\Reg_File[15][2] ), 
        .Y(n327) );
  OAI2BB2X1M U224 ( .B0(n338), .B1(n80), .A0N(n80), .A1N(\Reg_File[5][0] ), 
        .Y(n245) );
  OAI2BB2X1M U225 ( .B0(n338), .B1(n78), .A0N(n78), .A1N(\Reg_File[11][0] ), 
        .Y(n293) );
  OAI2BB2X1M U226 ( .B0(n338), .B1(n77), .A0N(n77), .A1N(\Reg_File[14][0] ), 
        .Y(n317) );
  OAI2BB2X1M U227 ( .B0(n338), .B1(n76), .A0N(n76), .A1N(\Reg_File[15][0] ), 
        .Y(n325) );
  OAI2BB2X1M U228 ( .B0(n342), .B1(n80), .A0N(n80), .A1N(\Reg_File[5][3] ), 
        .Y(n248) );
  OAI2BB2X1M U229 ( .B0(n342), .B1(n78), .A0N(n78), .A1N(\Reg_File[11][3] ), 
        .Y(n296) );
  OAI2BB2X1M U230 ( .B0(n342), .B1(n77), .A0N(n77), .A1N(\Reg_File[14][3] ), 
        .Y(n320) );
  OAI2BB2X1M U231 ( .B0(n342), .B1(n76), .A0N(n76), .A1N(\Reg_File[15][3] ), 
        .Y(n328) );
  OAI2BB2X1M U232 ( .B0(n346), .B1(n80), .A0N(n80), .A1N(\Reg_File[5][7] ), 
        .Y(n252) );
  OAI2BB2X1M U233 ( .B0(n346), .B1(n78), .A0N(n78), .A1N(\Reg_File[11][7] ), 
        .Y(n300) );
  OAI2BB2X1M U234 ( .B0(n346), .B1(n77), .A0N(n77), .A1N(\Reg_File[14][7] ), 
        .Y(n324) );
  OAI2BB2X1M U235 ( .B0(n346), .B1(n76), .A0N(n76), .A1N(\Reg_File[15][7] ), 
        .Y(n332) );
  OAI2BB2X1M U236 ( .B0(n343), .B1(n80), .A0N(n80), .A1N(\Reg_File[5][4] ), 
        .Y(n249) );
  OAI2BB2X1M U237 ( .B0(n343), .B1(n78), .A0N(n78), .A1N(\Reg_File[11][4] ), 
        .Y(n297) );
  OAI2BB2X1M U238 ( .B0(n343), .B1(n77), .A0N(n77), .A1N(\Reg_File[14][4] ), 
        .Y(n321) );
  OAI2BB2X1M U239 ( .B0(n343), .B1(n76), .A0N(n76), .A1N(\Reg_File[15][4] ), 
        .Y(n329) );
  OAI2BB2X1M U240 ( .B0(n344), .B1(n80), .A0N(n80), .A1N(\Reg_File[5][5] ), 
        .Y(n250) );
  OAI2BB2X1M U241 ( .B0(n345), .B1(n80), .A0N(n80), .A1N(\Reg_File[5][6] ), 
        .Y(n251) );
  OAI2BB2X1M U242 ( .B0(n344), .B1(n78), .A0N(n78), .A1N(\Reg_File[11][5] ), 
        .Y(n298) );
  OAI2BB2X1M U243 ( .B0(n345), .B1(n78), .A0N(n78), .A1N(\Reg_File[11][6] ), 
        .Y(n299) );
  OAI2BB2X1M U244 ( .B0(n344), .B1(n77), .A0N(n77), .A1N(\Reg_File[14][5] ), 
        .Y(n322) );
  OAI2BB2X1M U245 ( .B0(n345), .B1(n77), .A0N(n77), .A1N(\Reg_File[14][6] ), 
        .Y(n323) );
  OAI2BB2X1M U246 ( .B0(n344), .B1(n76), .A0N(n76), .A1N(\Reg_File[15][5] ), 
        .Y(n330) );
  OAI2BB2X1M U247 ( .B0(n345), .B1(n76), .A0N(n76), .A1N(\Reg_File[15][6] ), 
        .Y(n331) );
  AOI221XLM U248 ( .A0(\Reg_File[5][0] ), .A1(n99), .B0(\Reg_File[4][0] ), 
        .B1(n100), .C0(n170), .Y(n165) );
  AOI221XLM U249 ( .A0(\Reg_File[11][0] ), .A1(n94), .B0(\Reg_File[10][0] ), 
        .B1(n95), .C0(n169), .Y(n166) );
  AOI221XLM U250 ( .A0(\Reg_File[5][1] ), .A1(n99), .B0(\Reg_File[4][1] ), 
        .B1(n100), .C0(n161), .Y(n156) );
  AOI221XLM U251 ( .A0(\Reg_File[11][1] ), .A1(n94), .B0(\Reg_File[10][1] ), 
        .B1(n95), .C0(n160), .Y(n157) );
  AOI221XLM U252 ( .A0(\Reg_File[5][2] ), .A1(n99), .B0(\Reg_File[4][2] ), 
        .B1(n100), .C0(n152), .Y(n147) );
  AOI221XLM U253 ( .A0(\Reg_File[11][2] ), .A1(n94), .B0(\Reg_File[10][2] ), 
        .B1(n95), .C0(n151), .Y(n148) );
  AOI221XLM U254 ( .A0(\Reg_File[5][3] ), .A1(n99), .B0(\Reg_File[4][3] ), 
        .B1(n100), .C0(n143), .Y(n138) );
  AOI221XLM U255 ( .A0(\Reg_File[11][3] ), .A1(n94), .B0(\Reg_File[10][3] ), 
        .B1(n95), .C0(n142), .Y(n139) );
  AOI221XLM U256 ( .A0(\Reg_File[5][4] ), .A1(n99), .B0(\Reg_File[4][4] ), 
        .B1(n100), .C0(n134), .Y(n129) );
  AOI221XLM U257 ( .A0(\Reg_File[11][4] ), .A1(n94), .B0(\Reg_File[10][4] ), 
        .B1(n95), .C0(n133), .Y(n130) );
  AOI221XLM U258 ( .A0(\Reg_File[5][5] ), .A1(n99), .B0(\Reg_File[4][5] ), 
        .B1(n100), .C0(n125), .Y(n120) );
  AOI221XLM U259 ( .A0(\Reg_File[11][5] ), .A1(n94), .B0(\Reg_File[10][5] ), 
        .B1(n95), .C0(n124), .Y(n121) );
  AOI221XLM U260 ( .A0(\Reg_File[5][6] ), .A1(n99), .B0(\Reg_File[4][6] ), 
        .B1(n100), .C0(n116), .Y(n111) );
  AOI221XLM U261 ( .A0(\Reg_File[11][6] ), .A1(n94), .B0(\Reg_File[10][6] ), 
        .B1(n95), .C0(n115), .Y(n112) );
  AOI221XLM U262 ( .A0(\Reg_File[5][7] ), .A1(n99), .B0(\Reg_File[4][7] ), 
        .B1(n100), .C0(n101), .Y(n86) );
  AOI221XLM U263 ( .A0(\Reg_File[11][7] ), .A1(n94), .B0(\Reg_File[10][7] ), 
        .B1(n95), .C0(n96), .Y(n87) );
  OAI2BB2X1M U264 ( .B0(n83), .B1(n340), .A0N(n83), .A1N(Reg_0[1]), .Y(n206)
         );
  OAI2BB2X1M U265 ( .B0(n83), .B1(n341), .A0N(n83), .A1N(Reg_0[2]), .Y(n207)
         );
  OAI2BB2X1M U266 ( .B0(n83), .B1(n338), .A0N(n83), .A1N(Reg_0[0]), .Y(n205)
         );
  OAI2BB2X1M U267 ( .B0(n83), .B1(n342), .A0N(n83), .A1N(Reg_0[3]), .Y(n208)
         );
  OAI2BB2X1M U268 ( .B0(n83), .B1(n343), .A0N(n83), .A1N(Reg_0[4]), .Y(n209)
         );
  OAI2BB2X1M U269 ( .B0(n83), .B1(n344), .A0N(n83), .A1N(Reg_0[5]), .Y(n210)
         );
  OAI2BB2X1M U270 ( .B0(n340), .B1(n81), .A0N(n81), .A1N(\Reg_File[4][1] ), 
        .Y(n238) );
  OAI2BB2X1M U271 ( .B0(n341), .B1(n81), .A0N(n81), .A1N(\Reg_File[4][2] ), 
        .Y(n239) );
  OAI2BB2X1M U272 ( .B0(n340), .B1(n79), .A0N(n79), .A1N(\Reg_File[10][1] ), 
        .Y(n286) );
  OAI2BB2X1M U273 ( .B0(n341), .B1(n79), .A0N(n79), .A1N(\Reg_File[10][2] ), 
        .Y(n287) );
  OAI2BB2X1M U274 ( .B0(n338), .B1(n81), .A0N(n81), .A1N(\Reg_File[4][0] ), 
        .Y(n237) );
  OAI2BB2X1M U275 ( .B0(n338), .B1(n79), .A0N(n79), .A1N(\Reg_File[10][0] ), 
        .Y(n285) );
  OAI2BB2X1M U276 ( .B0(n342), .B1(n81), .A0N(n81), .A1N(\Reg_File[4][3] ), 
        .Y(n240) );
  OAI2BB2X1M U277 ( .B0(n342), .B1(n79), .A0N(n79), .A1N(\Reg_File[10][3] ), 
        .Y(n288) );
  OAI2BB2X1M U278 ( .B0(n346), .B1(n81), .A0N(n81), .A1N(\Reg_File[4][7] ), 
        .Y(n244) );
  OAI2BB2X1M U279 ( .B0(n346), .B1(n79), .A0N(n79), .A1N(\Reg_File[10][7] ), 
        .Y(n292) );
  OAI2BB2X1M U280 ( .B0(n343), .B1(n81), .A0N(n81), .A1N(\Reg_File[4][4] ), 
        .Y(n241) );
  OAI2BB2X1M U281 ( .B0(n343), .B1(n79), .A0N(n79), .A1N(\Reg_File[10][4] ), 
        .Y(n289) );
  OAI2BB2X1M U282 ( .B0(n344), .B1(n81), .A0N(n81), .A1N(\Reg_File[4][5] ), 
        .Y(n242) );
  OAI2BB2X1M U283 ( .B0(n345), .B1(n81), .A0N(n81), .A1N(\Reg_File[4][6] ), 
        .Y(n243) );
  OAI2BB2X1M U284 ( .B0(n344), .B1(n79), .A0N(n79), .A1N(\Reg_File[10][5] ), 
        .Y(n290) );
  OAI2BB2X1M U285 ( .B0(n345), .B1(n79), .A0N(n79), .A1N(\Reg_File[10][6] ), 
        .Y(n291) );
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
  INVX2M U5 ( .A(n5), .Y(OUT[0]) );
  AOI32X1M U6 ( .A0(Sel4), .A1(IN4[0]), .A2(n6), .B0(n7), .B1(n2), .Y(n5) );
  INVX2M U7 ( .A(Sel4), .Y(n2) );
  OAI21X2M U8 ( .A0(Sel3), .A1(n8), .B0(n9), .Y(n7) );
  NAND4X2M U9 ( .A(Sel3), .B(IN3[0]), .C(n4), .D(n3), .Y(n9) );
  AOI33X2M U10 ( .A0(IN1[0]), .A1(n3), .A2(Sel1), .B0(IN2[0]), .B1(n4), .B2(
        Sel2), .Y(n8) );
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
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
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
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15;

  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n11), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n11), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
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
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n8), .CI(
        \u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n9), .CI(
        \u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n8), .CI(
        \u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
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
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n8), .CI(
        \u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n9), .CI(
        \u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n10), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n9), .CI(
        \u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n7), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n7), .CI(
        \u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n8), .CI(
        \u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n6), .CI(
        \u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n5), .CI(
        \u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n10), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n7), .CI(
        \u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n6), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  NOR2X12M U1 ( .A(b[6]), .B(b[7]), .Y(n15) );
  INVX4M U2 ( .A(b[4]), .Y(n8) );
  INVX4M U3 ( .A(b[5]), .Y(n7) );
  INVX2M U4 ( .A(b[3]), .Y(n9) );
  AND3X2M U5 ( .A(n15), .B(n8), .C(n7), .Y(n14) );
  AND2X2M U6 ( .A(\u_div/CryTmp[1][7] ), .B(n5), .Y(quotient[1]) );
  AND2X2M U7 ( .A(\u_div/CryTmp[2][6] ), .B(n15), .Y(quotient[2]) );
  AND2X2M U8 ( .A(\u_div/CryTmp[3][5] ), .B(n2), .Y(quotient[3]) );
  AND2X2M U9 ( .A(\u_div/CryTmp[5][3] ), .B(n13), .Y(quotient[5]) );
  AND2X2M U10 ( .A(n14), .B(n9), .Y(n13) );
  AND2X1M U11 ( .A(n13), .B(n10), .Y(n1) );
  AND2X2M U12 ( .A(\u_div/CryTmp[6][2] ), .B(n1), .Y(quotient[6]) );
  AND2X2M U13 ( .A(\u_div/CryTmp[4][4] ), .B(n14), .Y(quotient[4]) );
  INVX2M U14 ( .A(b[2]), .Y(n10) );
  INVX4M U15 ( .A(b[0]), .Y(n12) );
  INVX2M U16 ( .A(b[1]), .Y(n11) );
  OR2X2M U17 ( .A(n12), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  OR2X2M U18 ( .A(n12), .B(a[4]), .Y(\u_div/CryTmp[4][1] ) );
  OR2X2M U19 ( .A(n12), .B(a[3]), .Y(\u_div/CryTmp[3][1] ) );
  OR2X2M U20 ( .A(n12), .B(a[2]), .Y(\u_div/CryTmp[2][1] ) );
  OR2X2M U21 ( .A(n12), .B(a[1]), .Y(\u_div/CryTmp[1][1] ) );
  OR2X2M U22 ( .A(n12), .B(a[5]), .Y(\u_div/CryTmp[5][1] ) );
  OR2X2M U23 ( .A(n12), .B(a[6]), .Y(\u_div/CryTmp[6][1] ) );
  INVXLM U24 ( .A(b[6]), .Y(n6) );
  AND2X1M U25 ( .A(n7), .B(n15), .Y(n2) );
  MX2XLM U26 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  MX2XLM U27 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  MX2XLM U28 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  MX2XLM U29 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  MX2XLM U30 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  MX2XLM U31 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  MX2XLM U32 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  MX2XLM U33 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  MX2XLM U34 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  MX2XLM U35 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  MX2XLM U36 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  MX2XLM U37 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  MX2XLM U38 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  MX2XLM U39 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  MX2XLM U40 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  XNOR2XLM U41 ( .A(n12), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  CLKINVX1M U42 ( .A(b[7]), .Y(n5) );
  XNOR2XLM U43 ( .A(n12), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  INVX2M U44 ( .A(n12), .Y(n3) );
  XNOR2X2M U45 ( .A(n12), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X2M U46 ( .A(n12), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U47 ( .A(n12), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U48 ( .A(n12), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U49 ( .A(n12), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  NAND2X2M U50 ( .A(n3), .B(n4), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U51 ( .A(a[0]), .Y(n4) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U53 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U55 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U57 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U58 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U59 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U60 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U61 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U62 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U63 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U64 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U65 ( .A(\u_div/CryTmp[7][1] ), .B(n13), .C(n11), .D(n10), .Y(
        quotient[7]) );
endmodule


module ARITHMETIC_UNIT_DATA_WIDTH8_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [9:0] carry;

  ADDFX2M U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  INVXLM U1 ( .A(B[0]), .Y(n11) );
  INVXLM U2 ( .A(B[5]), .Y(n6) );
  INVXLM U3 ( .A(B[1]), .Y(n10) );
  INVXLM U4 ( .A(B[6]), .Y(n5) );
  INVXLM U5 ( .A(B[2]), .Y(n9) );
  INVXLM U6 ( .A(B[3]), .Y(n8) );
  INVXLM U7 ( .A(B[4]), .Y(n7) );
  INVXLM U8 ( .A(B[7]), .Y(n4) );
  INVX2M U9 ( .A(carry[8]), .Y(DIFF[8]) );
  INVX2M U10 ( .A(n11), .Y(n1) );
  XNOR2X2M U11 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  NAND2X2M U12 ( .A(n1), .B(n2), .Y(carry[1]) );
  INVX2M U13 ( .A(A[0]), .Y(n2) );
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

  ARITHMETIC_UNIT_DATA_WIDTH8_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , 
        \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , 
        \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n10, n16, n15, n13, n14, n11, 
        n12, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(
        PRODUCT[15:2]) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
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
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n3), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n8), .CI(\SUMB[1][5] ), .CO(
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
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n4), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n7), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n6), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  AND2X2M U2 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  CLKINVX2M U10 ( .A(B[1]), .Y(n23) );
  CLKINVX2M U11 ( .A(B[0]), .Y(n24) );
  CLKINVX2M U12 ( .A(B[2]), .Y(n22) );
  CLKINVX2M U13 ( .A(B[3]), .Y(n21) );
  CLKINVX2M U14 ( .A(B[4]), .Y(n20) );
  CLKINVX2M U15 ( .A(B[6]), .Y(n18) );
  CLKINVX2M U16 ( .A(B[7]), .Y(n17) );
  CLKINVX2M U17 ( .A(B[5]), .Y(n19) );
  CLKINVX2M U18 ( .A(A[6]), .Y(n26) );
  CLKINVX2M U19 ( .A(A[7]), .Y(n25) );
  CLKXOR2X2M U20 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U21 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  AND2X2M U22 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  AND2X2M U23 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  CLKXOR2X2M U24 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U25 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  AND2X2M U26 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U27 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n14) );
  CLKXOR2X2M U28 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  AND2X2M U29 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n15) );
  CLKXOR2X2M U30 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  AND2X2M U31 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U32 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  CLKXOR2X2M U33 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  CLKXOR2X2M U34 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  CLKXOR2X2M U35 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  CLKXOR2X2M U36 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  CLKXOR2X2M U37 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  CLKXOR2X2M U38 ( .A(\ab[1][6] ), .B(\ab[0][7] ), .Y(\SUMB[1][6] ) );
  CLKXOR2X2M U39 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(\A1[6] ) );
  INVX2M U40 ( .A(A[1]), .Y(n31) );
  INVX2M U41 ( .A(A[2]), .Y(n30) );
  INVX2M U42 ( .A(A[0]), .Y(n32) );
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
endmodule


module ARITHMETIC_UNIT_DATA_WIDTH8 ( A_Arith, B_Arith, clk, Arith_En, 
        ALU_FUN_LS, Arith_OUT_reg, Carry_OUT_reg, Arith_Flag_reg );
  input [7:0] A_Arith;
  input [7:0] B_Arith;
  input [1:0] ALU_FUN_LS;
  output [7:0] Arith_OUT_reg;
  output [7:0] Carry_OUT_reg;
  input clk, Arith_En;
  output Arith_Flag_reg;
  wire   N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n3, n4, n5, n6, n7, n8, n31;
  wire   [7:0] Arith_OUT;
  wire   [7:0] Carry_OUT;

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
  DFFQX2M \Arith_OUT_reg_reg[7]  ( .D(Arith_OUT[7]), .CK(clk), .Q(
        Arith_OUT_reg[7]) );
  DFFQX2M \Arith_OUT_reg_reg[6]  ( .D(Arith_OUT[6]), .CK(clk), .Q(
        Arith_OUT_reg[6]) );
  DFFQX2M \Arith_OUT_reg_reg[5]  ( .D(Arith_OUT[5]), .CK(clk), .Q(
        Arith_OUT_reg[5]) );
  DFFQX2M \Arith_OUT_reg_reg[4]  ( .D(Arith_OUT[4]), .CK(clk), .Q(
        Arith_OUT_reg[4]) );
  DFFQX2M \Arith_OUT_reg_reg[3]  ( .D(Arith_OUT[3]), .CK(clk), .Q(
        Arith_OUT_reg[3]) );
  DFFQX2M \Arith_OUT_reg_reg[2]  ( .D(Arith_OUT[2]), .CK(clk), .Q(
        Arith_OUT_reg[2]) );
  DFFQX2M \Arith_OUT_reg_reg[1]  ( .D(Arith_OUT[1]), .CK(clk), .Q(
        Arith_OUT_reg[1]) );
  DFFQX2M \Carry_OUT_reg_reg[7]  ( .D(Carry_OUT[7]), .CK(clk), .Q(
        Carry_OUT_reg[7]) );
  DFFQX2M \Carry_OUT_reg_reg[6]  ( .D(Carry_OUT[6]), .CK(clk), .Q(
        Carry_OUT_reg[6]) );
  DFFQX2M \Carry_OUT_reg_reg[5]  ( .D(Carry_OUT[5]), .CK(clk), .Q(
        Carry_OUT_reg[5]) );
  DFFQX2M \Carry_OUT_reg_reg[4]  ( .D(Carry_OUT[4]), .CK(clk), .Q(
        Carry_OUT_reg[4]) );
  DFFQX2M \Carry_OUT_reg_reg[3]  ( .D(Carry_OUT[3]), .CK(clk), .Q(
        Carry_OUT_reg[3]) );
  DFFQX2M \Carry_OUT_reg_reg[2]  ( .D(Carry_OUT[2]), .CK(clk), .Q(
        Carry_OUT_reg[2]) );
  DFFQX2M \Carry_OUT_reg_reg[1]  ( .D(Carry_OUT[1]), .CK(clk), .Q(
        Carry_OUT_reg[1]) );
  DFFQX2M \Carry_OUT_reg_reg[0]  ( .D(n7), .CK(clk), .Q(Carry_OUT_reg[0]) );
  DFFQX2M Arith_Flag_reg_reg ( .D(Arith_En), .CK(clk), .Q(Arith_Flag_reg) );
  DFFQX1M \Arith_OUT_reg_reg[0]  ( .D(Arith_OUT[0]), .CK(clk), .Q(
        Arith_OUT_reg[0]) );
  BUFX2M U3 ( .A(n16), .Y(n3) );
  NOR3BX2M U4 ( .AN(Arith_En), .B(n31), .C(n8), .Y(n16) );
  AO21XLM U5 ( .A0(N48), .A1(n4), .B0(n10), .Y(Carry_OUT[6]) );
  AO21XLM U8 ( .A0(N49), .A1(n4), .B0(n10), .Y(Carry_OUT[7]) );
  AO21XLM U9 ( .A0(N47), .A1(n4), .B0(n10), .Y(Carry_OUT[5]) );
  AO21XLM U10 ( .A0(N45), .A1(n4), .B0(n10), .Y(Carry_OUT[3]) );
  AO21XLM U11 ( .A0(N44), .A1(n4), .B0(n10), .Y(Carry_OUT[2]) );
  AO21XLM U12 ( .A0(N46), .A1(n4), .B0(n10), .Y(Carry_OUT[4]) );
  AO21XLM U13 ( .A0(N43), .A1(n4), .B0(n10), .Y(Carry_OUT[1]) );
  BUFX2M U14 ( .A(n13), .Y(n5) );
  NOR3BX2M U15 ( .AN(Arith_En), .B(ALU_FUN_LS[1]), .C(n8), .Y(n13) );
  BUFX2M U16 ( .A(n12), .Y(n6) );
  NOR3BX2M U17 ( .AN(Arith_En), .B(ALU_FUN_LS[0]), .C(ALU_FUN_LS[1]), .Y(n12)
         );
  INVX2M U18 ( .A(ALU_FUN_LS[1]), .Y(n31) );
  INVX2M U19 ( .A(ALU_FUN_LS[0]), .Y(n8) );
  BUFX4M U20 ( .A(n9), .Y(n4) );
  NOR3BX2M U21 ( .AN(Arith_En), .B(n31), .C(ALU_FUN_LS[0]), .Y(n9) );
  NAND2X2M U22 ( .A(n27), .B(n28), .Y(Arith_OUT[1]) );
  AOI22X1M U23 ( .A0(N35), .A1(n4), .B0(N26), .B1(n5), .Y(n27) );
  AOI22XLM U24 ( .A0(N51), .A1(n3), .B0(N17), .B1(n6), .Y(n28) );
  NAND2X2M U25 ( .A(n25), .B(n26), .Y(Arith_OUT[2]) );
  AOI22X1M U26 ( .A0(N36), .A1(n4), .B0(N27), .B1(n5), .Y(n25) );
  AOI22XLM U27 ( .A0(N52), .A1(n3), .B0(N18), .B1(n6), .Y(n26) );
  NAND2X2M U28 ( .A(n23), .B(n24), .Y(Arith_OUT[3]) );
  AOI22X1M U29 ( .A0(N37), .A1(n4), .B0(N28), .B1(n5), .Y(n23) );
  AOI22XLM U30 ( .A0(N53), .A1(n3), .B0(N19), .B1(n6), .Y(n24) );
  NAND2X2M U31 ( .A(n21), .B(n22), .Y(Arith_OUT[4]) );
  AOI22X1M U32 ( .A0(N38), .A1(n4), .B0(N29), .B1(n5), .Y(n21) );
  AOI22XLM U33 ( .A0(N54), .A1(n3), .B0(N20), .B1(n6), .Y(n22) );
  NAND2X2M U34 ( .A(n19), .B(n20), .Y(Arith_OUT[5]) );
  AOI22X1M U35 ( .A0(N39), .A1(n4), .B0(N30), .B1(n5), .Y(n19) );
  AOI22XLM U36 ( .A0(N55), .A1(n3), .B0(N21), .B1(n6), .Y(n20) );
  INVX2M U37 ( .A(n11), .Y(n7) );
  AOI221XLM U38 ( .A0(N42), .A1(n4), .B0(N24), .B1(n6), .C0(n10), .Y(n11) );
  AND2X2M U39 ( .A(N33), .B(n5), .Y(n10) );
  NAND2X2M U40 ( .A(n17), .B(n18), .Y(Arith_OUT[6]) );
  AOI22X1M U41 ( .A0(N40), .A1(n4), .B0(N31), .B1(n5), .Y(n17) );
  AOI22XLM U42 ( .A0(N56), .A1(n3), .B0(N22), .B1(n6), .Y(n18) );
  NAND2X2M U43 ( .A(n14), .B(n15), .Y(Arith_OUT[7]) );
  AOI22XLM U44 ( .A0(N57), .A1(n3), .B0(N23), .B1(n6), .Y(n15) );
  AOI22X1M U45 ( .A0(N41), .A1(n4), .B0(N32), .B1(n5), .Y(n14) );
  NAND2X2M U46 ( .A(n29), .B(n30), .Y(Arith_OUT[0]) );
  AOI22X1M U47 ( .A0(N34), .A1(n4), .B0(N25), .B1(n5), .Y(n29) );
  AOI22XLM U48 ( .A0(N50), .A1(n3), .B0(N16), .B1(n6), .Y(n30) );
endmodule


module LOGIC_UNIT_DATA_WIDTH8 ( A_Logic, B_Logic, clk, Logic_En, ALU_FUN_LS, 
        Logic_OUT_reg, Logic_Flag_reg );
  input [7:0] A_Logic;
  input [7:0] B_Logic;
  input [1:0] ALU_FUN_LS;
  output [7:0] Logic_OUT_reg;
  input clk, Logic_En;
  output Logic_Flag_reg;
  wire   n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n44,
         n45;
  wire   [7:0] Logic_OUT;

  DFFQX2M \Logic_OUT_reg_reg[7]  ( .D(Logic_OUT[7]), .CK(clk), .Q(
        Logic_OUT_reg[7]) );
  DFFQX2M \Logic_OUT_reg_reg[6]  ( .D(Logic_OUT[6]), .CK(clk), .Q(
        Logic_OUT_reg[6]) );
  DFFQX2M \Logic_OUT_reg_reg[5]  ( .D(Logic_OUT[5]), .CK(clk), .Q(
        Logic_OUT_reg[5]) );
  DFFQX2M \Logic_OUT_reg_reg[4]  ( .D(Logic_OUT[4]), .CK(clk), .Q(
        Logic_OUT_reg[4]) );
  DFFQX2M \Logic_OUT_reg_reg[3]  ( .D(Logic_OUT[3]), .CK(clk), .Q(
        Logic_OUT_reg[3]) );
  DFFQX2M \Logic_OUT_reg_reg[2]  ( .D(Logic_OUT[2]), .CK(clk), .Q(
        Logic_OUT_reg[2]) );
  DFFQX2M \Logic_OUT_reg_reg[1]  ( .D(Logic_OUT[1]), .CK(clk), .Q(
        Logic_OUT_reg[1]) );
  DFFQX2M \Logic_OUT_reg_reg[0]  ( .D(Logic_OUT[0]), .CK(clk), .Q(
        Logic_OUT_reg[0]) );
  DFFQX2M Logic_Flag_reg_reg ( .D(Logic_En), .CK(clk), .Q(Logic_Flag_reg) );
  AOI22XLM U3 ( .A0(n39), .A1(n9), .B0(B_Logic[1]), .B1(n40), .Y(n38) );
  INVXLM U4 ( .A(B_Logic[1]), .Y(n9) );
  AOI22XLM U5 ( .A0(n27), .A1(n5), .B0(B_Logic[5]), .B1(n28), .Y(n26) );
  INVXLM U6 ( .A(B_Logic[5]), .Y(n5) );
  AOI22XLM U7 ( .A0(n42), .A1(n10), .B0(B_Logic[0]), .B1(n43), .Y(n41) );
  INVXLM U8 ( .A(B_Logic[0]), .Y(n10) );
  AOI22XLM U9 ( .A0(n36), .A1(n8), .B0(B_Logic[2]), .B1(n37), .Y(n35) );
  INVXLM U10 ( .A(B_Logic[2]), .Y(n8) );
  AOI22XLM U11 ( .A0(n33), .A1(n7), .B0(B_Logic[3]), .B1(n34), .Y(n32) );
  INVXLM U12 ( .A(B_Logic[3]), .Y(n7) );
  AOI22XLM U13 ( .A0(n30), .A1(n6), .B0(B_Logic[4]), .B1(n31), .Y(n29) );
  INVXLM U14 ( .A(B_Logic[4]), .Y(n6) );
  OAI221XLM U15 ( .A0(A_Logic[6]), .A1(n1), .B0(n11), .B1(n2), .C0(n21), .Y(
        Logic_OUT[6]) );
  AOI22XLM U16 ( .A0(n22), .A1(n4), .B0(B_Logic[6]), .B1(n23), .Y(n21) );
  INVXLM U17 ( .A(B_Logic[6]), .Y(n4) );
  OAI21XLM U18 ( .A0(A_Logic[6]), .A1(n25), .B0(n1), .Y(n22) );
  OAI2BB1XLM U19 ( .A0N(ALU_FUN_LS[0]), .A1N(A_Logic[7]), .B0(n18), .Y(n17) );
  OAI21XLM U20 ( .A0(ALU_FUN_LS[0]), .A1(A_Logic[7]), .B0(B_Logic[7]), .Y(n18)
         );
  INVXLM U21 ( .A(A_Logic[6]), .Y(n11) );
  NAND2X2M U22 ( .A(Logic_En), .B(n3), .Y(n24) );
  NAND2X2M U23 ( .A(Logic_En), .B(ALU_FUN_LS[1]), .Y(n25) );
  INVX2M U24 ( .A(ALU_FUN_LS[1]), .Y(n3) );
  BUFX4M U25 ( .A(n20), .Y(n2) );
  NAND3X2M U26 ( .A(ALU_FUN_LS[0]), .B(n3), .C(Logic_En), .Y(n20) );
  BUFX4M U27 ( .A(n19), .Y(n1) );
  NAND3BX2M U28 ( .AN(ALU_FUN_LS[0]), .B(ALU_FUN_LS[1]), .C(Logic_En), .Y(n19)
         );
  OAI21X2M U29 ( .A0(n24), .A1(n45), .B0(n2), .Y(n43) );
  OAI21X2M U30 ( .A0(n24), .A1(n44), .B0(n2), .Y(n40) );
  OAI21X2M U31 ( .A0(n24), .A1(n15), .B0(n2), .Y(n37) );
  OAI21X2M U32 ( .A0(n24), .A1(n14), .B0(n2), .Y(n34) );
  OAI21X2M U33 ( .A0(n24), .A1(n13), .B0(n2), .Y(n31) );
  OAI21X2M U34 ( .A0(n24), .A1(n12), .B0(n2), .Y(n28) );
  OAI21X2M U35 ( .A0(n24), .A1(n11), .B0(n2), .Y(n23) );
  OAI221X1M U36 ( .A0(A_Logic[1]), .A1(n1), .B0(n2), .B1(n44), .C0(n38), .Y(
        Logic_OUT[1]) );
  OAI21X2M U37 ( .A0(A_Logic[1]), .A1(n25), .B0(n1), .Y(n39) );
  OAI221X1M U38 ( .A0(A_Logic[4]), .A1(n1), .B0(n2), .B1(n13), .C0(n29), .Y(
        Logic_OUT[4]) );
  OAI21X2M U39 ( .A0(A_Logic[4]), .A1(n25), .B0(n1), .Y(n30) );
  OAI221X1M U40 ( .A0(A_Logic[2]), .A1(n1), .B0(n2), .B1(n15), .C0(n35), .Y(
        Logic_OUT[2]) );
  OAI21X2M U41 ( .A0(A_Logic[2]), .A1(n25), .B0(n1), .Y(n36) );
  OAI221X1M U42 ( .A0(A_Logic[3]), .A1(n1), .B0(n2), .B1(n14), .C0(n32), .Y(
        Logic_OUT[3]) );
  OAI21X2M U43 ( .A0(A_Logic[3]), .A1(n25), .B0(n1), .Y(n33) );
  OAI221X1M U44 ( .A0(A_Logic[5]), .A1(n1), .B0(n2), .B1(n12), .C0(n26), .Y(
        Logic_OUT[5]) );
  OAI21X2M U45 ( .A0(A_Logic[5]), .A1(n25), .B0(n1), .Y(n27) );
  OAI221X1M U46 ( .A0(A_Logic[0]), .A1(n1), .B0(n2), .B1(n45), .C0(n41), .Y(
        Logic_OUT[0]) );
  OAI21X2M U47 ( .A0(A_Logic[0]), .A1(n25), .B0(n1), .Y(n42) );
  NOR2BX2M U48 ( .AN(Logic_En), .B(n16), .Y(Logic_OUT[7]) );
  XNOR2X2M U49 ( .A(ALU_FUN_LS[1]), .B(n17), .Y(n16) );
  INVX2M U50 ( .A(A_Logic[1]), .Y(n44) );
  INVX2M U51 ( .A(A_Logic[4]), .Y(n13) );
  INVX2M U52 ( .A(A_Logic[2]), .Y(n15) );
  INVX2M U53 ( .A(A_Logic[3]), .Y(n14) );
  INVX2M U54 ( .A(A_Logic[5]), .Y(n12) );
  INVX2M U55 ( .A(A_Logic[0]), .Y(n45) );
endmodule


module CMP_UNIT_DATA_WIDTH8 ( A_Cmp, B_Cmp, clk, CMP_EN, ALU_FUN_LS, 
        CMP_OUT_reg, CMP_Flag_reg );
  input [7:0] A_Cmp;
  input [7:0] B_Cmp;
  input [1:0] ALU_FUN_LS;
  output [7:0] CMP_OUT_reg;
  input clk, CMP_EN;
  output CMP_Flag_reg;
  wire   N17, n5, n1, n2, n3, n4, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24;
  wire   [1:0] CMP_OUT;
  assign CMP_OUT_reg[7] = 1'b0;
  assign CMP_OUT_reg[6] = 1'b0;
  assign CMP_OUT_reg[5] = 1'b0;
  assign CMP_OUT_reg[4] = 1'b0;
  assign CMP_OUT_reg[3] = 1'b0;
  assign CMP_OUT_reg[2] = 1'b0;

  DFFQX2M \CMP_OUT_reg_reg[1]  ( .D(CMP_OUT[1]), .CK(clk), .Q(CMP_OUT_reg[1])
         );
  DFFQX2M \CMP_OUT_reg_reg[0]  ( .D(CMP_OUT[0]), .CK(clk), .Q(CMP_OUT_reg[0])
         );
  DFFQX2M CMP_Flag_reg_reg ( .D(CMP_EN), .CK(clk), .Q(CMP_Flag_reg) );
  OAI221XLM U5 ( .A0(B_Cmp[2]), .A1(n20), .B0(B_Cmp[3]), .B1(n21), .C0(n8), 
        .Y(n9) );
  AND3X2M U10 ( .A(n5), .B(ALU_FUN_LS[0]), .C(CMP_EN), .Y(CMP_OUT[0]) );
  INVXLM U11 ( .A(B_Cmp[6]), .Y(n24) );
  OAI21XLM U12 ( .A0(B_Cmp[5]), .A1(n22), .B0(n12), .Y(n13) );
  NOR2BXLM U13 ( .AN(A_Cmp[0]), .B(B_Cmp[0]), .Y(n7) );
  INVXLM U14 ( .A(B_Cmp[4]), .Y(n23) );
  NAND2XLM U15 ( .A(B_Cmp[2]), .B(n20), .Y(n4) );
  OAI2BB1XLM U16 ( .A0N(n7), .A1N(A_Cmp[1]), .B0(B_Cmp[1]), .Y(n6) );
  NAND2XLM U17 ( .A(B_Cmp[5]), .B(n22), .Y(n14) );
  NAND2XLM U18 ( .A(B_Cmp[3]), .B(n21), .Y(n10) );
  NAND2BXLM U19 ( .AN(A_Cmp[4]), .B(B_Cmp[4]), .Y(n11) );
  NOR2BXLM U20 ( .AN(B_Cmp[7]), .B(A_Cmp[7]), .Y(n17) );
  NAND2BXLM U21 ( .AN(A_Cmp[6]), .B(B_Cmp[6]), .Y(n15) );
  OAI2B2XLM U22 ( .A1N(A_Cmp[1]), .A0(n2), .B0(B_Cmp[1]), .B1(n2), .Y(n3) );
  NOR2BXLM U23 ( .AN(B_Cmp[0]), .B(A_Cmp[0]), .Y(n2) );
  OAI2BB2X1M U24 ( .B0(n1), .B1(ALU_FUN_LS[1]), .A0N(N17), .A1N(ALU_FUN_LS[1]), 
        .Y(n5) );
  OR4X1M U25 ( .A(n19), .B(n18), .C(N17), .D(n17), .Y(n1) );
  AND3X2M U26 ( .A(N17), .B(ALU_FUN_LS[1]), .C(CMP_EN), .Y(CMP_OUT[1]) );
  INVX2M U27 ( .A(A_Cmp[2]), .Y(n20) );
  INVX2M U28 ( .A(A_Cmp[3]), .Y(n21) );
  INVX2M U29 ( .A(A_Cmp[5]), .Y(n22) );
  NAND4X1M U30 ( .A(n3), .B(n15), .C(n14), .D(n11), .Y(n19) );
  CLKNAND2X2M U31 ( .A(n10), .B(n4), .Y(n18) );
  OAI211X1M U32 ( .A0(A_Cmp[1]), .A1(n7), .B0(n6), .C0(n4), .Y(n8) );
  AOI32X1M U33 ( .A0(n11), .A1(n10), .A2(n9), .B0(A_Cmp[4]), .B1(n23), .Y(n12)
         );
  AOI32X1M U34 ( .A0(n15), .A1(n14), .A2(n13), .B0(A_Cmp[6]), .B1(n24), .Y(n16) );
  OAI2B2X1M U35 ( .A1N(A_Cmp[7]), .A0(B_Cmp[7]), .B0(n17), .B1(n16), .Y(N17)
         );
endmodule


module SHIFT_UNIT_DATA_WIDTH8 ( A_Shift, B_Shift, clk, SHIFT_EN, ALU_FUN_LS, 
        SHIFT_OUT_reg, SHIFT_Flag_reg );
  input [7:0] A_Shift;
  input [7:0] B_Shift;
  input [1:0] ALU_FUN_LS;
  output [7:0] SHIFT_OUT_reg;
  input clk, SHIFT_EN;
  output SHIFT_Flag_reg;
  wire   n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n1, n2, n3, n4, n5;
  wire   [7:0] SHIFT_OUT;

  DFFQX2M \SHIFT_OUT_reg_reg[6]  ( .D(SHIFT_OUT[6]), .CK(clk), .Q(
        SHIFT_OUT_reg[6]) );
  DFFQX2M \SHIFT_OUT_reg_reg[5]  ( .D(SHIFT_OUT[5]), .CK(clk), .Q(
        SHIFT_OUT_reg[5]) );
  DFFQX2M \SHIFT_OUT_reg_reg[4]  ( .D(SHIFT_OUT[4]), .CK(clk), .Q(
        SHIFT_OUT_reg[4]) );
  DFFQX2M \SHIFT_OUT_reg_reg[3]  ( .D(SHIFT_OUT[3]), .CK(clk), .Q(
        SHIFT_OUT_reg[3]) );
  DFFQX2M \SHIFT_OUT_reg_reg[2]  ( .D(SHIFT_OUT[2]), .CK(clk), .Q(
        SHIFT_OUT_reg[2]) );
  DFFQX2M \SHIFT_OUT_reg_reg[1]  ( .D(SHIFT_OUT[1]), .CK(clk), .Q(
        SHIFT_OUT_reg[1]) );
  DFFTRX2M \SHIFT_OUT_reg_reg[7]  ( .D(n2), .RN(SHIFT_EN), .CK(clk), .Q(
        SHIFT_OUT_reg[7]) );
  DFFTRX2M \SHIFT_OUT_reg_reg[0]  ( .D(n1), .RN(SHIFT_EN), .CK(clk), .Q(
        SHIFT_OUT_reg[0]) );
  DFFQX2M SHIFT_Flag_reg_reg ( .D(SHIFT_EN), .CK(clk), .Q(SHIFT_Flag_reg) );
  AOI22XLM U3 ( .A0(A_Shift[5]), .A1(n8), .B0(A_Shift[7]), .B1(n12), .Y(n9) );
  AOI22XLM U4 ( .A0(B_Shift[5]), .A1(n7), .B0(B_Shift[7]), .B1(n11), .Y(n10)
         );
  AOI22XLM U5 ( .A0(B_Shift[1]), .A1(n7), .B0(B_Shift[3]), .B1(n11), .Y(n20)
         );
  AOI22XLM U6 ( .A0(B_Shift[3]), .A1(n7), .B0(n11), .B1(B_Shift[5]), .Y(n16)
         );
  AOI22XLM U7 ( .A0(A_Shift[4]), .A1(n8), .B0(n12), .B1(A_Shift[6]), .Y(n13)
         );
  AOI22XLM U8 ( .A0(B_Shift[4]), .A1(n7), .B0(n11), .B1(B_Shift[6]), .Y(n14)
         );
  AOI22XLM U9 ( .A0(B_Shift[0]), .A1(n7), .B0(B_Shift[2]), .B1(n11), .Y(n22)
         );
  AOI22XLM U10 ( .A0(B_Shift[2]), .A1(n7), .B0(B_Shift[4]), .B1(n11), .Y(n18)
         );
  AO22XLM U11 ( .A0(B_Shift[6]), .A1(n7), .B0(A_Shift[6]), .B1(n8), .Y(n2) );
  AO22XLM U12 ( .A0(B_Shift[1]), .A1(n11), .B0(A_Shift[1]), .B1(n12), .Y(n1)
         );
  NOR2X4M U13 ( .A(n5), .B(n4), .Y(n7) );
  INVX2M U14 ( .A(SHIFT_EN), .Y(n3) );
  NOR2X4M U15 ( .A(n5), .B(ALU_FUN_LS[0]), .Y(n11) );
  NOR2X4M U16 ( .A(ALU_FUN_LS[0]), .B(ALU_FUN_LS[1]), .Y(n12) );
  NOR2X4M U17 ( .A(n4), .B(ALU_FUN_LS[1]), .Y(n8) );
  INVX2M U18 ( .A(ALU_FUN_LS[1]), .Y(n5) );
  INVX2M U19 ( .A(ALU_FUN_LS[0]), .Y(n4) );
  AOI21X2M U20 ( .A0(n21), .A1(n22), .B0(n3), .Y(SHIFT_OUT[1]) );
  AOI22X1M U21 ( .A0(A_Shift[0]), .A1(n8), .B0(A_Shift[2]), .B1(n12), .Y(n21)
         );
  AOI21X2M U22 ( .A0(n19), .A1(n20), .B0(n3), .Y(SHIFT_OUT[2]) );
  AOI22X1M U23 ( .A0(A_Shift[1]), .A1(n8), .B0(A_Shift[3]), .B1(n12), .Y(n19)
         );
  AOI21X2M U24 ( .A0(n17), .A1(n18), .B0(n3), .Y(SHIFT_OUT[3]) );
  AOI22X1M U25 ( .A0(A_Shift[2]), .A1(n8), .B0(A_Shift[4]), .B1(n12), .Y(n17)
         );
  AOI21X2M U26 ( .A0(n15), .A1(n16), .B0(n3), .Y(SHIFT_OUT[4]) );
  AOI22X1M U27 ( .A0(A_Shift[3]), .A1(n8), .B0(n12), .B1(A_Shift[5]), .Y(n15)
         );
  AOI21X2M U28 ( .A0(n13), .A1(n14), .B0(n3), .Y(SHIFT_OUT[5]) );
  AOI21X2M U29 ( .A0(n9), .A1(n10), .B0(n3), .Y(SHIFT_OUT[6]) );
endmodule


module ALU_TOP_00000008 ( A, B, ALU_FUNC, CLK, ALU_EN, ALU_vld_OUT, ALU_OUT );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUNC;
  output [15:0] ALU_OUT;
  input CLK, ALU_EN;
  output ALU_vld_OUT;
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
  ARITHMETIC_UNIT_DATA_WIDTH8 U_ARITHMETIC_UNIT ( .A_Arith(A), .B_Arith(B), 
        .clk(CLK), .Arith_En(_8_net_), .ALU_FUN_LS(ALU_FUNC[1:0]), 
        .Arith_OUT_reg(Arith_OUT), .Carry_OUT_reg(Carry_OUT), .Arith_Flag_reg(
        Arith_Flag) );
  LOGIC_UNIT_DATA_WIDTH8 U_LOGIC_UNIT ( .A_Logic(A), .B_Logic(B), .clk(CLK), 
        .Logic_En(_9_net_), .ALU_FUN_LS(ALU_FUNC[1:0]), .Logic_OUT_reg(
        Logic_OUT), .Logic_Flag_reg(Logic_Flag) );
  CMP_UNIT_DATA_WIDTH8 U_CMP_UNIT ( .A_Cmp(A), .B_Cmp(B), .clk(CLK), .CMP_EN(
        _10_net_), .ALU_FUN_LS(ALU_FUNC[1:0]), .CMP_OUT_reg({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, CMP_OUT[1:0]}), 
        .CMP_Flag_reg(CMP_Flag) );
  SHIFT_UNIT_DATA_WIDTH8 U_SHIFT_UNIT ( .A_Shift(A), .B_Shift(B), .clk(CLK), 
        .SHIFT_EN(_11_net_), .ALU_FUN_LS(ALU_FUNC[1:0]), .SHIFT_OUT_reg(
        SHIFT_OUT), .SHIFT_Flag_reg(SHIFT_Flag) );
  OR2X2M U2 ( .A(ALU_EN), .B(LOGIC_Enable), .Y(_9_net_) );
  OR2X2M U3 ( .A(ALU_EN), .B(Arith_Enable), .Y(_8_net_) );
  OR2X2M U4 ( .A(ALU_EN), .B(SHIFT_Enable), .Y(_11_net_) );
  OR2X2M U5 ( .A(ALU_EN), .B(CMP_Enable), .Y(_10_net_) );
  AND2X2M U6 ( .A(SHIFT_Flag), .B(ALU_EN), .Y(_7_net_) );
  AND2X2M U7 ( .A(CMP_Flag), .B(ALU_EN), .Y(_6_net_) );
  AND2X2M U8 ( .A(Arith_Flag), .B(ALU_EN), .Y(_4_net_) );
  AND2X2M U9 ( .A(Logic_Flag), .B(ALU_EN), .Y(_5_net_) );
endmodule


module serializer ( P_DATA, ser_en, clk, rst, ser_done, ser_data );
  input [7:0] P_DATA;
  input ser_en, clk, rst;
  output ser_done, ser_data;
  wire   N3, N4, N5, N6, N18, N19, N20, N22, n4, n5, n6, n7, n1, n2, n3, n8,
         n9, n10, n11;
  wire   [7:0] P_DATA_reg;

  DFFRQX2M ser_done_reg ( .D(N22), .CK(clk), .RN(n1), .Q(ser_done) );
  DFFRQX2M \ser_Count_reg[2]  ( .D(n10), .CK(clk), .RN(n1), .Q(N5) );
  DFFRQX2M \ser_Count_reg[1]  ( .D(N20), .CK(clk), .RN(n1), .Q(N4) );
  DFFRQX2M \ser_Count_reg[0]  ( .D(N19), .CK(clk), .RN(n1), .Q(N3) );
  DFFRQX2M ser_data_reg ( .D(N18), .CK(clk), .RN(n1), .Q(ser_data) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(rst), .Y(n2) );
  NAND2X2M U5 ( .A(ser_en), .B(n4), .Y(n6) );
  INVX2M U6 ( .A(ser_en), .Y(n9) );
  NOR2X2M U7 ( .A(n9), .B(n4), .Y(N22) );
  NOR2X2M U8 ( .A(N3), .B(n6), .Y(N19) );
  NOR2X2M U9 ( .A(n7), .B(n6), .Y(N20) );
  XNOR2X2M U10 ( .A(N3), .B(N4), .Y(n7) );
  NOR2BX2M U11 ( .AN(P_DATA[0]), .B(n9), .Y(P_DATA_reg[0]) );
  NOR2BX2M U12 ( .AN(P_DATA[4]), .B(n9), .Y(P_DATA_reg[4]) );
  NOR2BX2M U13 ( .AN(P_DATA[2]), .B(n9), .Y(P_DATA_reg[2]) );
  NOR2BX2M U14 ( .AN(P_DATA[6]), .B(n9), .Y(P_DATA_reg[6]) );
  NOR2BX2M U15 ( .AN(P_DATA[3]), .B(n9), .Y(P_DATA_reg[3]) );
  NOR2BX2M U16 ( .AN(P_DATA[7]), .B(n9), .Y(P_DATA_reg[7]) );
  NOR2BX2M U17 ( .AN(P_DATA[1]), .B(n9), .Y(P_DATA_reg[1]) );
  NOR2BX2M U18 ( .AN(P_DATA[5]), .B(n9), .Y(P_DATA_reg[5]) );
  NOR2BX2M U19 ( .AN(N6), .B(n9), .Y(N18) );
  MX2X2M U20 ( .A(n8), .B(n3), .S0(N5), .Y(N6) );
  MX4X1M U21 ( .A(P_DATA_reg[4]), .B(P_DATA_reg[5]), .C(P_DATA_reg[6]), .D(
        P_DATA_reg[7]), .S0(N3), .S1(N4), .Y(n3) );
  MX4X1M U22 ( .A(P_DATA_reg[0]), .B(P_DATA_reg[1]), .C(P_DATA_reg[2]), .D(
        P_DATA_reg[3]), .S0(N3), .S1(N4), .Y(n8) );
  INVX2M U23 ( .A(n5), .Y(n10) );
  AOI32X1M U24 ( .A0(n11), .A1(N3), .A2(N4), .B0(N5), .B1(n11), .Y(n5) );
  INVX2M U25 ( .A(n6), .Y(n11) );
  NAND3X2M U26 ( .A(N4), .B(N3), .C(N5), .Y(n4) );
endmodule


module FSM_TX ( Data_Valid, rst, PAR_EN, ser_done, clk, ser_en, PAR_Calc_en, 
        mux_sel, busy );
  output [1:0] mux_sel;
  input Data_Valid, rst, PAR_EN, ser_done, clk;
  output ser_en, PAR_Calc_en, busy;
  wire   n6, n7, n8, n9, n10, n11, n1, n2, n3, n4, n5;
  wire   [2:0] curent_state;
  wire   [2:0] next_state;

  DFFRQX2M \curent_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(rst), .Q(
        curent_state[0]) );
  DFFRQX2M \curent_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(rst), .Q(
        curent_state[2]) );
  DFFRQX2M \curent_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(rst), .Q(
        curent_state[1]) );
  NAND2X2M U3 ( .A(n10), .B(n6), .Y(mux_sel[0]) );
  OAI2BB1X2M U4 ( .A0N(curent_state[1]), .A1N(curent_state[0]), .B0(n10), .Y(
        mux_sel[1]) );
  INVX2M U5 ( .A(PAR_Calc_en), .Y(n1) );
  OAI21BX1M U6 ( .A0(n6), .A1(n5), .B0N(ser_en), .Y(next_state[1]) );
  NAND3X2M U7 ( .A(n2), .B(n3), .C(curent_state[1]), .Y(n6) );
  INVX2M U8 ( .A(curent_state[0]), .Y(n2) );
  INVX2M U9 ( .A(curent_state[2]), .Y(n3) );
  NOR3X2M U10 ( .A(curent_state[1]), .B(curent_state[2]), .C(n2), .Y(
        PAR_Calc_en) );
  NOR2X2M U11 ( .A(curent_state[0]), .B(curent_state[1]), .Y(n9) );
  NOR2X2M U12 ( .A(curent_state[2]), .B(n9), .Y(n10) );
  OAI21X2M U13 ( .A0(ser_done), .A1(n6), .B0(n1), .Y(ser_en) );
  OAI31X1M U14 ( .A0(n5), .A1(n6), .A2(n4), .B0(n8), .Y(next_state[0]) );
  NAND2X2M U15 ( .A(Data_Valid), .B(n9), .Y(n8) );
  OAI31X1M U16 ( .A0(n4), .A1(PAR_EN), .A2(n6), .B0(n7), .Y(next_state[2]) );
  NAND3X2M U17 ( .A(curent_state[1]), .B(n3), .C(curent_state[0]), .Y(n7) );
  INVX2M U18 ( .A(ser_done), .Y(n4) );
  NAND4X2M U19 ( .A(n11), .B(n6), .C(n1), .D(n7), .Y(busy) );
  NAND2X2M U20 ( .A(curent_state[2]), .B(n9), .Y(n11) );
  INVX2M U21 ( .A(PAR_EN), .Y(n5) );
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


module UART_TX ( P_DATA, Data_Valid, PAR_EN, PAR_TYP, clk, rst, TX_OUT_top, 
        busy_top );
  input [7:0] P_DATA;
  input Data_Valid, PAR_EN, PAR_TYP, clk, rst;
  output TX_OUT_top, busy_top;
  wire   ser_en, ser_done, ser_data, PAR_Calc_en, PAR_bit;
  wire   [1:0] mux_sel_top;

  serializer u_serializer ( .P_DATA(P_DATA), .ser_en(ser_en), .clk(clk), .rst(
        rst), .ser_done(ser_done), .ser_data(ser_data) );
  FSM_TX u_FSM ( .Data_Valid(Data_Valid), .rst(rst), .PAR_EN(PAR_EN), 
        .ser_done(ser_done), .clk(clk), .ser_en(ser_en), .PAR_Calc_en(
        PAR_Calc_en), .mux_sel(mux_sel_top), .busy(busy_top) );
  Par_Calc u_Par_Calc ( .PAR_TYP(PAR_TYP), .Data_Valid(Data_Valid), 
        .PAR_Calc_en(PAR_Calc_en), .P_DATA(P_DATA), .PAR_bit(PAR_bit) );
  MUX_start_bit0_stop_bit1 u_MUX ( .mux_sel(mux_sel_top), .ser_data(ser_data), 
        .clk(clk), .PAR_bit(PAR_bit), .TX_OUT(TX_OUT_top) );
endmodule


module FSM_RX ( RX_in, PAR_en, clk, rst, Par_err, STR_err, STP_err, bit_cnt, 
        edge_cnt, prescale, par_chk_en, enable, dat_samp_en, str_chk_en, 
        stp_chk_en, data_valid, deser_en, PAR_CHK_New_bit, reset_bit_cnt, 
        deser_New_bit );
  input [3:0] bit_cnt;
  input [4:0] edge_cnt;
  input [4:0] prescale;
  input RX_in, PAR_en, clk, rst, Par_err, STR_err, STP_err;
  output par_chk_en, enable, dat_samp_en, str_chk_en, stp_chk_en, data_valid,
         deser_en, PAR_CHK_New_bit, reset_bit_cnt, deser_New_bit;
  wire   data_valid, PAR_CHK_New_bit, N33, n10, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n11, n12, n13, n27;
  wire   [2:0] curent_state;
  wire   [2:0] next_state;
  assign deser_en = data_valid;
  assign deser_New_bit = PAR_CHK_New_bit;

  NAND2BX8M U25 ( .AN(STR_err), .B(n23), .Y(n19) );
  DFFRQX2M \curent_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(rst), .Q(
        curent_state[2]) );
  DFFRQX2M \curent_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(rst), .Q(
        curent_state[1]) );
  DFFRQX2M \curent_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(rst), .Q(
        curent_state[0]) );
  NOR3X2M U3 ( .A(n12), .B(N33), .C(n19), .Y(PAR_CHK_New_bit) );
  NOR4BX1M U4 ( .AN(bit_cnt[3]), .B(n11), .C(bit_cnt[0]), .D(bit_cnt[2]), .Y(
        n17) );
  INVX2M U5 ( .A(str_chk_en), .Y(n8) );
  NOR3X1M U6 ( .A(N33), .B(Par_err), .C(n15), .Y(stp_chk_en) );
  NOR2X1M U7 ( .A(n21), .B(N33), .Y(str_chk_en) );
  OAI221X1M U8 ( .A0(RX_in), .A1(n14), .B0(n21), .B1(n7), .C0(n20), .Y(
        next_state[0]) );
  NOR2X2M U9 ( .A(n23), .B(STR_err), .Y(n18) );
  NAND4BBX1M U10 ( .AN(stp_chk_en), .BN(PAR_CHK_New_bit), .C(n26), .D(n8), .Y(
        dat_samp_en) );
  NAND3X2M U11 ( .A(n9), .B(n7), .C(n13), .Y(n26) );
  INVXLM U12 ( .A(N33), .Y(n7) );
  NOR2X2M U13 ( .A(STP_err), .B(n14), .Y(data_valid) );
  INVX2M U14 ( .A(n22), .Y(n12) );
  AOI2BB2XLM U15 ( .B0(n17), .B1(n13), .A0N(n15), .A1N(n7), .Y(n16) );
  OAI2B1X2M U16 ( .A1N(Par_err), .A0(n15), .B0(n16), .Y(par_chk_en) );
  INVX2M U17 ( .A(n17), .Y(n9) );
  INVX2M U18 ( .A(n24), .Y(n13) );
  NAND4X2M U19 ( .A(n12), .B(n24), .C(n21), .D(n27), .Y(enable) );
  NAND2X2M U20 ( .A(n14), .B(n27), .Y(reset_bit_cnt) );
  NAND2X2M U21 ( .A(n25), .B(n27), .Y(n14) );
  AOI32X1M U22 ( .A0(PAR_en), .A1(n22), .A2(n18), .B0(n9), .B1(n13), .Y(n20)
         );
  OAI211X2M U23 ( .A0(n12), .A1(n19), .B0(n8), .C0(n20), .Y(next_state[1]) );
  OAI31X1M U24 ( .A0(n10), .A1(PAR_en), .A2(n12), .B0(n16), .Y(next_state[2])
         );
  INVX2M U26 ( .A(n18), .Y(n10) );
  NOR3BX2M U27 ( .AN(curent_state[1]), .B(curent_state[0]), .C(curent_state[2]), .Y(n22) );
  NAND4BX1M U28 ( .AN(bit_cnt[2]), .B(bit_cnt[0]), .C(bit_cnt[3]), .D(n11), 
        .Y(n23) );
  NAND3BX2M U29 ( .AN(curent_state[1]), .B(n27), .C(curent_state[0]), .Y(n21)
         );
  NAND2X2M U30 ( .A(curent_state[2]), .B(n25), .Y(n15) );
  NAND3X2M U31 ( .A(curent_state[0]), .B(n27), .C(curent_state[1]), .Y(n24) );
  NOR2X2M U32 ( .A(curent_state[1]), .B(curent_state[0]), .Y(n25) );
  INVX2M U33 ( .A(curent_state[2]), .Y(n27) );
  INVX2M U34 ( .A(bit_cnt[1]), .Y(n11) );
  XNOR2X1M U35 ( .A(prescale[4]), .B(edge_cnt[4]), .Y(n6) );
  XNOR2X1M U36 ( .A(prescale[3]), .B(edge_cnt[3]), .Y(n5) );
  CLKXOR2X2M U37 ( .A(prescale[0]), .B(edge_cnt[0]), .Y(n2) );
  CLKXOR2X2M U38 ( .A(prescale[1]), .B(edge_cnt[1]), .Y(n1) );
  NOR2X1M U39 ( .A(n2), .B(n1), .Y(n4) );
  XNOR2X1M U40 ( .A(prescale[2]), .B(edge_cnt[2]), .Y(n3) );
  NAND4X1M U41 ( .A(n6), .B(n5), .C(n4), .D(n3), .Y(N33) );
endmodule


module data_sampler ( RX_in, CLK, RST, dat_samp_en, edge_cnt, prescale, 
        sampled_bit );
  input [4:0] edge_cnt;
  input [4:0] prescale;
  input RX_in, CLK, RST, dat_samp_en;
  output sampled_bit;
  wire   sampled_bit_reg, N75, n3, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n1, n2, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n42, n43, n44, n45, n46, n47;
  wire   [2:0] internal_sampled_bit;

  DFFRQX2M sampled_bit_reg_reg ( .D(sampled_bit), .CK(CLK), .RN(RST), .Q(
        sampled_bit_reg) );
  DFFRQX2M \internal_sampled_bit_reg[0]  ( .D(n41), .CK(CLK), .RN(RST), .Q(
        internal_sampled_bit[0]) );
  DFFRQX2M \internal_sampled_bit_reg[1]  ( .D(n40), .CK(CLK), .RN(RST), .Q(
        internal_sampled_bit[1]) );
  DFFRX1M \internal_sampled_bit_reg[2]  ( .D(n39), .CK(CLK), .RN(RST), .QN(n3)
         );
  INVX2M U3 ( .A(n32), .Y(n42) );
  NAND3BX2M U4 ( .AN(n31), .B(n24), .C(n47), .Y(n25) );
  OAI2BB2X4M U5 ( .B0(n13), .B1(n14), .A0N(sampled_bit_reg), .A1N(n14), .Y(
        sampled_bit) );
  AOI21X2M U6 ( .A0(internal_sampled_bit[1]), .A1(internal_sampled_bit[0]), 
        .B0(n15), .Y(n13) );
  NAND2X2M U7 ( .A(dat_samp_en), .B(N75), .Y(n14) );
  AOI21X2M U8 ( .A0(n45), .A1(n46), .B0(n3), .Y(n15) );
  OAI22X1M U9 ( .A0(edge_cnt[4]), .A1(n43), .B0(prescale[4]), .B1(edge_cnt[4]), 
        .Y(n32) );
  INVX2M U10 ( .A(edge_cnt[3]), .Y(n43) );
  NAND2X2M U11 ( .A(n23), .B(n29), .Y(n28) );
  OAI33X2M U12 ( .A0(n30), .A1(n42), .A2(n47), .B0(n24), .B1(n42), .B2(n31), 
        .Y(n29) );
  OR3X2M U13 ( .A(edge_cnt[0]), .B(edge_cnt[1]), .C(edge_cnt[2]), .Y(n30) );
  OAI21X2M U14 ( .A0(n26), .A1(n45), .B0(n27), .Y(n40) );
  AOI21X2M U15 ( .A0(n20), .A1(n43), .B0(n28), .Y(n26) );
  OAI211X2M U16 ( .A0(edge_cnt[3]), .A1(n18), .B0(RX_in), .C0(n12), .Y(n27) );
  INVX2M U17 ( .A(n28), .Y(n12) );
  NOR2X2M U18 ( .A(n47), .B(prescale[4]), .Y(n20) );
  INVX2M U19 ( .A(prescale[3]), .Y(n47) );
  NAND2X2M U20 ( .A(edge_cnt[0]), .B(n44), .Y(n24) );
  OAI21X2M U21 ( .A0(n21), .A1(n22), .B0(n23), .Y(n19) );
  NOR3X2M U22 ( .A(n25), .B(edge_cnt[0]), .C(n44), .Y(n21) );
  NOR4X1M U23 ( .A(edge_cnt[2]), .B(n42), .C(n24), .D(n47), .Y(n22) );
  NAND3BX2M U24 ( .AN(edge_cnt[4]), .B(edge_cnt[2]), .C(n43), .Y(n31) );
  INVX2M U25 ( .A(edge_cnt[1]), .Y(n44) );
  NAND2X2M U26 ( .A(n23), .B(n36), .Y(n35) );
  OAI32X1M U27 ( .A0(n37), .A1(n44), .A2(n47), .B0(edge_cnt[1]), .B1(n25), .Y(
        n36) );
  NAND3X2M U28 ( .A(edge_cnt[0]), .B(n32), .C(edge_cnt[2]), .Y(n37) );
  NAND2BX2M U29 ( .AN(prescale[4]), .B(prescale[3]), .Y(n18) );
  OAI21X2M U30 ( .A0(n16), .A1(n3), .B0(n17), .Y(n39) );
  AOI21X2M U31 ( .A0(n20), .A1(n43), .B0(n19), .Y(n16) );
  OAI211X2M U32 ( .A0(edge_cnt[3]), .A1(n18), .B0(n11), .C0(RX_in), .Y(n17) );
  INVX2M U33 ( .A(n19), .Y(n11) );
  AND4X2M U34 ( .A(prescale[2]), .B(prescale[1]), .C(prescale[0]), .D(n38), 
        .Y(n23) );
  NAND2X2M U35 ( .A(prescale[4]), .B(n47), .Y(n38) );
  OAI21X2M U36 ( .A0(n33), .A1(n46), .B0(n34), .Y(n41) );
  AOI21X2M U37 ( .A0(n20), .A1(edge_cnt[3]), .B0(n35), .Y(n33) );
  OAI211X2M U38 ( .A0(n43), .A1(n18), .B0(RX_in), .C0(n10), .Y(n34) );
  INVX2M U39 ( .A(n35), .Y(n10) );
  INVX2M U40 ( .A(internal_sampled_bit[1]), .Y(n45) );
  INVX2M U41 ( .A(internal_sampled_bit[0]), .Y(n46) );
  CLKXOR2X2M U42 ( .A(prescale[2]), .B(edge_cnt[2]), .Y(n9) );
  NOR2BX1M U43 ( .AN(prescale[0]), .B(edge_cnt[0]), .Y(n1) );
  OAI2B2X1M U44 ( .A1N(edge_cnt[1]), .A0(n1), .B0(prescale[1]), .B1(n1), .Y(n5) );
  NOR2BX1M U45 ( .AN(edge_cnt[0]), .B(prescale[0]), .Y(n2) );
  OAI2B2X1M U46 ( .A1N(prescale[1]), .A0(n2), .B0(edge_cnt[1]), .B1(n2), .Y(n4) );
  CLKNAND2X2M U47 ( .A(n5), .B(n4), .Y(n8) );
  CLKXOR2X2M U48 ( .A(prescale[3]), .B(edge_cnt[3]), .Y(n7) );
  CLKXOR2X2M U49 ( .A(prescale[4]), .B(edge_cnt[4]), .Y(n6) );
  NOR4X1M U50 ( .A(n9), .B(n8), .C(n7), .D(n6), .Y(N75) );
endmodule


module edge_bit_counter ( enable, reset_bit_cnt, CLK, RST, prescale, bit_cnt, 
        edge_cnt );
  input [4:0] prescale;
  output [3:0] bit_cnt;
  output [4:0] edge_cnt;
  input enable, reset_bit_cnt, CLK, RST;
  wire   N9, N12, N13, N14, N21, N22, N23, N24, N25, N39, N40, N41, N42, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, \add_27/carry[4] ,
         \add_27/carry[3] , \add_27/carry[2] , n1, n2, n3, n13, n14, n15, n16,
         n17, n18, n19, n20;

  DFFRQX2M \bit_cnt_reg[3]  ( .D(N42), .CK(CLK), .RN(n2), .Q(bit_cnt[3]) );
  DFFRQX2M \bit_cnt_reg[2]  ( .D(N41), .CK(CLK), .RN(n2), .Q(bit_cnt[2]) );
  DFFRQX2M \bit_cnt_reg[1]  ( .D(N40), .CK(CLK), .RN(n2), .Q(bit_cnt[1]) );
  DFFRQX2M \bit_cnt_reg[0]  ( .D(N39), .CK(CLK), .RN(n2), .Q(bit_cnt[0]) );
  DFFRQX2M \edge_cnt_reg[4]  ( .D(N25), .CK(CLK), .RN(n2), .Q(edge_cnt[4]) );
  DFFRQX2M \edge_cnt_reg[2]  ( .D(N23), .CK(CLK), .RN(n2), .Q(edge_cnt[2]) );
  DFFRQX2M \edge_cnt_reg[1]  ( .D(N22), .CK(CLK), .RN(n2), .Q(edge_cnt[1]) );
  DFFRQX2M \edge_cnt_reg[0]  ( .D(N21), .CK(CLK), .RN(n2), .Q(edge_cnt[0]) );
  DFFRQX2M \edge_cnt_reg[3]  ( .D(N24), .CK(CLK), .RN(n2), .Q(edge_cnt[3]) );
  NOR4X2M U3 ( .A(n20), .B(n19), .C(n18), .D(n17), .Y(N9) );
  INVX2M U4 ( .A(n3), .Y(n2) );
  INVX2M U5 ( .A(RST), .Y(n3) );
  NAND2BX1M U6 ( .AN(N9), .B(enable), .Y(n12) );
  NOR2BX2M U7 ( .AN(N12), .B(n12), .Y(N22) );
  NOR2BX2M U8 ( .AN(N13), .B(n12), .Y(N23) );
  NOR2BX2M U9 ( .AN(N14), .B(n12), .Y(N24) );
  NAND2BX2M U10 ( .AN(reset_bit_cnt), .B(enable), .Y(n5) );
  NAND2XLM U11 ( .A(N9), .B(bit_cnt[0]), .Y(n9) );
  NOR2X2M U12 ( .A(n7), .B(n5), .Y(N41) );
  XNOR2X2M U13 ( .A(bit_cnt[2]), .B(n8), .Y(n7) );
  NOR2BX2M U14 ( .AN(bit_cnt[1]), .B(n9), .Y(n8) );
  NOR2X2M U15 ( .A(n4), .B(n5), .Y(N42) );
  CLKXOR2X2M U16 ( .A(n6), .B(bit_cnt[3]), .Y(n4) );
  NAND4XLM U17 ( .A(bit_cnt[2]), .B(N9), .C(bit_cnt[1]), .D(bit_cnt[0]), .Y(n6) );
  NOR2X2M U18 ( .A(n11), .B(n5), .Y(N39) );
  XNOR2XLM U19 ( .A(bit_cnt[0]), .B(N9), .Y(n11) );
  NOR2X2M U20 ( .A(n1), .B(n12), .Y(N25) );
  XNOR2X2M U21 ( .A(\add_27/carry[4] ), .B(edge_cnt[4]), .Y(n1) );
  NOR2X2M U22 ( .A(edge_cnt[0]), .B(n12), .Y(N21) );
  NOR2X2M U23 ( .A(n10), .B(n5), .Y(N40) );
  CLKXOR2X2M U24 ( .A(n9), .B(bit_cnt[1]), .Y(n10) );
  ADDHX1M U25 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_27/carry[2] ), .S(
        N12) );
  ADDHX1M U26 ( .A(edge_cnt[2]), .B(\add_27/carry[2] ), .CO(\add_27/carry[3] ), 
        .S(N13) );
  ADDHX1M U27 ( .A(edge_cnt[3]), .B(\add_27/carry[3] ), .CO(\add_27/carry[4] ), 
        .S(N14) );
  CLKXOR2X2M U28 ( .A(prescale[2]), .B(edge_cnt[2]), .Y(n20) );
  NOR2BX1M U29 ( .AN(prescale[0]), .B(edge_cnt[0]), .Y(n13) );
  OAI2B2X1M U30 ( .A1N(edge_cnt[1]), .A0(n13), .B0(prescale[1]), .B1(n13), .Y(
        n16) );
  NOR2BX1M U31 ( .AN(edge_cnt[0]), .B(prescale[0]), .Y(n14) );
  OAI2B2X1M U32 ( .A1N(prescale[1]), .A0(n14), .B0(edge_cnt[1]), .B1(n14), .Y(
        n15) );
  CLKNAND2X2M U33 ( .A(n16), .B(n15), .Y(n19) );
  CLKXOR2X2M U34 ( .A(prescale[3]), .B(edge_cnt[3]), .Y(n18) );
  CLKXOR2X2M U35 ( .A(prescale[4]), .B(edge_cnt[4]), .Y(n17) );
endmodule


module deserializer ( sampled_bit, deser_en, RST, CLK, deser_New_bit, P_DAta
 );
  output [7:0] P_DAta;
  input sampled_bit, deser_en, RST, CLK, deser_New_bit;
  wire   n2, n9, n10, n11, n12, n13, n14, n15, n16, n1, n3, n4, n5, n6, n7, n8,
         n17;

  DFFRQX2M \shift_reg_reg[0]  ( .D(n9), .CK(CLK), .RN(RST), .Q(P_DAta[0]) );
  DFFRQX2M \shift_reg_reg[7]  ( .D(n16), .CK(CLK), .RN(RST), .Q(P_DAta[7]) );
  DFFRQX2M \shift_reg_reg[6]  ( .D(n15), .CK(CLK), .RN(RST), .Q(P_DAta[6]) );
  DFFRQX2M \shift_reg_reg[5]  ( .D(n14), .CK(CLK), .RN(RST), .Q(P_DAta[5]) );
  DFFRQX2M \shift_reg_reg[4]  ( .D(n13), .CK(CLK), .RN(RST), .Q(P_DAta[4]) );
  DFFRQX2M \shift_reg_reg[3]  ( .D(n12), .CK(CLK), .RN(RST), .Q(P_DAta[3]) );
  DFFRQX2M \shift_reg_reg[2]  ( .D(n11), .CK(CLK), .RN(RST), .Q(P_DAta[2]) );
  DFFRQX2M \shift_reg_reg[1]  ( .D(n10), .CK(CLK), .RN(RST), .Q(P_DAta[1]) );
  BUFX2M U2 ( .A(deser_New_bit), .Y(n1) );
  INVX2M U3 ( .A(n1), .Y(n2) );
  OAI22X1M U4 ( .A0(n2), .A1(n8), .B0(n1), .B1(n17), .Y(n10) );
  OAI22X1M U5 ( .A0(n2), .A1(n7), .B0(n1), .B1(n8), .Y(n11) );
  OAI22X1M U6 ( .A0(n2), .A1(n6), .B0(n1), .B1(n7), .Y(n12) );
  OAI22X1M U7 ( .A0(n2), .A1(n5), .B0(n1), .B1(n6), .Y(n13) );
  OAI22X1M U8 ( .A0(n2), .A1(n4), .B0(n1), .B1(n5), .Y(n14) );
  OAI22X1M U9 ( .A0(n2), .A1(n3), .B0(n1), .B1(n4), .Y(n15) );
  OAI2BB2X1M U10 ( .B0(n1), .B1(n3), .A0N(sampled_bit), .A1N(n1), .Y(n16) );
  OAI2BB2X1M U11 ( .B0(n17), .B1(n2), .A0N(P_DAta[0]), .A1N(n2), .Y(n9) );
  INVX2M U12 ( .A(P_DAta[7]), .Y(n3) );
  INVX2M U13 ( .A(P_DAta[1]), .Y(n17) );
  INVX2M U14 ( .A(P_DAta[2]), .Y(n8) );
  INVX2M U15 ( .A(P_DAta[3]), .Y(n7) );
  INVX2M U16 ( .A(P_DAta[4]), .Y(n6) );
  INVX2M U17 ( .A(P_DAta[5]), .Y(n5) );
  INVX2M U18 ( .A(P_DAta[6]), .Y(n4) );
endmodule


module PAR_CHK ( PAR_en, sampled_bit, par_chk_en, PAR_TYP, PAR_CHK_New_bit, 
        RST, CLK, Par_err );
  input PAR_en, sampled_bit, par_chk_en, PAR_TYP, PAR_CHK_New_bit, RST, CLK;
  output Par_err;
  wire   PAR_bit, TX_Par, N9, n2, n3, n4, n5, n7, n9, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n1, n6, n8, n10, n11, n12, n13, n14, n25,
         n26, n27;
  wire   [7:0] shift_reg;

  DFFRQX2M \shift_reg_reg[2]  ( .D(n22), .CK(CLK), .RN(n6), .Q(shift_reg[2])
         );
  DFFRQX2M \shift_reg_reg[0]  ( .D(n24), .CK(CLK), .RN(n6), .Q(shift_reg[0])
         );
  DFFRQX2M \shift_reg_reg[4]  ( .D(n20), .CK(CLK), .RN(n6), .Q(shift_reg[4])
         );
  DFFRQX2M \shift_reg_reg[1]  ( .D(n23), .CK(CLK), .RN(n6), .Q(shift_reg[1])
         );
  DFFRQX2M \shift_reg_reg[5]  ( .D(n19), .CK(CLK), .RN(n6), .Q(shift_reg[5])
         );
  DFFRQX2M \shift_reg_reg[7]  ( .D(n17), .CK(CLK), .RN(n6), .Q(shift_reg[7])
         );
  DFFRQX2M \shift_reg_reg[3]  ( .D(n21), .CK(CLK), .RN(n6), .Q(shift_reg[3])
         );
  DFFRQX2M \shift_reg_reg[6]  ( .D(n18), .CK(CLK), .RN(n6), .Q(shift_reg[6])
         );
  EDFFHQX2M TX_Par_reg ( .D(sampled_bit), .E(N9), .CK(CLK), .Q(TX_Par) );
  DFFRQX2M PAR_bit_reg ( .D(n16), .CK(CLK), .RN(n6), .Q(PAR_bit) );
  BUFX2M U2 ( .A(PAR_CHK_New_bit), .Y(n1) );
  INVX2M U3 ( .A(n8), .Y(n6) );
  INVX2M U4 ( .A(RST), .Y(n8) );
  INVX2M U5 ( .A(n1), .Y(n9) );
  NOR2BX2M U6 ( .AN(n6), .B(n27), .Y(N9) );
  OAI22X1M U7 ( .A0(n25), .A1(n9), .B0(n1), .B1(n26), .Y(n18) );
  OAI22X1M U8 ( .A0(n14), .A1(n9), .B0(n1), .B1(n25), .Y(n19) );
  OAI22X1M U9 ( .A0(n13), .A1(n9), .B0(n1), .B1(n14), .Y(n20) );
  OAI22X1M U10 ( .A0(n12), .A1(n9), .B0(n1), .B1(n13), .Y(n21) );
  OAI22X1M U11 ( .A0(n11), .A1(n9), .B0(n1), .B1(n12), .Y(n22) );
  OAI22X1M U12 ( .A0(n10), .A1(n9), .B0(n1), .B1(n11), .Y(n23) );
  OAI2BB2X1M U13 ( .B0(n1), .B1(n10), .A0N(sampled_bit), .A1N(n1), .Y(n24) );
  INVX2M U14 ( .A(par_chk_en), .Y(n27) );
  OAI2BB2X1M U15 ( .B0(n26), .B1(n9), .A0N(n9), .A1N(shift_reg[7]), .Y(n17) );
  OAI2BB2X1M U16 ( .B0(n27), .B1(n2), .A0N(n27), .A1N(PAR_bit), .Y(n16) );
  XOR3XLM U17 ( .A(n3), .B(PAR_TYP), .C(n4), .Y(n2) );
  XOR3XLM U18 ( .A(shift_reg[1]), .B(shift_reg[0]), .C(n5), .Y(n4) );
  XOR3XLM U19 ( .A(shift_reg[5]), .B(shift_reg[4]), .C(n7), .Y(n3) );
  NOR2BX2M U20 ( .AN(PAR_en), .B(n15), .Y(Par_err) );
  XNOR2X2M U21 ( .A(PAR_bit), .B(TX_Par), .Y(n15) );
  CLKXOR2X2M U22 ( .A(shift_reg[7]), .B(shift_reg[6]), .Y(n7) );
  CLKXOR2X2M U23 ( .A(n12), .B(shift_reg[3]), .Y(n5) );
  INVX2M U24 ( .A(shift_reg[2]), .Y(n12) );
  INVX2M U25 ( .A(shift_reg[3]), .Y(n13) );
  INVX2M U26 ( .A(shift_reg[6]), .Y(n26) );
  INVX2M U27 ( .A(shift_reg[0]), .Y(n10) );
  INVX2M U28 ( .A(shift_reg[5]), .Y(n25) );
  INVX2M U29 ( .A(shift_reg[1]), .Y(n11) );
  INVX2M U30 ( .A(shift_reg[4]), .Y(n14) );
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


module UART_RX ( RX_in, PAR_en, PAR_TYP, CLK_top, RST_top, prescale_top, 
        data_valid, P_DAta );
  input [4:0] prescale_top;
  output [7:0] P_DAta;
  input RX_in, PAR_en, PAR_TYP, CLK_top, RST_top;
  output data_valid;
  wire   Par_err, STR_err, STP_err, par_chk_en, enable, dat_samp_en,
         str_chk_en, stp_chk_en, deser_en, PAR_CHK_New_bit, reset_bit_cnt,
         deser_New_bit, sampled_bit, n1, n2;
  wire   [3:0] bit_cnt_top;
  wire   [4:0] edge_cnt_top;

  FSM_RX u_FSM ( .RX_in(RX_in), .PAR_en(PAR_en), .clk(CLK_top), .rst(n1), 
        .Par_err(Par_err), .STR_err(STR_err), .STP_err(STP_err), .bit_cnt(
        bit_cnt_top), .edge_cnt(edge_cnt_top), .prescale(prescale_top), 
        .par_chk_en(par_chk_en), .enable(enable), .dat_samp_en(dat_samp_en), 
        .str_chk_en(str_chk_en), .stp_chk_en(stp_chk_en), .data_valid(
        data_valid), .deser_en(deser_en), .PAR_CHK_New_bit(PAR_CHK_New_bit), 
        .reset_bit_cnt(reset_bit_cnt), .deser_New_bit(deser_New_bit) );
  data_sampler u_data_sampler ( .RX_in(RX_in), .CLK(CLK_top), .RST(n1), 
        .dat_samp_en(dat_samp_en), .edge_cnt(edge_cnt_top), .prescale(
        prescale_top), .sampled_bit(sampled_bit) );
  edge_bit_counter u_edge_bit_counter ( .enable(enable), .reset_bit_cnt(
        reset_bit_cnt), .CLK(CLK_top), .RST(n1), .prescale(prescale_top), 
        .bit_cnt(bit_cnt_top), .edge_cnt(edge_cnt_top) );
  deserializer u_deserializer ( .sampled_bit(sampled_bit), .deser_en(deser_en), 
        .RST(n1), .CLK(CLK_top), .deser_New_bit(deser_New_bit), .P_DAta(P_DAta) );
  PAR_CHK u_PAR_CHK ( .PAR_en(PAR_en), .sampled_bit(sampled_bit), .par_chk_en(
        par_chk_en), .PAR_TYP(PAR_TYP), .PAR_CHK_New_bit(PAR_CHK_New_bit), 
        .RST(n1), .CLK(CLK_top), .Par_err(Par_err) );
  STR_CHK u_STR_CHK ( .str_chk_en(str_chk_en), .RST(n1), .sampled_bit(
        sampled_bit), .STR_err(STR_err) );
  STP_CHK u_STP_CHK ( .stp_chk_en(stp_chk_en), .RST(n1), .sampled_bit(
        sampled_bit), .STP_err(STP_err) );
  INVX4M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST_top), .Y(n2) );
endmodule


module UART_00000008_00000005 ( RST, TX_CLK, RX_CLK, RX_IN_S, RX_OUT_P, 
        RX_OUT_V, TX_IN_P, TX_IN_V, TX_OUT_S, TX_OUT_V, Prescale, 
        parity_enable, parity_type );
  output [7:0] RX_OUT_P;
  input [7:0] TX_IN_P;
  input [4:0] Prescale;
  input RST, TX_CLK, RX_CLK, RX_IN_S, TX_IN_V, parity_enable, parity_type;
  output RX_OUT_V, TX_OUT_S, TX_OUT_V;


  UART_TX u_UART_TX_top ( .P_DATA(TX_IN_P), .Data_Valid(TX_IN_V), .PAR_EN(
        parity_enable), .PAR_TYP(parity_type), .clk(TX_CLK), .rst(RST), 
        .TX_OUT_top(TX_OUT_S), .busy_top(TX_OUT_V) );
  UART_RX u_UART_RX_top ( .RX_in(RX_IN_S), .PAR_en(parity_enable), .PAR_TYP(
        parity_type), .CLK_top(RX_CLK), .RST_top(RST), .prescale_top(Prescale), 
        .data_valid(RX_OUT_V), .P_DAta(RX_OUT_P) );
endmodule


module DATA_SYNC_00000002_00000008_1 ( Unsync_bus, bus_enable, CLK, RST, 
        sync_bus, enable_pulse );
  input [7:0] Unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST;
  output enable_pulse;
  wire   SYNC_enable, pulse_Gen_ff, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12;
  wire   [1:0] MULT_FLOP_SYNC;

  DFFRQX2M enable_pulse_reg ( .D(n12), .CK(CLK), .RN(n10), .Q(enable_pulse) );
  DFFRQX2M pulse_Gen_ff_reg ( .D(SYNC_enable), .CK(CLK), .RN(n10), .Q(
        pulse_Gen_ff) );
  EDFFHQX2M SYNC_enable_reg ( .D(MULT_FLOP_SYNC[1]), .E(n10), .CK(CLK), .Q(
        SYNC_enable) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n6), .CK(CLK), .RN(n10), .Q(sync_bus[4]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n2), .CK(CLK), .RN(n10), .Q(sync_bus[0]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(CLK), .RN(n10), .Q(sync_bus[5]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(CLK), .RN(n10), .Q(sync_bus[1]) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(CLK), .RN(n10), .Q(sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(CLK), .RN(n10), .Q(sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(CLK), .RN(n10), .Q(sync_bus[6]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(CLK), .RN(n10), .Q(sync_bus[2]) );
  DFFRQX2M \MULT_FLOP_SYNC_reg[0]  ( .D(bus_enable), .CK(CLK), .RN(n10), .Q(
        MULT_FLOP_SYNC[0]) );
  DFFRQX2M \MULT_FLOP_SYNC_reg[1]  ( .D(MULT_FLOP_SYNC[0]), .CK(CLK), .RN(n10), 
        .Q(MULT_FLOP_SYNC[1]) );
  NAND2BX2M U3 ( .AN(pulse_Gen_ff), .B(SYNC_enable), .Y(n1) );
  INVX4M U4 ( .A(n11), .Y(n10) );
  INVX2M U5 ( .A(RST), .Y(n11) );
  INVX2M U6 ( .A(n1), .Y(n12) );
  AO22X1M U7 ( .A0(Unsync_bus[0]), .A1(n12), .B0(sync_bus[0]), .B1(n1), .Y(n2)
         );
  AO22X1M U8 ( .A0(Unsync_bus[1]), .A1(n12), .B0(sync_bus[1]), .B1(n1), .Y(n3)
         );
  AO22X1M U9 ( .A0(Unsync_bus[2]), .A1(n12), .B0(sync_bus[2]), .B1(n1), .Y(n4)
         );
  AO22X1M U10 ( .A0(Unsync_bus[3]), .A1(n12), .B0(sync_bus[3]), .B1(n1), .Y(n5) );
  AO22X1M U11 ( .A0(Unsync_bus[4]), .A1(n12), .B0(sync_bus[4]), .B1(n1), .Y(n6) );
  AO22X1M U12 ( .A0(Unsync_bus[5]), .A1(n12), .B0(sync_bus[5]), .B1(n1), .Y(n7) );
  AO22X1M U13 ( .A0(Unsync_bus[6]), .A1(n12), .B0(sync_bus[6]), .B1(n1), .Y(n8) );
  AO22X1M U14 ( .A0(Unsync_bus[7]), .A1(n12), .B0(sync_bus[7]), .B1(n1), .Y(n9) );
endmodule


module DATA_SYNC_00000002_00000008_0 ( Unsync_bus, bus_enable, CLK, RST, 
        sync_bus, enable_pulse );
  input [7:0] Unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST;
  output enable_pulse;
  wire   SYNC_enable, pulse_Gen_ff, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21;
  wire   [1:0] MULT_FLOP_SYNC;

  DFFRQX2M pulse_Gen_ff_reg ( .D(SYNC_enable), .CK(CLK), .RN(n10), .Q(
        pulse_Gen_ff) );
  EDFFHQX2M SYNC_enable_reg ( .D(MULT_FLOP_SYNC[1]), .E(n10), .CK(CLK), .Q(
        SYNC_enable) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n14), .CK(CLK), .RN(n10), .Q(sync_bus[6]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n16), .CK(CLK), .RN(n10), .Q(sync_bus[4]) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n13), .CK(CLK), .RN(n10), .Q(sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n20), .CK(CLK), .RN(n10), .Q(sync_bus[0]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n19), .CK(CLK), .RN(n10), .Q(sync_bus[1]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n15), .CK(CLK), .RN(n10), .Q(sync_bus[5]) );
  DFFRQX2M enable_pulse_reg ( .D(n12), .CK(CLK), .RN(n10), .Q(enable_pulse) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n17), .CK(CLK), .RN(n10), .Q(sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n18), .CK(CLK), .RN(n10), .Q(sync_bus[2]) );
  DFFRQX2M \MULT_FLOP_SYNC_reg[0]  ( .D(bus_enable), .CK(CLK), .RN(n10), .Q(
        MULT_FLOP_SYNC[0]) );
  DFFRQX2M \MULT_FLOP_SYNC_reg[1]  ( .D(MULT_FLOP_SYNC[0]), .CK(CLK), .RN(n10), 
        .Q(MULT_FLOP_SYNC[1]) );
  NAND2BX2M U3 ( .AN(pulse_Gen_ff), .B(SYNC_enable), .Y(n21) );
  INVX2M U4 ( .A(n21), .Y(n12) );
  INVX4M U5 ( .A(n11), .Y(n10) );
  INVX2M U6 ( .A(RST), .Y(n11) );
  AO22X1M U7 ( .A0(Unsync_bus[4]), .A1(n12), .B0(sync_bus[4]), .B1(n21), .Y(
        n16) );
  AO22X1M U8 ( .A0(Unsync_bus[5]), .A1(n12), .B0(sync_bus[5]), .B1(n21), .Y(
        n15) );
  AO22X1M U9 ( .A0(Unsync_bus[1]), .A1(n12), .B0(sync_bus[1]), .B1(n21), .Y(
        n19) );
  AO22X1M U10 ( .A0(Unsync_bus[2]), .A1(n12), .B0(sync_bus[2]), .B1(n21), .Y(
        n18) );
  AO22X1M U11 ( .A0(Unsync_bus[6]), .A1(n12), .B0(sync_bus[6]), .B1(n21), .Y(
        n14) );
  AO22X1M U12 ( .A0(Unsync_bus[0]), .A1(n12), .B0(sync_bus[0]), .B1(n21), .Y(
        n20) );
  AO22X1M U13 ( .A0(Unsync_bus[3]), .A1(n12), .B0(sync_bus[3]), .B1(n21), .Y(
        n17) );
  AO22X1M U14 ( .A0(Unsync_bus[7]), .A1(n12), .B0(sync_bus[7]), .B1(n21), .Y(
        n13) );
endmodule


module BIT_SYNC_00000002 ( ASYNC, RST, CLK, SYNC );
  input ASYNC, RST, CLK;
  output SYNC;
  wire   \MULT_FLOP_SYNC[0] ;

  EDFFHQX2M SYNC_reg ( .D(\MULT_FLOP_SYNC[0] ), .E(RST), .CK(CLK), .Q(SYNC) );
  DFFRQX2M \MULT_FLOP_SYNC_reg[0]  ( .D(ASYNC), .CK(CLK), .RN(RST), .Q(
        \MULT_FLOP_SYNC[0] ) );
endmodule


module RST_SYNC_00000002_1 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \MULT_FLOP_SYNC[0] ;

  DFFRQX2M SYNC_RST_reg ( .D(\MULT_FLOP_SYNC[0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_RST) );
  DFFRQX2M \MULT_FLOP_SYNC_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(
        \MULT_FLOP_SYNC[0] ) );
endmodule


module RST_SYNC_00000002_0 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \MULT_FLOP_SYNC[0] ;

  DFFRQX2M SYNC_RST_reg ( .D(\MULT_FLOP_SYNC[0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_RST) );
  DFFRQX2M \MULT_FLOP_SYNC_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(
        \MULT_FLOP_SYNC[0] ) );
endmodule


module ClkDiv_00000004 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk );
  input [3:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en;
  output o_div_clk;
  wire   div_clk, odd_edge_tog, n14, n15, n16, n17, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [2:0] count;

  DFFRQX2M div_clk_reg ( .D(n36), .CK(i_ref_clk), .RN(n2), .Q(div_clk) );
  DFFSQX2M odd_edge_tog_reg ( .D(n35), .CK(i_ref_clk), .SN(n2), .Q(
        odd_edge_tog) );
  DFFRQX2M \count_reg[1]  ( .D(n34), .CK(i_ref_clk), .RN(n2), .Q(count[1]) );
  DFFRQX2M \count_reg[0]  ( .D(n37), .CK(i_ref_clk), .RN(n2), .Q(count[0]) );
  DFFRQX2M \count_reg[2]  ( .D(n33), .CK(i_ref_clk), .RN(n2), .Q(count[2]) );
  OAI21X2M U3 ( .A0(i_div_ratio[3]), .A1(n31), .B0(i_clk_en), .Y(n17) );
  CLKMX2X4M U4 ( .A(i_ref_clk), .B(div_clk), .S0(n9), .Y(o_div_clk) );
  NAND2X2M U5 ( .A(n10), .B(n11), .Y(n31) );
  XNOR2X2M U6 ( .A(n30), .B(n7), .Y(n26) );
  OAI21X2M U7 ( .A0(n11), .A1(n10), .B0(n31), .Y(n30) );
  AOI21X2M U8 ( .A0(n4), .A1(n5), .B0(n17), .Y(n16) );
  INVX2M U9 ( .A(n21), .Y(n5) );
  INVX2M U10 ( .A(n17), .Y(n9) );
  INVX2M U11 ( .A(n27), .Y(n6) );
  INVX2M U12 ( .A(n3), .Y(n2) );
  INVX2M U13 ( .A(i_rst), .Y(n3) );
  OAI32X1M U14 ( .A0(n14), .A1(count[2]), .A2(n7), .B0(n15), .B1(n8), .Y(n33)
         );
  INVX2M U15 ( .A(count[2]), .Y(n8) );
  AOI21BX2M U16 ( .A0(n5), .A1(n7), .B0N(n16), .Y(n15) );
  OAI21X2M U17 ( .A0(n23), .A1(n24), .B0(i_div_ratio[0]), .Y(n19) );
  NOR4X1M U18 ( .A(odd_edge_tog), .B(n27), .C(n28), .D(n29), .Y(n23) );
  NOR4BX1M U19 ( .AN(odd_edge_tog), .B(n6), .C(n25), .D(n26), .Y(n24) );
  CLKXOR2X2M U20 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n28) );
  XNOR2X2M U21 ( .A(n32), .B(count[2]), .Y(n25) );
  NAND2X2M U22 ( .A(i_div_ratio[3]), .B(n31), .Y(n32) );
  NAND3X2M U23 ( .A(n5), .B(count[0]), .C(n9), .Y(n14) );
  OAI22X1M U24 ( .A0(n16), .A1(n7), .B0(count[1]), .B1(n14), .Y(n34) );
  NAND2X2M U25 ( .A(n22), .B(n19), .Y(n21) );
  OR4X1M U26 ( .A(n25), .B(n26), .C(n6), .D(i_div_ratio[0]), .Y(n22) );
  INVX2M U27 ( .A(i_div_ratio[1]), .Y(n11) );
  INVX2M U28 ( .A(i_div_ratio[2]), .Y(n10) );
  OAI32X1M U29 ( .A0(n17), .A1(count[0]), .A2(n21), .B0(n9), .B1(n4), .Y(n37)
         );
  XNOR2X2M U30 ( .A(n11), .B(count[0]), .Y(n27) );
  CLKXOR2X2M U31 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n29) );
  CLKXOR2X2M U32 ( .A(div_clk), .B(n20), .Y(n36) );
  NOR2X2M U33 ( .A(n5), .B(n17), .Y(n20) );
  CLKXOR2X2M U34 ( .A(odd_edge_tog), .B(n1), .Y(n35) );
  NOR2X2M U35 ( .A(n19), .B(n17), .Y(n1) );
  INVX2M U36 ( .A(count[1]), .Y(n7) );
  INVX2M U37 ( .A(count[0]), .Y(n4) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module System_top ( REF_CLK, UART_CLK, RST, RX_IN, TX_OUT );
  input REF_CLK, UART_CLK, RST, RX_IN;
  output TX_OUT;
  wire   SYNC_RST_1, Rd_VLD, ALU_vld_OUT, BUSY, TX_VLD, Rx_valid, RdEn, WrEn,
         Gate_En, ALU_EN, GATED_CLK, SYNC_RST_2, TX_CLK, RX_OUT_V, TX_IN_V,
         TX_OUT_V, n1, n2;
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

  SYS_CTRL u_SYS_CTRL ( .CLK(REF_CLK), .RST(n1), .Rd_D(RdData), .Rd_D_VLD(
        Rd_VLD), .ALU_OUT(ALU_OUT), .ALU_VLD(ALU_vld_OUT), .BUSY(BUSY), 
        .TX_VLD(TX_VLD), .TX_IN(TX_IN), .Rx_valid(Rx_valid), .RX_out(RX_out), 
        .RdEn(RdEn), .Addr({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, Address[3:0]}), 
        .WrEn(WrEn), .Gate_En(Gate_En), .Wr_D(WrData), .Func({
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, ALU_FUNC[3:0]}), 
        .ALU_EN(ALU_EN) );
  REG_FILE_00000008_00000010 u_REG_FILE ( .WrData(WrData), .Address(
        Address[3:0]), .WrEn(WrEn), .RdEn(RdEn), .CLK(REF_CLK), .RST(n1), 
        .RdData(RdData), .Rd_VLD(Rd_VLD), .Reg_0(Reg_0), .Reg_1(Reg_1), 
        .Reg_2({SYNOPSYS_UNCONNECTED__8, Reg_2_top[6:0]}), .Reg_3({
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, Reg_3_top[3:0]})
         );
  ALU_TOP_00000008 u_ALU_TOP ( .A(Reg_0), .B(Reg_1), .ALU_FUNC(ALU_FUNC[3:0]), 
        .CLK(GATED_CLK), .ALU_EN(ALU_EN), .ALU_vld_OUT(ALU_vld_OUT), .ALU_OUT(
        ALU_OUT) );
  UART_00000008_00000005 u_UART ( .RST(SYNC_RST_2), .TX_CLK(TX_CLK), .RX_CLK(
        REF_CLK), .RX_IN_S(RX_IN), .RX_OUT_P(RX_OUT_P), .RX_OUT_V(RX_OUT_V), 
        .TX_IN_P(TX_IN_P), .TX_IN_V(TX_IN_V), .TX_OUT_S(TX_OUT), .TX_OUT_V(
        TX_OUT_V), .Prescale(Reg_2_top[6:2]), .parity_enable(Reg_2_top[0]), 
        .parity_type(Reg_2_top[1]) );
  DATA_SYNC_00000002_00000008_1 u_SYSCTRL_2_TX_DATA_SYNC ( .Unsync_bus(TX_IN), 
        .bus_enable(TX_VLD), .CLK(TX_CLK), .RST(SYNC_RST_2), .sync_bus(TX_IN_P), .enable_pulse(TX_IN_V) );
  DATA_SYNC_00000002_00000008_0 u_RX_2_SYSCTRL_DATA_SYNC ( .Unsync_bus(
        RX_OUT_P), .bus_enable(RX_OUT_V), .CLK(REF_CLK), .RST(SYNC_RST_2), 
        .sync_bus(RX_out), .enable_pulse(Rx_valid) );
  BIT_SYNC_00000002 u_BIT_SYNC ( .ASYNC(TX_OUT_V), .RST(SYNC_RST_2), .CLK(
        REF_CLK), .SYNC(BUSY) );
  RST_SYNC_00000002_1 u_RST_1_SYNC ( .RST(RST), .CLK(REF_CLK), .SYNC_RST(
        SYNC_RST_1) );
  RST_SYNC_00000002_0 u_RST_2_SYNC ( .RST(RST), .CLK(UART_CLK), .SYNC_RST(
        SYNC_RST_2) );
  ClkDiv_00000004 U0_ClkDiv ( .i_ref_clk(REF_CLK), .i_rst(SYNC_RST_2), 
        .i_clk_en(1'b1), .i_div_ratio(Reg_3_top[3:0]), .o_div_clk(TX_CLK) );
  CLK_GATE u_CLK_GATE ( .CLK_EN(Gate_En), .CLK(REF_CLK), .GATED_CLK(GATED_CLK)
         );
  INVX2M U2 ( .A(n2), .Y(n1) );
  INVX2M U3 ( .A(SYNC_RST_1), .Y(n2) );
endmodule

