`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/02/18 00:42:46
// Design Name: 
// Module Name: RCA
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


(* keep_hierarchy = "yes" *) module RCA(a, b, s, c_out);
    input [14:0] a, b;
    output [14:0] s;
    output c_out;
    wire [13:0] c;
    
    HA ha(a[0], b[0], s[0], c[0]);
    FA fa1(a[1], b[1], c[0], s[1], c[1]);
    FA fa2(a[2], b[2], c[1], s[2], c[2]);
    FA fa3(a[3], b[3], c[2], s[3], c[3]);
    FA fa4(a[4], b[4], c[3], s[4], c[4]);
    FA fa5(a[5], b[5], c[4], s[5], c[5]);
    FA fa6(a[6], b[6], c[5], s[6], c[6]);
    FA fa7(a[7], b[7], c[6], s[7], c[7]);
    FA fa8(a[8], b[8], c[7], s[8], c[8]);
    FA fa9(a[9], b[9], c[8], s[9], c[9]);
    FA fa10(a[10], b[10], c[9], s[10], c[10]);
    FA fa11(a[11], b[11], c[10], s[11], c[11]);
    FA fa12(a[12], b[12], c[11], s[12], c[12]);
    FA fa13(a[13], b[13], c[12], s[13], c[13]);
    FA fa14(a[14], b[14], c[13], s[14], c_out);
    
endmodule
