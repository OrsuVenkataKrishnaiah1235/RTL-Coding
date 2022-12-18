`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:45:01 12/18/2022 
// Design Name: 
// Module Name:    Binarytogray_tb 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Binarytogray_tb();
reg [3:0]b;
wire [3:0]g;
integer i;
Binarytogray DUT(b,g);
initial
begin
b=0;
for(i=0;i<16;i=i+1)
begin
	b=i;
	#10;
end
end
initial 
begin
$monitor($time," Binary=%d Gray=%d ",b,g);
end
endmodule
