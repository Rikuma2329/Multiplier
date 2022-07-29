`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/02/18 00:57:55
// Design Name: 
// Module Name: TREE_2
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


(* keep_hierarchy = "yes" *) module TREE_2(a1, a2, a3, b1, b2, b3, c_in_1, c_in_2, c_in_3, s1, s2, s3, c_out_1, c_out_2, c_out_3);
    input [18:0] a1, a2, a3, b1, b2, b3, c_in_1, c_in_2, c_in_3;
    output [18:0] s1, s2, s3, c_out_1, c_out_2, c_out_3;
    
    CSA19 csa19_1(a1, b1, c_in_1, s1, c_out_1);
    CSA19 csa19_2(a2, b2, c_in_2, s2, c_out_2);
    CSA19 csa19_3(a3, b3, c_in_3, s3, c_out_3);
    
endmodule
