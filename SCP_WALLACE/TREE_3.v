`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/02/18 00:58:29
// Design Name: 
// Module Name: TREE_3
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


(* keep_hierarchy = "yes" *) module TREE_3(a1, a2, b1, b2, c_in_1, c_in_2, s1, s2, c_out_1, c_out_2);
    input [18:0] a1, b1, c_in_1;
    input [17:0] a2, b2, c_in_2;
    output [18:0] s1, c_out_1;
    output [17:0] s2, c_out_2;
    
    CSA19 csa19(a1, b1, c_in_1, s1, c_out_1);
    CSA18 csa18(a2, b2, c_in_2, s2, c_out_2);
    
endmodule
