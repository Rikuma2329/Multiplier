`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/02/18 00:41:56
// Design Name: 
// Module Name: CSA
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


(* keep_hierarchy = "yes" *) module CSA(a, b, c_in, s, c_out);
    input [14:0] a, b, c_in;
    output [14:0] s, c_out;
    
    FA fa0(a[0], b[0], c_in[0], s[0], c_out[0]);
    FA fa1(a[1], b[1], c_in[1], s[1], c_out[1]);
    FA fa2(a[2], b[2], c_in[2], s[2], c_out[2]);
    FA fa3(a[3], b[3], c_in[3], s[3], c_out[3]);
    FA fa4(a[4], b[4], c_in[4], s[4], c_out[4]);
    FA fa5(a[5], b[5], c_in[5], s[5], c_out[5]);
    FA fa6(a[6], b[6], c_in[6], s[6], c_out[6]);
    FA fa7(a[7], b[7], c_in[7], s[7], c_out[7]);
    FA fa8(a[8], b[8], c_in[8], s[8], c_out[8]);
    FA fa9(a[9], b[9], c_in[9], s[9], c_out[9]);
    FA fa10(a[10], b[10], c_in[10], s[10], c_out[10]);
    FA fa11(a[11], b[11], c_in[11], s[11], c_out[11]);
    FA fa12(a[12], b[12], c_in[12], s[12], c_out[12]);
    FA fa13(a[13], b[13], c_in[13], s[13], c_out[13]);
    FA fa14(a[14], b[14], c_in[14], s[14], c_out[14]);
    
endmodule
