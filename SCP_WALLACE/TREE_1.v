`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/02/18 00:57:21
// Design Name: 
// Module Name: TREE_1
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


(* keep_hierarchy = "yes" *) module TREE_1(a1, a2, a3, a4, a5, b1, b2, b3, b4, b5, c_in_1, c_in_2, c_in_3, c_in_4, c_in_5, s1, s2, s3, s4, s5, c_out_1, c_out_2, c_out_3, c_out_4, c_out_5);
    input [15:0] a1, a2, a3, a4, a5, b1, b2, b3, b4, b5, c_in_1, c_in_2, c_in_3, c_in_4, c_in_5;
    output [15:0] s1, s2, s3, s4, s5, c_out_1, c_out_2, c_out_3, c_out_4, c_out_5;
    
    CSA16 csa16_1(a1, b1, c_in_1, s1, c_out_1);
    CSA16 csa16_2(a2, b2, c_in_2, s2, c_out_2);
    CSA16 csa16_3(a3, b3, c_in_3, s3, c_out_3);
    CSA16 csa16_4(a4, b4, c_in_4, s4, c_out_4);
    CSA16 csa16_5(a5, b5, c_in_5, s5, c_out_5);
endmodule
