/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03
// Date      : Sat Jul 23 19:08:26 2022
/////////////////////////////////////////////////////////////


module JAM_DW01_inc_0 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[15]), .B(A[15]), .Y(SUM[15]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module JAM_DW01_add_0 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3;
  wire   [9:1] carry;

  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  AND2X2 U2 ( .A(A[8]), .B(n3), .Y(n2) );
  XOR2XL U3 ( .A(A[8]), .B(n3), .Y(SUM[8]) );
  XOR2XL U4 ( .A(A[7]), .B(carry[7]), .Y(SUM[7]) );
  XOR2XL U5 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  XOR2X1 U6 ( .A(A[9]), .B(n2), .Y(SUM[9]) );
  AND2X2 U7 ( .A(A[7]), .B(carry[7]), .Y(n3) );
endmodule


module JAM ( CLK, RST, W, J, Cost, MatchCount, MinCost, Valid );
  output [2:0] W;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [9:0] MinCost;
  input CLK, RST;
  output Valid;
  wire   N92, N95, N96, N97, N98, N99, N100, n642, n643, n644, n645, n646,
         n647, n648, n649, n650, n651, n652, n653, n654, \order[0][2] ,
         \order[0][1] , \order[0][0] , \order[1][2] , \order[1][1] ,
         \order[1][0] , \order[2][2] , \order[2][1] , \order[2][0] ,
         \order[3][2] , \order[3][1] , \order[3][0] , \order[4][2] ,
         \order[4][1] , \order[4][0] , \order[5][2] , \order[5][1] ,
         \order[5][0] , \order[6][2] , \order[6][1] , \order[6][0] ,
         \order[7][2] , \order[7][1] , \order[7][0] , N220, N221, N222, N223,
         N224, N225, N280, N281, N282, N283, N284, N285, N286, N287, N288,
         N289, N303, N319, N320, N321, N322, N323, N324, N325, N326, N327,
         N328, N329, N330, N331, N332, N333, N334, N335, N355, N356, N357,
         N375, n37, n38, n39, n41, n43, n56, n57, n59, n60, n62, n63, n64, n65,
         n66, n71, n73, n74, n75, n77, n80, n83, n86, n88, n89, n90, n91, n93,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n107,
         n110, n111, n112, n114, n116, n117, n120, n121, n122, n123, n125,
         n128, n129, n130, n132, n135, n136, n139, n140, n142, n143, n145,
         n146, n148, n150, n151, n152, n153, n155, n158, n159, n160, n164,
         n165, n166, n169, n170, n171, n173, n174, n175, n176, n178, n179,
         n180, n181, n183, n184, n185, n186, n187, n188, n190, n191, n192,
         n193, n194, n195, n196, n197, n199, n200, n201, n202, n205, n206,
         n208, n209, n213, n215, n216, n217, n218, n219, n222, n223, n224,
         n225, n227, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n240, n241, n242, n243, n244, n245, n247, n248, n249, n250, n251,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n269, n271, n274, n275, n277, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n431,
         n432, n433, n434, n435, n436, n437, n438, n439, n440, n441, n442,
         n443, n444, n445, n446, n447, n448, n449, n450, n451, n452, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n493,
         n494, n495, n496, n497, n498, n501, n502, n503, n504, n505, n506,
         n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, n517,
         n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528,
         n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539,
         n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550,
         n551, n552, n553, n554, n555, n556, n557, n558, n559, n560, n561,
         n562, n563, n564, n565, n566, n567, n568, n569, n570, n571, n572,
         n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, n583,
         n584, n585, n586, n587, n588, n589, n590, n591, n592, n593, n594,
         n595, n596, n597, n598, n599, n600, n601, n602, n603, n604, n605,
         n606, n607, n608, n609, n610, n611, n612, n613, n614, n615, n616,
         n617, n618, n619, n620, n623, n624, n625, n626, n627, n628, n629,
         n630, n631, n632, n633, n634, n635, n636, n637, n638, n639, n640,
         n641;
  wire   [2:0] ns;
  wire   [9:0] temp_min_cost;
  wire   [15:0] counter;

  JAM_DW01_inc_0 add_156 ( .A(counter), .SUM({N334, N333, N332, N331, N330, 
        N329, N328, N327, N326, N325, N324, N323, N322, N321, N320, N319}) );
  JAM_DW01_add_0 add_132 ( .A(temp_min_cost), .B({1'b0, 1'b0, 1'b0, Cost}), 
        .CI(1'b0), .SUM({N289, N288, N287, N286, N285, N284, N283, N282, N281, 
        N280}) );
  DFFRX1 \change_min_point_reg[2]  ( .D(n382), .CK(CLK), .RN(n504), .QN(n348)
         );
  DFFRX1 \change_num_reg[1]  ( .D(n393), .CK(CLK), .RN(n501), .Q(n433), .QN(
        n343) );
  DFFRX1 \change_num_reg[0]  ( .D(n395), .CK(CLK), .RN(n502), .Q(n437), .QN(
        n344) );
  DFFRX1 \cs_reg[1]  ( .D(ns[1]), .CK(CLK), .RN(n502), .Q(n439), .QN(n326) );
  DFFRX1 \change_min_pointer_reg[2]  ( .D(n400), .CK(CLK), .RN(n502), .Q(N100), 
        .QN(n339) );
  DFFRX1 \temp_min_cost_reg[5]  ( .D(n387), .CK(CLK), .RN(n504), .Q(
        temp_min_cost[5]), .QN(n450) );
  DFFRX1 \temp_min_cost_reg[6]  ( .D(n386), .CK(CLK), .RN(n504), .Q(
        temp_min_cost[6]), .QN(n446) );
  DFFRX1 \temp_min_cost_reg[8]  ( .D(n384), .CK(CLK), .RN(n504), .Q(
        temp_min_cost[8]), .QN(n445) );
  DFFRX1 \temp_min_cost_reg[7]  ( .D(n385), .CK(CLK), .RN(n504), .Q(
        temp_min_cost[7]), .QN(n442) );
  DFFRX1 \temp_min_cost_reg[4]  ( .D(n388), .CK(CLK), .RN(n501), .Q(
        temp_min_cost[4]), .QN(n451) );
  DFFRX1 \temp_min_cost_reg[3]  ( .D(n389), .CK(CLK), .RN(n501), .Q(
        temp_min_cost[3]), .QN(n449) );
  DFFRX1 \temp_min_cost_reg[2]  ( .D(n390), .CK(CLK), .RN(n588), .Q(
        temp_min_cost[2]), .QN(n448) );
  DFFRX1 \temp_min_cost_reg[1]  ( .D(n391), .CK(CLK), .RN(n588), .Q(
        temp_min_cost[1]), .QN(n447) );
  DFFRX1 \change_min_pointer_reg[1]  ( .D(n398), .CK(CLK), .RN(n502), .Q(N99), 
        .QN(n340) );
  DFFRX1 \change_min_pointer_reg[0]  ( .D(n399), .CK(CLK), .RN(n504), .Q(N98), 
        .QN(n341) );
  DFFRX1 \temp_min_cost_reg[0]  ( .D(n392), .CK(CLK), .RN(n588), .Q(
        temp_min_cost[0]), .QN(n443) );
  DFFRX1 \order_reg[0][1]  ( .D(n351), .CK(CLK), .RN(n504), .Q(\order[0][1] ), 
        .QN(n329) );
  DFFRX1 \order_reg[0][2]  ( .D(n352), .CK(CLK), .RN(n503), .Q(\order[0][2] ), 
        .QN(n328) );
  DFFRX1 \order_reg[0][0]  ( .D(n353), .CK(CLK), .RN(n501), .Q(\order[0][0] ), 
        .QN(n330) );
  DFFRX1 \order_reg[4][0]  ( .D(n364), .CK(CLK), .RN(n502), .Q(\order[4][0] ), 
        .QN(n438) );
  DFFRX1 \order_reg[4][1]  ( .D(n363), .CK(CLK), .RN(n501), .Q(\order[4][1] ), 
        .QN(n434) );
  DFFRX1 \order_reg[1][1]  ( .D(n402), .CK(CLK), .RN(n501), .Q(\order[1][1] ), 
        .QN(n441) );
  DFFRX1 \order_reg[2][2]  ( .D(n356), .CK(CLK), .RN(n501), .Q(\order[2][2] ), 
        .QN(n440) );
  DFFSX1 \order_reg[4][2]  ( .D(n362), .CK(CLK), .SN(n501), .Q(\order[4][2] ), 
        .QN(n635) );
  DFFSX1 \order_reg[2][1]  ( .D(n357), .CK(CLK), .SN(n501), .Q(\order[2][1] ), 
        .QN(n632) );
  DFFRX1 \order_reg[2][0]  ( .D(n358), .CK(CLK), .RN(n503), .Q(\order[2][0] )
         );
  DFFSX1 \order_reg[1][0]  ( .D(n355), .CK(CLK), .SN(n501), .Q(\order[1][0] ), 
        .QN(n641) );
  DFFRX1 \counter_reg[8]  ( .D(n316), .CK(CLK), .RN(n503), .Q(counter[8]), 
        .QN(n286) );
  DFFRX1 \counter_reg[7]  ( .D(n317), .CK(CLK), .RN(n503), .Q(counter[7]), 
        .QN(n287) );
  DFFRX1 \counter_reg[10]  ( .D(n314), .CK(CLK), .RN(n503), .Q(counter[10]), 
        .QN(n284) );
  DFFRX1 \counter_reg[12]  ( .D(n312), .CK(CLK), .RN(n503), .Q(counter[12]), 
        .QN(n282) );
  DFFRX1 \counter_reg[15]  ( .D(n309), .CK(CLK), .RN(n503), .Q(counter[15]), 
        .QN(n279) );
  DFFRX1 \counter_reg[11]  ( .D(n313), .CK(CLK), .RN(n503), .Q(counter[11]), 
        .QN(n283) );
  DFFRX1 \counter_reg[5]  ( .D(n319), .CK(CLK), .RN(n503), .Q(counter[5]), 
        .QN(n289) );
  DFFRX1 \counter_reg[14]  ( .D(n310), .CK(CLK), .RN(n503), .Q(counter[14]), 
        .QN(n280) );
  DFFRX1 \counter_reg[4]  ( .D(n320), .CK(CLK), .RN(n502), .Q(counter[4]), 
        .QN(n290) );
  DFFRX1 \counter_reg[13]  ( .D(n311), .CK(CLK), .RN(n503), .Q(counter[13]), 
        .QN(n281) );
  DFFRX1 \counter_reg[3]  ( .D(n321), .CK(CLK), .RN(n502), .Q(counter[3]), 
        .QN(n291) );
  DFFRX1 \counter_reg[9]  ( .D(n315), .CK(CLK), .RN(n503), .Q(counter[9]), 
        .QN(n285) );
  DFFRX1 \counter_reg[0]  ( .D(n323), .CK(CLK), .RN(n502), .Q(counter[0]), 
        .QN(n293) );
  DFFRX1 \counter_reg[2]  ( .D(n322), .CK(CLK), .RN(n502), .Q(counter[2]), 
        .QN(n292) );
  DFFRX1 \counter_reg[6]  ( .D(n318), .CK(CLK), .RN(n503), .Q(counter[6]), 
        .QN(n288) );
  DFFRX1 \counter_reg[1]  ( .D(n324), .CK(CLK), .RN(n502), .Q(counter[1]), 
        .QN(n295) );
  DFFRX1 \change_num_reg[2]  ( .D(n394), .CK(CLK), .RN(n502), .Q(n436), .QN(
        n342) );
  DFFRX1 \cs_reg[0]  ( .D(ns[0]), .CK(CLK), .RN(n502), .QN(n327) );
  DFFRX1 \change_min_point_reg[1]  ( .D(n374), .CK(CLK), .RN(n502), .Q(n432), 
        .QN(n349) );
  DFFRX1 \temp_min_cost_reg[9]  ( .D(n383), .CK(CLK), .RN(n504), .Q(
        temp_min_cost[9]), .QN(n444) );
  DFFRX1 \MatchCount_reg[0]  ( .D(n377), .CK(CLK), .RN(n504), .Q(n646), .QN(
        n336) );
  DFFRX1 \MatchCount_reg[3]  ( .D(n375), .CK(CLK), .RN(n504), .Q(n645), .QN(
        n267) );
  DFFRX1 \MatchCount_reg[1]  ( .D(n378), .CK(CLK), .RN(n504), .QN(n335) );
  DFFRX1 \MatchCount_reg[2]  ( .D(n376), .CK(CLK), .RN(n504), .QN(n334) );
  DFFSX1 \order_reg[7][2]  ( .D(n371), .CK(CLK), .SN(n588), .Q(\order[7][2] ), 
        .QN(n629) );
  DFFSX1 \order_reg[7][1]  ( .D(n372), .CK(CLK), .SN(n588), .Q(\order[7][1] ), 
        .QN(n630) );
  DFFSX1 \order_reg[7][0]  ( .D(n373), .CK(CLK), .SN(n588), .Q(\order[7][0] ), 
        .QN(n631) );
  DFFSX1 \order_reg[6][1]  ( .D(n369), .CK(CLK), .SN(n588), .Q(\order[6][1] ), 
        .QN(n628) );
  DFFSX1 \order_reg[6][2]  ( .D(n368), .CK(CLK), .SN(n588), .Q(\order[6][2] ), 
        .QN(n627) );
  DFFSX1 \order_reg[3][1]  ( .D(n360), .CK(CLK), .SN(n588), .Q(\order[3][1] ), 
        .QN(n637) );
  DFFSX1 \order_reg[3][0]  ( .D(n361), .CK(CLK), .SN(n588), .Q(\order[3][0] ), 
        .QN(n639) );
  DFFSX1 \order_reg[5][2]  ( .D(n365), .CK(CLK), .SN(n588), .Q(\order[5][2] ), 
        .QN(n633) );
  DFFSX1 \order_reg[5][0]  ( .D(n367), .CK(CLK), .SN(n588), .Q(\order[5][0] ), 
        .QN(n638) );
  DFFRX1 \order_reg[6][0]  ( .D(n370), .CK(CLK), .RN(n588), .Q(\order[6][0] ), 
        .QN(n602) );
  DFFRX1 \order_reg[3][2]  ( .D(n359), .CK(CLK), .RN(n588), .Q(\order[3][2] ), 
        .QN(n634) );
  DFFRX1 \order_reg[5][1]  ( .D(n366), .CK(CLK), .RN(n588), .Q(\order[5][1] ), 
        .QN(n636) );
  DFFSX1 \MinCost_reg[9]  ( .D(n297), .CK(CLK), .SN(n588), .QN(n581) );
  DFFSX1 \MinCost_reg[8]  ( .D(n298), .CK(CLK), .SN(n588), .Q(n647), .QN(n271)
         );
  DFFSX1 \MinCost_reg[7]  ( .D(n299), .CK(CLK), .SN(n588), .QN(n582) );
  DFFSX1 \MinCost_reg[6]  ( .D(n300), .CK(CLK), .SN(n588), .QN(n583) );
  DFFSX1 \MinCost_reg[5]  ( .D(n301), .CK(CLK), .SN(n588), .Q(n648), .QN(n274)
         );
  DFFSX1 \MinCost_reg[4]  ( .D(n302), .CK(CLK), .SN(n588), .Q(n649), .QN(n275)
         );
  DFFSX1 \MinCost_reg[3]  ( .D(n303), .CK(CLK), .SN(n588), .Q(n650), .QN(n584)
         );
  DFFSX1 \MinCost_reg[2]  ( .D(n304), .CK(CLK), .SN(n588), .Q(n651), .QN(n277)
         );
  DFFSX1 \MinCost_reg[1]  ( .D(n305), .CK(CLK), .SN(n588), .Q(n652), .QN(n585)
         );
  DFFSX1 \MinCost_reg[0]  ( .D(n296), .CK(CLK), .SN(n588), .Q(n653), .QN(n269)
         );
  DFFSRX2 \W_reg[1]  ( .D(n307), .CK(CLK), .SN(1'b1), .RN(n588), .Q(n620), 
        .QN(n332) );
  DFFSX1 \change_min_num_reg[2]  ( .D(n380), .CK(CLK), .SN(n588), .Q(n624), 
        .QN(n345) );
  DFFSX1 \change_min_num_reg[1]  ( .D(n379), .CK(CLK), .SN(n588), .Q(n623), 
        .QN(n346) );
  DFFSX1 \change_min_num_reg[0]  ( .D(n381), .CK(CLK), .SN(n588), .Q(n625), 
        .QN(n347) );
  DFFRX1 \cs_reg[2]  ( .D(n494), .CK(CLK), .RN(n588), .Q(n616), .QN(n294) );
  DFFRX4 \change_point_reg[2]  ( .D(n396), .CK(CLK), .RN(n588), .Q(N97), .QN(
        n540) );
  DFFRX4 \change_point_reg[0]  ( .D(n397), .CK(CLK), .RN(n588), .Q(N95), .QN(
        n541) );
  DFFRX2 \change_point_reg[1]  ( .D(n401), .CK(CLK), .RN(n588), .Q(N96), .QN(
        n489) );
  DFFRX2 \W_reg[2]  ( .D(n306), .CK(CLK), .RN(n588), .Q(n523), .QN(n331) );
  DFFRX2 \W_reg[0]  ( .D(n308), .CK(CLK), .RN(n588), .Q(N92), .QN(n333) );
  DFFRX1 \order_reg[1][2]  ( .D(n354), .CK(CLK), .RN(n588), .Q(\order[1][2] ), 
        .QN(n640) );
  DFFRX1 \change_min_point_reg[0]  ( .D(n403), .CK(CLK), .RN(n504), .Q(n435), 
        .QN(n350) );
  INVX16 U352 ( .A(n452), .Y(W[1]) );
  CLKINVX1 U353 ( .A(n620), .Y(n452) );
  OA22X1 U354 ( .A0(n339), .A1(n549), .B0(N100), .B1(n548), .Y(n431) );
  AOI22XL U355 ( .A0(N223), .A1(n176), .B0(n593), .B1(\order[6][0] ), .Y(n179)
         );
  AOI22XL U356 ( .A0(N225), .A1(n176), .B0(n593), .B1(\order[6][2] ), .Y(n175)
         );
  AOI22XL U357 ( .A0(N224), .A1(n176), .B0(n593), .B1(\order[6][1] ), .Y(n178)
         );
  NOR2X2 U358 ( .A(n332), .B(n333), .Y(n519) );
  NAND2XL U359 ( .A(N95), .B(N96), .Y(n195) );
  NOR3XL U360 ( .A(N96), .B(n493), .C(N95), .Y(n197) );
  AND2XL U361 ( .A(N97), .B(N95), .Y(n485) );
  INVX6 U362 ( .A(RST), .Y(n588) );
  BUFX12 U364 ( .A(n648), .Y(MinCost[5]) );
  INVX16 U365 ( .A(n334), .Y(MatchCount[2]) );
  INVX16 U366 ( .A(n335), .Y(MatchCount[1]) );
  BUFX12 U367 ( .A(n645), .Y(MatchCount[3]) );
  BUFX12 U368 ( .A(n646), .Y(MatchCount[0]) );
  BUFX12 U369 ( .A(n651), .Y(MinCost[2]) );
  OAI22X1 U370 ( .A0(n557), .A1(n339), .B0(N100), .B1(n556), .Y(N375) );
  OR4X1 U371 ( .A(n263), .B(n264), .C(n265), .D(n266), .Y(n654) );
  INVX12 U372 ( .A(n654), .Y(Valid) );
  INVX12 U373 ( .A(n583), .Y(MinCost[6]) );
  INVX12 U374 ( .A(n582), .Y(MinCost[7]) );
  INVX12 U375 ( .A(n581), .Y(MinCost[9]) );
  BUFX12 U376 ( .A(n653), .Y(MinCost[0]) );
  INVX12 U377 ( .A(n585), .Y(MinCost[1]) );
  AO21XL U378 ( .A0(n447), .A1(n564), .B0(n652), .Y(n563) );
  INVX12 U379 ( .A(n584), .Y(MinCost[3]) );
  BUFX12 U380 ( .A(n647), .Y(MinCost[8]) );
  BUFX12 U381 ( .A(n649), .Y(MinCost[4]) );
  NAND3X1 U382 ( .A(n494), .B(n497), .C(N303), .Y(n205) );
  NOR2X1 U383 ( .A(n586), .B(n574), .Y(n469) );
  OR2X1 U384 ( .A(n468), .B(n469), .Y(N335) );
  NOR2BXL U385 ( .AN(n653), .B(temp_min_cost[0]), .Y(n564) );
  NOR2BXL U386 ( .AN(temp_min_cost[3]), .B(n650), .Y(n578) );
  NOR2XL U387 ( .A(n451), .B(n649), .Y(n577) );
  NOR2XL U388 ( .A(n450), .B(n648), .Y(n569) );
  NOR2XL U389 ( .A(n445), .B(n647), .Y(n562) );
  NOR2BXL U390 ( .AN(temp_min_cost[0]), .B(n653), .Y(n559) );
  CLKINVX1 U391 ( .A(n493), .Y(n614) );
  NOR3X1 U392 ( .A(n435), .B(n498), .C(n432), .Y(n132) );
  NAND4XL U393 ( .A(n267), .B(n202), .C(MatchCount[1]), .D(MatchCount[2]), .Y(
        n201) );
  NAND2XL U394 ( .A(temp_min_cost[2]), .B(n277), .Y(n575) );
  OAI32XL U395 ( .A0(MatchCount[2]), .A1(n335), .A2(n612), .B0(n334), .B1(n206), .Y(n376) );
  NAND2XL U396 ( .A(n209), .B(n497), .Y(n377) );
  NAND4BX1 U397 ( .AN(n255), .B(n256), .C(n615), .D(n257), .Y(n199) );
  OAI22XL U398 ( .A0(n242), .A1(n243), .B0(n244), .B1(n245), .Y(n234) );
  OAI22XL U399 ( .A0(n248), .A1(n249), .B0(n250), .B1(n251), .Y(n247) );
  CLKBUFX3 U400 ( .A(ns[2]), .Y(n494) );
  CLKBUFX3 U401 ( .A(n171), .Y(n493) );
  NAND3X1 U402 ( .A(n540), .B(n505), .C(n607), .Y(n143) );
  NOR3X1 U403 ( .A(n350), .B(n498), .C(n432), .Y(n155) );
  NAND3X1 U404 ( .A(n349), .B(n435), .C(n498), .Y(n77) );
  NAND2X1 U405 ( .A(n333), .B(W[1]), .Y(n60) );
  NAND2BX1 U406 ( .AN(n333), .B(W[1]), .Y(n57) );
  CLKINVX1 U407 ( .A(n341), .Y(n626) );
  NOR3X1 U408 ( .A(n349), .B(n498), .C(n350), .Y(n193) );
  NOR2X1 U409 ( .A(temp_min_cost[9]), .B(n581), .Y(n468) );
  AOI32XL U410 ( .A0(n573), .A1(n587), .A2(n572), .B0(n647), .B1(n445), .Y(
        n574) );
  NAND3BXL U411 ( .AN(N335), .B(n576), .C(n575), .Y(n579) );
  NAND2X1 U412 ( .A(n612), .B(n497), .Y(n208) );
  INVX3 U413 ( .A(n497), .Y(n613) );
  CLKINVX1 U414 ( .A(n215), .Y(n600) );
  NAND2X2 U415 ( .A(n105), .B(n506), .Y(n114) );
  CLKINVX1 U416 ( .A(n107), .Y(n590) );
  CLKINVX1 U417 ( .A(n148), .Y(n597) );
  CLKINVX1 U418 ( .A(n129), .Y(n604) );
  CLKINVX1 U419 ( .A(n83), .Y(n595) );
  NOR2X1 U420 ( .A(n611), .B(n599), .Y(n192) );
  NOR2X1 U421 ( .A(n611), .B(n593), .Y(n180) );
  NAND2X1 U422 ( .A(n180), .B(n594), .Y(n173) );
  NAND2X1 U423 ( .A(n506), .B(n75), .Y(n71) );
  CLKINVX1 U424 ( .A(n125), .Y(n591) );
  CLKINVX1 U425 ( .A(n132), .Y(n592) );
  CLKBUFX3 U426 ( .A(n614), .Y(n505) );
  CLKBUFX3 U427 ( .A(n614), .Y(n506) );
  CLKINVX1 U428 ( .A(n112), .Y(n589) );
  CLKINVX1 U429 ( .A(n195), .Y(n605) );
  CLKBUFX3 U430 ( .A(n501), .Y(n503) );
  CLKBUFX3 U431 ( .A(n501), .Y(n502) );
  CLKBUFX3 U432 ( .A(n501), .Y(n504) );
  CLKBUFX3 U433 ( .A(n43), .Y(n497) );
  NAND2X1 U434 ( .A(N335), .B(n494), .Y(n43) );
  CLKINVX1 U435 ( .A(n202), .Y(n612) );
  OA21XL U436 ( .A0(n205), .A1(MatchCount[1]), .B0(n208), .Y(n206) );
  CLKINVX1 U437 ( .A(n199), .Y(n601) );
  OAI2BB2XL U438 ( .B0(n446), .B1(n496), .A0N(N286), .A1N(n495), .Y(n386) );
  OAI2BB2XL U439 ( .B0(n448), .B1(n496), .A0N(N282), .A1N(n495), .Y(n390) );
  OAI2BB2XL U440 ( .B0(n449), .B1(n496), .A0N(N283), .A1N(n495), .Y(n389) );
  OAI2BB2XL U441 ( .B0(n450), .B1(n496), .A0N(N285), .A1N(n495), .Y(n387) );
  OAI2BB2XL U442 ( .B0(n451), .B1(n496), .A0N(N284), .A1N(n495), .Y(n388) );
  AO21X1 U443 ( .A0(n623), .A1(n431), .B0(n261), .Y(n262) );
  INVXL U444 ( .A(N375), .Y(n609) );
  NAND4X1 U445 ( .A(n495), .B(n230), .C(n231), .D(n232), .Y(n215) );
  NAND2X1 U446 ( .A(J[2]), .B(n247), .Y(n230) );
  NAND3X1 U447 ( .A(n235), .B(n234), .C(J[1]), .Y(n231) );
  OAI221XL U448 ( .A0(J[0]), .A1(n233), .B0(J[1]), .B1(n234), .C0(n235), .Y(
        n232) );
  OAI2BB2XL U449 ( .B0(n447), .B1(n496), .A0N(N281), .A1N(n495), .Y(n391) );
  OAI222XL U450 ( .A0(n640), .A1(n241), .B0(n57), .B1(n635), .C0(n618), .C1(
        n440), .Y(n250) );
  CLKINVX1 U451 ( .A(n238), .Y(n618) );
  OAI211X1 U452 ( .A0(n122), .A1(n611), .B0(n114), .C0(n103), .Y(n107) );
  AND2X2 U453 ( .A(n123), .B(n112), .Y(n122) );
  OAI211X1 U454 ( .A0(n611), .A1(n598), .B0(n103), .C0(n603), .Y(n148) );
  CLKINVX1 U455 ( .A(n169), .Y(n603) );
  OAI211X1 U456 ( .A0(n146), .A1(n170), .B0(n604), .C0(n153), .Y(n169) );
  OAI222XL U457 ( .A0(n241), .A1(n441), .B0(n57), .B1(n434), .C0(n618), .C1(
        n632), .Y(n244) );
  NOR2BX1 U458 ( .AN(n66), .B(n611), .Y(n64) );
  OAI31XL U459 ( .A0(N95), .A1(N96), .A2(N97), .B0(n65), .Y(n66) );
  NOR2X1 U460 ( .A(n223), .B(n38), .Y(n219) );
  NAND4BX1 U461 ( .AN(n142), .B(n114), .C(n143), .D(n604), .Y(n125) );
  OAI32X1 U462 ( .A0(N95), .A1(N96), .A2(n146), .B0(n592), .B1(n611), .Y(n142)
         );
  NAND2X1 U463 ( .A(n197), .B(N97), .Y(n153) );
  CLKINVX1 U464 ( .A(n38), .Y(n617) );
  INVX3 U465 ( .A(n494), .Y(n611) );
  AO21X1 U466 ( .A0(n494), .A1(n254), .B0(n88), .Y(n75) );
  OAI21XL U467 ( .A0(N97), .A1(n170), .B0(n77), .Y(n254) );
  CLKINVX1 U468 ( .A(n183), .Y(n593) );
  OAI222XL U469 ( .A0(n611), .A1(n594), .B0(n145), .B1(n146), .C0(n184), .C1(
        n493), .Y(n183) );
  NOR2X1 U470 ( .A(n123), .B(n493), .Y(n129) );
  CLKINVX1 U471 ( .A(n194), .Y(n599) );
  OAI211X1 U472 ( .A0(n195), .A1(n146), .B0(n153), .C0(n196), .Y(n194) );
  AOI2BB2X1 U473 ( .B0(n193), .B1(n494), .A0N(n184), .A1N(n493), .Y(n196) );
  NOR2X1 U474 ( .A(n493), .B(n593), .Y(n176) );
  NOR2X1 U475 ( .A(n493), .B(n599), .Y(n188) );
  NAND2X1 U476 ( .A(n494), .B(n623), .Y(n98) );
  NAND2X1 U477 ( .A(n494), .B(n624), .Y(n93) );
  NAND2X1 U478 ( .A(n494), .B(n625), .Y(n102) );
  NAND2X1 U479 ( .A(n494), .B(n436), .Y(n90) );
  NAND2X1 U480 ( .A(n494), .B(n433), .Y(n97) );
  NAND2X1 U481 ( .A(n494), .B(n437), .Y(n101) );
  NAND3X1 U482 ( .A(n435), .B(n432), .C(n498), .Y(n112) );
  NAND2X1 U483 ( .A(n494), .B(N97), .Y(n146) );
  NAND2X1 U484 ( .A(n103), .B(n104), .Y(n83) );
  OAI21XL U485 ( .A0(n596), .A1(n105), .B0(n494), .Y(n104) );
  NAND2X1 U486 ( .A(n615), .B(n41), .Y(n223) );
  OAI22XL U487 ( .A0(n639), .A1(n60), .B0(n57), .B1(n438), .Y(n240) );
  NOR2X1 U488 ( .A(n88), .B(n606), .Y(n103) );
  CLKINVX1 U489 ( .A(n91), .Y(n596) );
  NAND2X1 U490 ( .A(n64), .B(n65), .Y(n63) );
  NAND2BX1 U491 ( .AN(n65), .B(n64), .Y(n62) );
  NAND2BX1 U492 ( .AN(n193), .B(n192), .Y(n185) );
  NAND2X1 U493 ( .A(n192), .B(n193), .Y(n186) );
  NAND2X1 U494 ( .A(n180), .B(n181), .Y(n174) );
  NAND2X1 U495 ( .A(n494), .B(n75), .Y(n74) );
  NOR2X1 U496 ( .A(n145), .B(N97), .Y(n105) );
  CLKINVX1 U497 ( .A(n155), .Y(n598) );
  INVX3 U498 ( .A(n143), .Y(n606) );
  CLKINVX1 U499 ( .A(n170), .Y(n607) );
  CLKINVX1 U500 ( .A(n37), .Y(n615) );
  CLKINVX1 U501 ( .A(n181), .Y(n594) );
  OAI221XL U502 ( .A0(n608), .A1(n626), .B0(n617), .B1(N95), .C0(n222), .Y(
        n399) );
  NAND4X1 U503 ( .A(n223), .B(n617), .C(n493), .D(n626), .Y(n222) );
  CLKINVX1 U504 ( .A(n219), .Y(n608) );
  CLKINVX1 U505 ( .A(n495), .Y(n610) );
  OAI21XL U506 ( .A0(n617), .A1(n610), .B0(n37), .Y(ns[1]) );
  XOR2X1 U507 ( .A(n523), .B(n56), .Y(n306) );
  NOR2X1 U508 ( .A(n57), .B(n610), .Y(n56) );
  CLKBUFX3 U509 ( .A(n213), .Y(n496) );
  NAND2X1 U510 ( .A(n610), .B(n493), .Y(n213) );
  CLKBUFX3 U511 ( .A(n588), .Y(n501) );
  NAND4BBXL U512 ( .AN(n287), .BN(n286), .C(n293), .D(n295), .Y(n264) );
  OR4X1 U513 ( .A(n284), .B(n283), .C(n282), .D(n279), .Y(n263) );
  NAND4X1 U514 ( .A(n289), .B(n290), .C(n291), .D(n292), .Y(n265) );
  AND2X2 U515 ( .A(N92), .B(n332), .Y(n517) );
  AND2X2 U516 ( .A(n333), .B(n332), .Y(n516) );
  NAND4X1 U517 ( .A(n280), .B(n281), .C(n285), .D(n288), .Y(n266) );
  CLKINVX1 U518 ( .A(n576), .Y(n586) );
  CLKINVX1 U519 ( .A(n562), .Y(n587) );
  XNOR2X1 U520 ( .A(n336), .B(n205), .Y(n209) );
  OAI22XL U521 ( .A0(n335), .A1(n208), .B0(n612), .B1(MatchCount[1]), .Y(n378)
         );
  NOR2X1 U522 ( .A(n205), .B(n336), .Y(n202) );
  OAI2BB2XL U523 ( .B0(n442), .B1(n496), .A0N(N287), .A1N(n495), .Y(n385) );
  OAI2BB2XL U524 ( .B0(n445), .B1(n496), .A0N(N288), .A1N(n495), .Y(n384) );
  OAI21XL U525 ( .A0(n200), .A1(n267), .B0(n201), .Y(n375) );
  OA21XL U526 ( .A0(n205), .A1(MatchCount[2]), .B0(n206), .Y(n200) );
  OAI2BB2XL U527 ( .B0(n444), .B1(n496), .A0N(N289), .A1N(n495), .Y(n383) );
  NOR2XL U528 ( .A(n345), .B(N375), .Y(n261) );
  NAND2XL U529 ( .A(n345), .B(N375), .Y(n257) );
  OAI21XL U530 ( .A0(n609), .A1(n436), .B0(n258), .Y(n256) );
  OAI33X1 U531 ( .A0(n623), .A1(n261), .A2(n431), .B0(n262), .B1(n470), .B2(
        n625), .Y(n255) );
  OAI221XL U532 ( .A0(n609), .A1(n199), .B0(n345), .B1(n601), .C0(n493), .Y(
        n380) );
  OAI221XL U533 ( .A0(n470), .A1(n199), .B0(n347), .B1(n601), .C0(n493), .Y(
        n381) );
  OAI221XL U534 ( .A0(n431), .A1(n199), .B0(n346), .B1(n601), .C0(n493), .Y(
        n379) );
  OAI22XL U535 ( .A0(n349), .A1(n601), .B0(n340), .B1(n199), .Y(n374) );
  OAI22XL U536 ( .A0(n498), .A1(n601), .B0(n339), .B1(n199), .Y(n382) );
  OAI22XL U537 ( .A0(n350), .A1(n601), .B0(n341), .B1(n199), .Y(n403) );
  OAI22XL U538 ( .A0(n497), .A1(n443), .B0(n269), .B1(n613), .Y(n296) );
  OAI22XL U539 ( .A0(n497), .A1(n444), .B0(n581), .B1(n613), .Y(n297) );
  OAI22XL U540 ( .A0(n497), .A1(n445), .B0(n271), .B1(n613), .Y(n298) );
  OAI22XL U541 ( .A0(n497), .A1(n442), .B0(n582), .B1(n613), .Y(n299) );
  OAI22XL U542 ( .A0(n497), .A1(n446), .B0(n583), .B1(n613), .Y(n300) );
  OAI22XL U543 ( .A0(n497), .A1(n450), .B0(n274), .B1(n613), .Y(n301) );
  OAI22XL U544 ( .A0(n497), .A1(n451), .B0(n275), .B1(n613), .Y(n302) );
  OAI22XL U545 ( .A0(n497), .A1(n449), .B0(n584), .B1(n613), .Y(n303) );
  OAI22XL U546 ( .A0(n497), .A1(n448), .B0(n277), .B1(n613), .Y(n304) );
  OAI22XL U547 ( .A0(n497), .A1(n447), .B0(n585), .B1(n613), .Y(n305) );
  CLKINVX1 U548 ( .A(N98), .Y(n558) );
  OAI22XL U549 ( .A0(n342), .A1(N375), .B0(n259), .B1(n260), .Y(n258) );
  NOR2X1 U550 ( .A(n431), .B(n433), .Y(n260) );
  AOI211X1 U551 ( .A0(n431), .A1(n433), .B0(n437), .C0(n470), .Y(n259) );
  BUFX12 U552 ( .A(N92), .Y(W[0]) );
  BUFX12 U553 ( .A(n523), .Y(W[2]) );
  OAI22XL U554 ( .A0(n540), .A1(n600), .B0(n331), .B1(n215), .Y(n396) );
  OAI22XL U555 ( .A0(n541), .A1(n600), .B0(n333), .B1(n215), .Y(n397) );
  OAI22XL U556 ( .A0(n489), .A1(n600), .B0(n332), .B1(n215), .Y(n401) );
  OAI2BB2XL U557 ( .B0(n443), .B1(n496), .A0N(N280), .A1N(n495), .Y(n392) );
  OA22X1 U558 ( .A0(n339), .A1(n545), .B0(N100), .B1(n544), .Y(n470) );
  NAND2X1 U559 ( .A(n332), .B(n333), .Y(n241) );
  OAI221XL U560 ( .A0(n347), .A1(n173), .B0(n344), .B1(n174), .C0(n179), .Y(
        n370) );
  OAI22XL U561 ( .A0(n633), .A1(n241), .B0(n618), .B1(n627), .Y(n249) );
  OAI21XL U562 ( .A0(n629), .A1(n60), .B0(W[2]), .Y(n248) );
  OAI21XL U563 ( .A0(n634), .A1(n60), .B0(n331), .Y(n251) );
  NOR2X1 U564 ( .A(W[1]), .B(n333), .Y(n238) );
  OAI2BB2XL U565 ( .B0(n279), .B1(n505), .A0N(N334), .A1N(n506), .Y(n309) );
  OAI2BB2XL U566 ( .B0(n280), .B1(n505), .A0N(N333), .A1N(n506), .Y(n310) );
  AO22X1 U567 ( .A0(n617), .A1(n437), .B0(N357), .B1(n38), .Y(n395) );
  AO22X1 U568 ( .A0(n617), .A1(n436), .B0(N355), .B1(n38), .Y(n394) );
  AO22X1 U569 ( .A0(n617), .A1(n433), .B0(N356), .B1(n38), .Y(n393) );
  NOR2X2 U570 ( .A(n57), .B(n331), .Y(n38) );
  AOI32X1 U571 ( .A0(n223), .A1(n493), .A2(n617), .B0(n219), .B1(n341), .Y(
        n216) );
  OAI222XL U572 ( .A0(n71), .A1(n631), .B0(n80), .B1(n74), .C0(n75), .C1(n641), 
        .Y(n355) );
  AOI2BB2X1 U573 ( .B0(n77), .B1(n625), .A0N(n344), .A1N(n77), .Y(n80) );
  OAI222XL U574 ( .A0(n71), .A1(n630), .B0(n253), .B1(n74), .C0(n75), .C1(n441), .Y(n402) );
  AOI2BB2X1 U575 ( .B0(n77), .B1(n623), .A0N(n343), .A1N(n77), .Y(n253) );
  OAI222XL U576 ( .A0(n71), .A1(n629), .B0(n73), .B1(n74), .C0(n75), .C1(n640), 
        .Y(n354) );
  AOI2BB2X1 U577 ( .B0(n77), .B1(n624), .A0N(n342), .A1N(n77), .Y(n73) );
  OAI222XL U578 ( .A0(n344), .A1(n62), .B0(n347), .B1(n63), .C0(n64), .C1(n330), .Y(n353) );
  OAI222XL U579 ( .A0(n342), .A1(n62), .B0(n345), .B1(n63), .C0(n64), .C1(n328), .Y(n352) );
  OAI222XL U580 ( .A0(n343), .A1(n62), .B0(n346), .B1(n63), .C0(n64), .C1(n329), .Y(n351) );
  OAI221XL U581 ( .A0(n345), .A1(n173), .B0(n342), .B1(n174), .C0(n175), .Y(
        n368) );
  OAI221XL U582 ( .A0(n346), .A1(n173), .B0(n343), .B1(n174), .C0(n178), .Y(
        n369) );
  OAI21XL U583 ( .A0(n630), .A1(n60), .B0(n523), .Y(n242) );
  OAI21XL U584 ( .A0(n637), .A1(n60), .B0(n331), .Y(n245) );
  OAI22XL U585 ( .A0(n636), .A1(n241), .B0(n618), .B1(n628), .Y(n243) );
  AND2X2 U586 ( .A(n197), .B(n540), .Y(n88) );
  NAND3X1 U587 ( .A(n350), .B(n432), .C(n498), .Y(n91) );
  OAI211X1 U588 ( .A0(n340), .A1(n216), .B0(n217), .C0(n218), .Y(n398) );
  OAI2BB1X1 U589 ( .A0N(n145), .A1N(n170), .B0(n38), .Y(n217) );
  NAND3X1 U590 ( .A(n219), .B(n626), .C(n340), .Y(n218) );
  NAND2X1 U591 ( .A(n489), .B(N95), .Y(n170) );
  OAI22XL U592 ( .A0(n107), .A1(n639), .B0(n590), .B1(n120), .Y(n361) );
  AOI221XL U593 ( .A0(\order[6][0] ), .A1(n606), .B0(\order[5][0] ), .B1(n88), 
        .C0(n121), .Y(n120) );
  OAI222XL U594 ( .A0(n101), .A1(n112), .B0(n589), .B1(n102), .C0(n631), .C1(
        n114), .Y(n121) );
  OAI22XL U595 ( .A0(n107), .A1(n637), .B0(n590), .B1(n116), .Y(n360) );
  AOI221XL U596 ( .A0(\order[6][1] ), .A1(n606), .B0(\order[5][1] ), .B1(n88), 
        .C0(n117), .Y(n116) );
  OAI222XL U597 ( .A0(n97), .A1(n112), .B0(n589), .B1(n98), .C0(n630), .C1(
        n114), .Y(n117) );
  OAI221XL U598 ( .A0(n347), .A1(n185), .B0(n344), .B1(n186), .C0(n191), .Y(
        n373) );
  AOI22X1 U599 ( .A0(N220), .A1(n188), .B0(n599), .B1(\order[7][0] ), .Y(n191)
         );
  OAI221XL U600 ( .A0(n346), .A1(n185), .B0(n343), .B1(n186), .C0(n190), .Y(
        n372) );
  AOI22X1 U601 ( .A0(N221), .A1(n188), .B0(n599), .B1(\order[7][1] ), .Y(n190)
         );
  OAI221XL U602 ( .A0(n345), .A1(n185), .B0(n342), .B1(n186), .C0(n187), .Y(
        n371) );
  AOI22X1 U603 ( .A0(N222), .A1(n188), .B0(n599), .B1(\order[7][2] ), .Y(n187)
         );
  OAI22XL U604 ( .A0(n107), .A1(n634), .B0(n590), .B1(n110), .Y(n359) );
  AOI221XL U605 ( .A0(\order[6][2] ), .A1(n606), .B0(\order[5][2] ), .B1(n88), 
        .C0(n111), .Y(n110) );
  OAI222XL U606 ( .A0(n90), .A1(n112), .B0(n589), .B1(n93), .C0(n629), .C1(
        n114), .Y(n111) );
  NAND2X1 U607 ( .A(n605), .B(n540), .Y(n123) );
  OAI22XL U608 ( .A0(n638), .A1(n148), .B0(n597), .B1(n164), .Y(n367) );
  AOI211X1 U609 ( .A0(\order[3][0] ), .A1(n88), .B0(n165), .C0(n166), .Y(n164)
         );
  OAI222XL U610 ( .A0(n101), .A1(n598), .B0(n155), .B1(n102), .C0(n602), .C1(
        n604), .Y(n165) );
  OAI22XL U611 ( .A0(n631), .A1(n153), .B0(n143), .B1(n438), .Y(n166) );
  OAI22XL U612 ( .A0(n633), .A1(n148), .B0(n597), .B1(n150), .Y(n365) );
  AOI211X1 U613 ( .A0(\order[3][2] ), .A1(n88), .B0(n151), .C0(n152), .Y(n150)
         );
  OAI222XL U614 ( .A0(n90), .A1(n598), .B0(n155), .B1(n93), .C0(n627), .C1(
        n604), .Y(n151) );
  OAI22XL U615 ( .A0(n629), .A1(n153), .B0(n143), .B1(n635), .Y(n152) );
  OAI22XL U616 ( .A0(n636), .A1(n148), .B0(n597), .B1(n158), .Y(n366) );
  AOI211X1 U617 ( .A0(\order[3][1] ), .A1(n88), .B0(n159), .C0(n160), .Y(n158)
         );
  OAI222XL U618 ( .A0(n97), .A1(n598), .B0(n155), .B1(n98), .C0(n628), .C1(
        n604), .Y(n159) );
  OAI22XL U619 ( .A0(n630), .A1(n153), .B0(n143), .B1(n434), .Y(n160) );
  NOR3X1 U620 ( .A(n349), .B(n498), .C(n435), .Y(n181) );
  NAND3BX1 U621 ( .AN(n339), .B(N99), .C(n626), .Y(n41) );
  OAI22XL U622 ( .A0(n83), .A1(n632), .B0(n595), .B1(n95), .Y(n357) );
  AOI221XL U623 ( .A0(\order[7][1] ), .A1(n606), .B0(\order[6][1] ), .B1(n88), 
        .C0(n96), .Y(n95) );
  OAI22XL U624 ( .A0(n91), .A1(n97), .B0(n596), .B1(n98), .Y(n96) );
  OAI22XL U625 ( .A0(n125), .A1(n635), .B0(n591), .B1(n128), .Y(n362) );
  AOI221XL U626 ( .A0(n129), .A1(\order[7][2] ), .B0(\order[5][2] ), .B1(n606), 
        .C0(n130), .Y(n128) );
  OAI222XL U627 ( .A0(n90), .A1(n592), .B0(n132), .B1(n93), .C0(n627), .C1(
        n114), .Y(n130) );
  NAND2X1 U628 ( .A(n541), .B(N96), .Y(n145) );
  OAI22XL U629 ( .A0(n83), .A1(n440), .B0(n595), .B1(n86), .Y(n356) );
  AOI221XL U630 ( .A0(n606), .A1(\order[7][2] ), .B0(\order[6][2] ), .B1(n88), 
        .C0(n89), .Y(n86) );
  OAI22XL U631 ( .A0(n90), .A1(n91), .B0(n596), .B1(n93), .Y(n89) );
  OAI22XL U632 ( .A0(n125), .A1(n434), .B0(n591), .B1(n135), .Y(n363) );
  AOI221XL U633 ( .A0(n129), .A1(\order[7][1] ), .B0(\order[5][1] ), .B1(n606), 
        .C0(n136), .Y(n135) );
  OAI222XL U634 ( .A0(n97), .A1(n592), .B0(n132), .B1(n98), .C0(n628), .C1(
        n114), .Y(n136) );
  OAI22XL U635 ( .A0(n125), .A1(n438), .B0(n591), .B1(n139), .Y(n364) );
  AOI221XL U636 ( .A0(n129), .A1(\order[7][0] ), .B0(\order[5][0] ), .B1(n606), 
        .C0(n140), .Y(n139) );
  OAI222XL U637 ( .A0(n101), .A1(n592), .B0(n132), .B1(n102), .C0(n602), .C1(
        n114), .Y(n140) );
  NAND3X1 U638 ( .A(n349), .B(n350), .C(n498), .Y(n65) );
  NOR2X1 U639 ( .A(n607), .B(n540), .Y(n184) );
  NAND3X1 U640 ( .A(n294), .B(n439), .C(n327), .Y(n37) );
  OAI2BB2XL U641 ( .B0(n595), .B1(n99), .A0N(n595), .A1N(\order[2][0] ), .Y(
        n358) );
  AOI221XL U642 ( .A0(n606), .A1(\order[7][0] ), .B0(\order[6][0] ), .B1(n88), 
        .C0(n100), .Y(n99) );
  OAI22XL U643 ( .A0(n91), .A1(n101), .B0(n596), .B1(n102), .Y(n100) );
  AOI2BB2X1 U644 ( .B0(n236), .B1(n523), .A0N(n237), .A1N(n523), .Y(n233) );
  OAI222XL U645 ( .A0(n618), .A1(n602), .B0(n631), .B1(n60), .C0(n638), .C1(
        n241), .Y(n236) );
  AOI221XL U646 ( .A0(\order[2][0] ), .A1(n238), .B0(n619), .B1(\order[1][0] ), 
        .C0(n240), .Y(n237) );
  CLKINVX1 U647 ( .A(n241), .Y(n619) );
  OAI2BB2XL U648 ( .B0(n281), .B1(n505), .A0N(N332), .A1N(n506), .Y(n311) );
  OAI2BB2XL U649 ( .B0(n282), .B1(n505), .A0N(N331), .A1N(n506), .Y(n312) );
  OAI2BB2XL U650 ( .B0(n283), .B1(n505), .A0N(N330), .A1N(n506), .Y(n313) );
  OAI2BB2XL U651 ( .B0(n284), .B1(n505), .A0N(N329), .A1N(n506), .Y(n314) );
  OAI2BB2XL U652 ( .B0(n285), .B1(n505), .A0N(N328), .A1N(n506), .Y(n315) );
  OAI2BB2XL U653 ( .B0(n286), .B1(n505), .A0N(N327), .A1N(n506), .Y(n316) );
  OAI21XL U654 ( .A0(n339), .A1(n224), .B0(n225), .Y(n400) );
  AOI32X1 U655 ( .A0(n626), .A1(N99), .A2(n219), .B0(n38), .B1(n227), .Y(n225)
         );
  NOR2BX1 U656 ( .AN(n216), .B(n219), .Y(n224) );
  OAI21XL U657 ( .A0(n540), .A1(n605), .B0(n123), .Y(n227) );
  NOR3X1 U658 ( .A(n327), .B(n326), .C(n616), .Y(ns[2]) );
  NAND3X1 U659 ( .A(n326), .B(n616), .C(n327), .Y(n171) );
  CLKBUFX3 U660 ( .A(n348), .Y(n498) );
  OAI221XL U661 ( .A0(n610), .A1(n618), .B0(n332), .B1(n495), .C0(n60), .Y(
        n307) );
  XOR2X1 U662 ( .A(n610), .B(n333), .Y(n308) );
  OAI2BB2XL U663 ( .B0(n38), .B1(n610), .A0N(n327), .A1N(n39), .Y(ns[0]) );
  OAI21XL U664 ( .A0(n616), .A1(n41), .B0(n439), .Y(n39) );
  OAI2BB2XL U665 ( .B0(n287), .B1(n505), .A0N(N326), .A1N(n506), .Y(n317) );
  OAI2BB2XL U666 ( .B0(n290), .B1(n505), .A0N(N323), .A1N(n506), .Y(n320) );
  OAI2BB2XL U667 ( .B0(n292), .B1(n505), .A0N(N321), .A1N(n506), .Y(n322) );
  OAI2BB2XL U668 ( .B0(n293), .B1(n505), .A0N(N319), .A1N(n506), .Y(n323) );
  OAI2BB2XL U669 ( .B0(n295), .B1(n505), .A0N(N320), .A1N(n506), .Y(n324) );
  OAI2BB2XL U670 ( .B0(n288), .B1(n506), .A0N(N325), .A1N(n506), .Y(n318) );
  OAI2BB2XL U671 ( .B0(n289), .B1(n506), .A0N(N324), .A1N(n506), .Y(n319) );
  OAI2BB2XL U672 ( .B0(n291), .B1(n506), .A0N(N322), .A1N(n506), .Y(n321) );
  CLKBUFX3 U673 ( .A(n59), .Y(n495) );
  NOR3X1 U674 ( .A(n616), .B(n327), .C(n439), .Y(n59) );
  OA22X1 U675 ( .A0(\order[4][0] ), .A1(n489), .B0(\order[2][0] ), .B1(N96), 
        .Y(n476) );
  NOR2X1 U676 ( .A(n541), .B(N96), .Y(n474) );
  NOR2X1 U677 ( .A(n541), .B(n489), .Y(n473) );
  AOI222XL U678 ( .A0(n476), .A1(n541), .B0(n474), .B1(\order[3][0] ), .C0(
        n473), .C1(\order[5][0] ), .Y(n471) );
  OAI2BB2XL U679 ( .B0(N97), .B1(n471), .A0N(\order[7][0] ), .A1N(N97), .Y(
        N223) );
  OA22X1 U680 ( .A0(\order[4][1] ), .A1(n489), .B0(\order[2][1] ), .B1(N96), 
        .Y(n479) );
  AOI222XL U681 ( .A0(n479), .A1(n541), .B0(n474), .B1(\order[3][1] ), .C0(
        n473), .C1(\order[5][1] ), .Y(n472) );
  OAI2BB2XL U682 ( .B0(N97), .B1(n472), .A0N(\order[7][1] ), .A1N(N97), .Y(
        N224) );
  OA22X1 U683 ( .A0(\order[4][2] ), .A1(n489), .B0(\order[2][2] ), .B1(N96), 
        .Y(n484) );
  AOI222XL U684 ( .A0(n484), .A1(n541), .B0(n474), .B1(\order[3][2] ), .C0(
        n473), .C1(\order[5][2] ), .Y(n475) );
  OAI2BB2XL U685 ( .B0(N97), .B1(n475), .A0N(\order[7][2] ), .A1N(N97), .Y(
        N225) );
  NOR2X1 U686 ( .A(N95), .B(N96), .Y(n483) );
  NOR2X1 U687 ( .A(n489), .B(N95), .Y(n482) );
  AOI222XL U688 ( .A0(N95), .A1(n476), .B0(\order[1][0] ), .B1(n483), .C0(
        \order[3][0] ), .C1(n482), .Y(n478) );
  AND2X1 U689 ( .A(N97), .B(n541), .Y(n486) );
  AOI22X1 U690 ( .A0(\order[5][0] ), .A1(n486), .B0(\order[6][0] ), .B1(n485), 
        .Y(n477) );
  OAI21XL U691 ( .A0(N97), .A1(n478), .B0(n477), .Y(N220) );
  AOI222XL U692 ( .A0(N95), .A1(n479), .B0(\order[1][1] ), .B1(n483), .C0(
        \order[3][1] ), .C1(n482), .Y(n481) );
  AOI22X1 U693 ( .A0(\order[5][1] ), .A1(n486), .B0(\order[6][1] ), .B1(n485), 
        .Y(n480) );
  OAI21XL U694 ( .A0(N97), .A1(n481), .B0(n480), .Y(N221) );
  AOI222XL U695 ( .A0(N95), .A1(n484), .B0(\order[1][2] ), .B1(n483), .C0(
        \order[3][2] ), .C1(n482), .Y(n488) );
  AOI22X1 U696 ( .A0(\order[5][2] ), .A1(n486), .B0(\order[6][2] ), .B1(n485), 
        .Y(n487) );
  OAI21XL U697 ( .A0(N97), .A1(n488), .B0(n487), .Y(N222) );
  BUFX16 U698 ( .A(n642), .Y(J[2]) );
  OAI22XL U699 ( .A0(n522), .A1(n331), .B0(n523), .B1(n521), .Y(n642) );
  BUFX12 U700 ( .A(n644), .Y(J[0]) );
  BUFX16 U701 ( .A(n643), .Y(J[1]) );
  OR2XL U702 ( .A(n247), .B(J[2]), .Y(n235) );
  NOR2X1 U703 ( .A(n332), .B(N92), .Y(n520) );
  AO22X1 U704 ( .A0(\order[5][0] ), .A1(n517), .B0(\order[4][0] ), .B1(n516), 
        .Y(n507) );
  AOI221XL U705 ( .A0(\order[6][0] ), .A1(n520), .B0(\order[7][0] ), .B1(n519), 
        .C0(n507), .Y(n510) );
  AO22X1 U706 ( .A0(\order[1][0] ), .A1(n517), .B0(\order[0][0] ), .B1(n516), 
        .Y(n508) );
  AOI221XL U707 ( .A0(\order[2][0] ), .A1(n520), .B0(\order[3][0] ), .B1(n519), 
        .C0(n508), .Y(n509) );
  OAI22XL U708 ( .A0(n331), .A1(n510), .B0(n523), .B1(n509), .Y(n644) );
  AO22X1 U709 ( .A0(\order[5][1] ), .A1(n517), .B0(\order[4][1] ), .B1(n516), 
        .Y(n511) );
  AOI221XL U710 ( .A0(\order[6][1] ), .A1(n520), .B0(\order[7][1] ), .B1(n519), 
        .C0(n511), .Y(n514) );
  AO22X1 U711 ( .A0(\order[1][1] ), .A1(n517), .B0(\order[0][1] ), .B1(n516), 
        .Y(n512) );
  AOI221XL U712 ( .A0(\order[2][1] ), .A1(n520), .B0(\order[3][1] ), .B1(n519), 
        .C0(n512), .Y(n513) );
  OAI22XL U713 ( .A0(n331), .A1(n514), .B0(n523), .B1(n513), .Y(n643) );
  AO22X1 U714 ( .A0(\order[5][2] ), .A1(n517), .B0(\order[4][2] ), .B1(n516), 
        .Y(n515) );
  AOI221XL U715 ( .A0(\order[6][2] ), .A1(n520), .B0(\order[7][2] ), .B1(n519), 
        .C0(n515), .Y(n522) );
  AO22X1 U716 ( .A0(\order[1][2] ), .A1(n517), .B0(\order[0][2] ), .B1(n516), 
        .Y(n518) );
  AOI221XL U717 ( .A0(\order[2][2] ), .A1(n520), .B0(\order[3][2] ), .B1(n519), 
        .C0(n518), .Y(n521) );
  NOR2X1 U718 ( .A(n489), .B(N95), .Y(n537) );
  NOR2X1 U719 ( .A(n489), .B(n541), .Y(n536) );
  NOR2X1 U720 ( .A(n541), .B(N96), .Y(n534) );
  NOR2X1 U721 ( .A(N95), .B(N96), .Y(n533) );
  AO22X1 U722 ( .A0(\order[5][0] ), .A1(n534), .B0(\order[4][0] ), .B1(n533), 
        .Y(n524) );
  AOI221XL U723 ( .A0(\order[6][0] ), .A1(n537), .B0(\order[7][0] ), .B1(n536), 
        .C0(n524), .Y(n527) );
  AO22X1 U724 ( .A0(\order[1][0] ), .A1(n534), .B0(\order[0][0] ), .B1(n533), 
        .Y(n525) );
  AOI221XL U725 ( .A0(\order[2][0] ), .A1(n537), .B0(\order[3][0] ), .B1(n536), 
        .C0(n525), .Y(n526) );
  OAI22XL U726 ( .A0(n540), .A1(n527), .B0(N97), .B1(n526), .Y(N357) );
  AO22X1 U727 ( .A0(\order[5][1] ), .A1(n534), .B0(\order[4][1] ), .B1(n533), 
        .Y(n528) );
  AOI221XL U728 ( .A0(\order[6][1] ), .A1(n537), .B0(\order[7][1] ), .B1(n536), 
        .C0(n528), .Y(n531) );
  AO22X1 U729 ( .A0(\order[1][1] ), .A1(n534), .B0(\order[0][1] ), .B1(n533), 
        .Y(n529) );
  AOI221XL U730 ( .A0(\order[2][1] ), .A1(n537), .B0(\order[3][1] ), .B1(n536), 
        .C0(n529), .Y(n530) );
  OAI22XL U731 ( .A0(n540), .A1(n531), .B0(N97), .B1(n530), .Y(N356) );
  AO22X1 U732 ( .A0(\order[5][2] ), .A1(n534), .B0(\order[4][2] ), .B1(n533), 
        .Y(n532) );
  AOI221XL U733 ( .A0(\order[6][2] ), .A1(n537), .B0(\order[7][2] ), .B1(n536), 
        .C0(n532), .Y(n539) );
  AO22X1 U734 ( .A0(\order[1][2] ), .A1(n534), .B0(\order[0][2] ), .B1(n533), 
        .Y(n535) );
  AOI221XL U735 ( .A0(\order[2][2] ), .A1(n537), .B0(\order[3][2] ), .B1(n536), 
        .C0(n535), .Y(n538) );
  OAI22XL U736 ( .A0(n539), .A1(n540), .B0(N97), .B1(n538), .Y(N355) );
  NOR2X1 U737 ( .A(n340), .B(N98), .Y(n555) );
  NOR2X1 U738 ( .A(n340), .B(n558), .Y(n554) );
  NOR2X1 U739 ( .A(n558), .B(N99), .Y(n552) );
  NOR2X1 U740 ( .A(N98), .B(N99), .Y(n551) );
  AO22X1 U741 ( .A0(\order[5][0] ), .A1(n552), .B0(\order[4][0] ), .B1(n551), 
        .Y(n542) );
  AOI221XL U742 ( .A0(\order[6][0] ), .A1(n555), .B0(\order[7][0] ), .B1(n554), 
        .C0(n542), .Y(n545) );
  AO22X1 U743 ( .A0(\order[1][0] ), .A1(n552), .B0(\order[0][0] ), .B1(n551), 
        .Y(n543) );
  AOI221XL U744 ( .A0(\order[2][0] ), .A1(n555), .B0(\order[3][0] ), .B1(n554), 
        .C0(n543), .Y(n544) );
  AO22X1 U745 ( .A0(\order[5][1] ), .A1(n552), .B0(\order[4][1] ), .B1(n551), 
        .Y(n546) );
  AOI221XL U746 ( .A0(\order[6][1] ), .A1(n555), .B0(\order[7][1] ), .B1(n554), 
        .C0(n546), .Y(n549) );
  AO22X1 U747 ( .A0(\order[1][1] ), .A1(n552), .B0(\order[0][1] ), .B1(n551), 
        .Y(n547) );
  AOI221XL U748 ( .A0(\order[2][1] ), .A1(n555), .B0(\order[3][1] ), .B1(n554), 
        .C0(n547), .Y(n548) );
  AO22X1 U749 ( .A0(\order[5][2] ), .A1(n552), .B0(\order[4][2] ), .B1(n551), 
        .Y(n550) );
  AOI221XL U750 ( .A0(\order[6][2] ), .A1(n555), .B0(\order[7][2] ), .B1(n554), 
        .C0(n550), .Y(n557) );
  AO22X1 U751 ( .A0(\order[1][2] ), .A1(n552), .B0(\order[0][2] ), .B1(n551), 
        .Y(n553) );
  AOI221XL U752 ( .A0(\order[2][2] ), .A1(n555), .B0(\order[3][2] ), .B1(n554), 
        .C0(n553), .Y(n556) );
  OAI22XL U753 ( .A0(temp_min_cost[1]), .A1(n559), .B0(n559), .B1(n585), .Y(
        n561) );
  NAND2X1 U754 ( .A(temp_min_cost[7]), .B(n582), .Y(n573) );
  NAND2X1 U755 ( .A(temp_min_cost[6]), .B(n583), .Y(n568) );
  NOR3BXL U756 ( .AN(n568), .B(n562), .C(n569), .Y(n560) );
  NAND3X1 U757 ( .A(n561), .B(n573), .C(n560), .Y(n580) );
  NAND2X1 U758 ( .A(temp_min_cost[9]), .B(n581), .Y(n576) );
  NOR2X1 U759 ( .A(n578), .B(n577), .Y(n567) );
  OAI211X1 U760 ( .A0(n564), .A1(n447), .B0(n563), .C0(n575), .Y(n565) );
  OAI221XL U761 ( .A0(temp_min_cost[2]), .A1(n277), .B0(temp_min_cost[3]), 
        .B1(n584), .C0(n565), .Y(n566) );
  AOI222XL U762 ( .A0(n648), .A1(n450), .B0(n649), .B1(n451), .C0(n567), .C1(
        n566), .Y(n571) );
  NAND2BX1 U763 ( .AN(n569), .B(n568), .Y(n570) );
  OAI222XL U764 ( .A0(n571), .A1(n570), .B0(temp_min_cost[6]), .B1(n583), .C0(
        temp_min_cost[7]), .C1(n582), .Y(n572) );
  NOR4X1 U765 ( .A(n580), .B(n579), .C(n578), .D(n577), .Y(N303) );
endmodule

