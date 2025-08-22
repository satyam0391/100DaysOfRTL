`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2025 23:18:43
// Design Name: 
// Module Name: tb
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


module tb();
reg clk,rst;
wire [3:0]q;
Jhonson_counter dut (clk,rst,q);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
rst=0; #5
rst=1; #10
rst=0; #10
#40
$finish; 
end
endmodule
