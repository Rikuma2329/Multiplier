`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/02/18 12:17:07
// Design Name: 
// Module Name: MUL_CSA
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


(* keep_hierarchy = "yes" *) module MUL_CSA(a, b, s);
    input [15:0] a, b;
    output [31:0] s;
    wire [14:0] c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14;
    wire [14:0] s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s_rca;
    wire [15:0] pp0, pp1, pp2, pp3, pp4, pp5, pp6, pp7, pp8, pp9, pp10, pp11, pp12, pp13, pp14, pp15;
    wire c_out;
    
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
    
    CSA csa_0(pp0[15:1], pp1[14:0], 15'b0, s0, c0);
    CSA csa_1({pp1[15], s0[14:1]}, pp2[14:0], c0, s1, c1);
    CSA csa_2({pp2[15], s1[14:1]}, pp3[14:0], c1, s2, c2);
    CSA csa_3({pp3[15], s2[14:1]}, pp4[14:0], c2, s3, c3);
    CSA csa_4({pp4[15], s3[14:1]}, pp5[14:0], c3, s4, c4);
    CSA csa_5({pp5[15], s4[14:1]}, pp6[14:0], c4, s5, c5);
    CSA csa_6({pp6[15], s5[14:1]}, pp7[14:0], c5, s6, c6);
    CSA csa_7({pp7[15], s6[14:1]}, pp8[14:0], c6, s7, c7);
    CSA csa_8({pp8[15], s7[14:1]}, pp9[14:0], c7, s8, c8);
    CSA csa_9({pp9[15], s8[14:1]}, pp10[14:0], c8, s9, c9);
    CSA csa_10({pp10[15], s9[14:1]}, pp11[14:0], c9, s10, c10);
    CSA csa_11({pp11[15], s10[14:1]}, pp12[14:0], c10, s11, c11);
    CSA csa_12({pp12[15], s11[14:1]}, pp13[14:0], c11, s12, c12);
    CSA csa_13({pp13[15], s12[14:1]}, pp14[14:0], c12, s13, c13);
    CSA csa_14({pp14[15], s13[14:1]}, pp15[14:0], c13, s14, c14);
    RCA rca(c14, {pp15[15], s14[14:1]}, s_rca, c_out);
    
    assign s = {c_out, s_rca, s14[0], s13[0], s12[0], s11[0], s10[0], s9[0], s8[0], s7[0], s6[0], s5[0], s4[0], s3[0], s2[0], s1[0], s0[0], pp0[0]};

endmodule
