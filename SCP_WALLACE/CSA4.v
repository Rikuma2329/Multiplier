`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/02/18 00:51:32
// Design Name: 
// Module Name: CSA4
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


(* keep_hierarchy = "yes" *) module CSA4(a, b, c_in, s, c_out);
    input [3:0] a, b, c_in;
    output [3:0] s, c_out;
    
    FA fa0(a[0], b[0], c_in[0], s[0], c_out[0]);
    FA fa1(a[1], b[1], c_in[1], s[1], c_out[1]);
    FA fa2(a[2], b[2], c_in[2], s[2], c_out[2]);
    FA fa3(a[3], b[3], c_in[3], s[3], c_out[3]);
    
endmodule
