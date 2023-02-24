`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:26:28 12/15/2022 
// Design Name: 
// Module Name:    Alu_tb 
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
module Alu_tb();
reg [3:0]a,b,s;
wire [3:0]y;
Alu DUT(a,b,s,y);
integer i; 
initial
begin
a<=4'b1100;//12
b<=4'b0010;//2
for(i=0;i<16;i=i+1)
begin
	s=i;
	#10;
end
end
initial
begin
$monitor($time,"S=%d A=%d B=%d Output=%d",s,a,b,y);
end
endmodule
