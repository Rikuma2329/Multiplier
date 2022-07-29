`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/02/18 01:05:26
// Design Name: 
// Module Name: PARTIAL_PRODUCT
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


(* keep_hierarchy = "yes" *) module PARTIAL_PRODUCT(a, b, pp);
    input [15:0] a;
    input b;
    output [15:0] pp;
    
    assign pp = (a & {16{b}}); 

endmodule
