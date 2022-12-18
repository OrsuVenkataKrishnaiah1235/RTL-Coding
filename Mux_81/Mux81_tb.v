`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:12 12/15/2022 
// Design Name: 
// Module Name:    Mux81_tb 
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
module Mux81_tb();
reg [7:0]i;
reg [2:0]s;
wire y;
mux_81 uut(i,s,y);
integer j;
initial
begin
	for(j=0;j<256;j=j+1)
	begin
	{i,s}=j;
	#10;
	end
end
initial
begin
$monitor($time,"S=%d i=%d y=%d",s,i,y);
end 



endmodule
