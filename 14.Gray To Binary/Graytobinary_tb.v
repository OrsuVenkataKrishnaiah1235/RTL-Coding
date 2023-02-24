`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:46:55 12/18/2022 
// Design Name: 
// Module Name:    Graytobinary_tb 
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
module Graytobinary_tb();
reg [3:0]g;
wire [3:0]b;
integer i;
Graytobinary DUT(g,b);
initial
begin
	g=0;
	for(i=0;i<16;i=i+1)
	begin
		g=i;
	   #10;
	end
	$finish;
end
initial
begin
$monitor($time," Gray =%d Binary =%d",g,b);
end


endmodule
