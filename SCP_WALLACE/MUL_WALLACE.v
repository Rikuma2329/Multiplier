`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/02/18 00:59:37
// Design Name: 
// Module Name: MUL_WALLACE
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


(* keep_hierarchy = "yes" *) module MUL_WALLACE(a, b, s);
    input [15:0] a, b;
    output [31:0] s;
    wire [15:0] t0, t1, t2, t3, t4, c0, c1, c2, c3, c4;
    wire [18:0] t5, t6, t7, c5, c6, c7;
    wire [18:0] t8, c8;
    wire [17:0] t9, c9;
    wire [23:0] t10, c10; 
    wire [3:0] t11, c11;
    wire [23:0] t12, c12;
    wire [24:0] t13, c13, s_rca;
    wire [15:0] pp0, pp1, pp2, pp3, pp4, pp5, pp6, pp7, pp8, pp9, pp10, pp11, pp12, pp13, pp14, pp15;
    
    PARTIAL_PRODUCT partial_product_0(a, b[0], pp0);
    PARTIAL_PRODUCT partial_product_1(a, b[1], pp1);
    PARTIAL_PRODUCT partial_product_2(a, b[2], pp2);
    PARTIAL_PRODUCT partial_product_3(a, b[3], pp3);
    PARTIAL_PRODUCT partial_product_4(a, b[4], pp4);
    PARTIAL_PRODUCT partial_product_5(a, b[5], pp5);
    PARTIAL_PRODUCT partial_product_6(a, b[6], pp6);
    PARTIAL_PRODUCT partial_product_7(a, b[7], pp7);
    PARTIAL_PRODUCT partial_product_8(a, b[8], pp8);
    PARTIAL_PRODUCT partial_product_9(a, b[9], pp9);
    PARTIAL_PRODUCT partial_product_10(a, b[10], pp10);
    PARTIAL_PRODUCT partial_product_11(a, b[11], pp11);
    PARTIAL_PRODUCT partial_product_12(a, b[12], pp12);
    PARTIAL_PRODUCT partial_product_13(a, b[13], pp13);
    PARTIAL_PRODUCT partial_product_14(a, b[14], pp14);
    PARTIAL_PRODUCT partial_product_15(a, b[15], pp15);
    
    TREE_1 tree_1({pp15[1], pp0[15:1]}, {pp15[4], pp3[15:1]}, {pp15[7], pp6[15:1]}, {pp15[10], pp9[15:1]}, {pp15[13], pp12[15:1]}, 
                   pp1, pp4, pp7, pp10, pp13, 
                   {pp2[14:0], 1'b0}, {pp5[14:0], 1'b0}, {pp8[14:0], 1'b0}, {pp11[14:0], 1'b0}, {pp14[14:0], 1'b0},
                   t0, t1, t2, t3, t4, c0, c1, c2, c3, c4);
  
    TREE_2 tree_2({c4[6:4], pp2[15], t0[15:1]}, {c4[10:7], c1[15:1]}, {c4[15:13], pp11[15], t3[15:1]}, 
                  {pp15[5], 1'b0, pp15[3], c0}, {pp15[9], pp8[15], t2, pp6[0]}, {pp15[14], 1'b0, pp15[12], c3},
                  {pp5[15], t1, pp3[0], 1'b0}, {1'b0, c2, 2'b0}, {pp14[15], t4, pp12[0], 1'b0}, 
                  t5, t6, t7, c5, c6, c7);
   
    TREE_3 tree_3({pp15[6], t5[18:1]}, {pp15[11], c6[18:2]}, c5, {t7[15:0], t3[0], pp9[0]}, {t6[15:0], c1[0], 2'b0}, {c7[14:0], 3'b0},
                  t8, t9, c8, c9);
                  
    TREE_4 tree_4({t7[16], c4[12:11], t6[18:16], t8[18:1]}, c9[7:4], {c9[17:13], c8}, c4[3:0], {c7[15], t9, c6[1:0], 3'b0}, {pp15[2], 1'b0, pp15[0], 1'b0},
                  t10, t11, c10, c11);
   
    CSA24 csa24({c7[16], t10[23:1]}, c10, {t7[17], 4'b0, pp15[8], c9[12:8], t11[3:0], c9[3:0], 5'b0}, t12, c12);
    
    CSA25 csa25({c7[18:17], t12[23:1]}, {1'b0, c12}, {pp15[15], t7[18], 10'b0, c11[3:0], 9'b0}, t13, c13);
    
    RCA rca({1'b0, t13[24:1]}, c13, s_rca);
    
    assign s = {s_rca, t13[0], t12[0], t10[0], t8[0], t5[0], t0[0], pp0[0]};

endmodule
