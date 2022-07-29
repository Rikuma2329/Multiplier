`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/02/18 12:24:40
// Design Name: 
// Module Name: TREE_4
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


(* keep_hierarchy = "yes" *) module TREE_4(a1, a2, b1, b2, c_in_1, c_in_2, s1, s2, c_out_1, c_out_2);
    input [23:0] a1, b1, c_in_1;
    input [3:0] a2, b2, c_in_2;
    output [23:0] s1, c_out_1;
    output [3:0] s2, c_out_2;
    
    CSA24 csa24(a1, b1, c_in_1, s1, c_out_1);
    CSA4 csa4(a2, b2, c_in_2, s2, c_out_2);
endmodule