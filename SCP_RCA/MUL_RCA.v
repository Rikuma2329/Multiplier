`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/02/17 23:56:00
// Design Name: 
// Module Name: MUL_RCA
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


(* keep_hierarchy = "yes" *) module MUL_RCA(a, b, s);
    input [15:0] a, b;
    output [31:0] s;
    wire [14:0] c;
    wire [15:0] c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15;
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
    
    FA16 fa16_1({1'b0, pp0[15:1]}, pp1, c1, c[0]);
    FA16 fa16_2({c[0], c1[15:1]}, pp2, c2, c[1]);
    FA16 fa16_3({c[1], c2[15:1]}, pp3, c3, c[2]);
    FA16 fa16_4({c[2], c3[15:1]}, pp4, c4, c[3]);
    FA16 fa16_5({c[3], c4[15:1]}, pp5, c5, c[4]);
    FA16 fa16_6({c[4], c5[15:1]}, pp6, c6, c[5]);
    FA16 fa16_7({c[5], c6[15:1]}, pp7, c7, c[6]);
    FA16 fa16_8({c[6], c7[15:1]}, pp8, c8, c[7]);
    FA16 fa16_9({c[7], c8[15:1]}, pp9, c9, c[8]);
    FA16 fa16_10({c[8], c9[15:1]}, pp10, c10, c[9]);
    FA16 fa16_11({c[9], c10[15:1]}, pp11, c11, c[10]);
    FA16 fa16_12({c[10], c11[15:1]}, pp12, c12, c[11]);
    FA16 fa16_13({c[11], c12[15:1]}, pp13, c13, c[12]);
    FA16 fa16_14({c[12], c13[15:1]}, pp14, c14, c[13]);
    FA16 fa16_15({c[13], c14[15:1]}, pp15, c15, c[14]);
    
    assign s = {c[14], c15, c14[0], c13[0], c12[0], c11[0], c10[0], c9[0], c8[0], c7[0], c6[0], c5[0], c4[0], c3[0], c2[0], c1[0], pp0[0]};
    
    
    
endmodule
