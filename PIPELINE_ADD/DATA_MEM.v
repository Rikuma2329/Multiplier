`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/02/08 14:40:02
// Design Name: 
// Module Name: DATA_MEM
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


(* keep_hierarchy = "yes" *) module DATA_MEM(clk, rst, read_add, write_data, read_data, MemWrite, MemRead);
    input clk, rst, MemWrite, MemRead;
    input [31:0] read_add, write_data;
    output [31:0] read_data;
    reg [31:0] data_mem [255:0];
    
    assign read_data = (MemRead)? data_mem[read_add] : 32'b0000_0000_0000_0000_0000_0000_0000_0000;

    integer i;
    initial begin
        for(i = 0; i <= 255; i = i + 1)
            data_mem[i] <= 32'b0000_0000_0000_0000_0000_0000_0000_0000;
        
        //data_mem[1] <= 16'b0000_0001_1010_0011;
        //data_mem[2] <= 16'b0000_0100_0101_1001;
        
        data_mem[1] <= 16'b0000_0000_0000_0100;
        data_mem[2] <= 16'b0000_0000_0001_0011;
        
        data_mem[4] <= 32'b0000_0000_0000_0000_0000_0000_0000_0001;
    end
    
    always @(posedge clk) begin
        if(MemWrite == 1'b1) begin
                data_mem[read_add] <= write_data;
        end
    end
    
endmodule
