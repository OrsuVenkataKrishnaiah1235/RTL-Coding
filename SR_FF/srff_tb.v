`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:42:23 12/16/2022 
// Design Name: 
// Module Name:    srff_tb 
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
module srff_tb();
reg s,r,clk,rst;
wire q,qbar;
srff DUT(s,r,clk,rst,q,qbar);
initial
begin
	clk=0;
	rst=1;
	#10 rst=0;s=1'b0;r=1'b0;
	#10 s=1'b0;r=1'b1;
	#10 s=1'b1;r=1'b0;
	#10 s=1'b1;r=1'b1;
	#10 $stop;
end
initial
begin
$monitor($time,"clk=%d rst=%d S=%d R=%d Q=%d Qbar=%d",clk,rst,s,r,q,qbar);
end
always
begin
#5 clk=~clk;
end
endmodule
