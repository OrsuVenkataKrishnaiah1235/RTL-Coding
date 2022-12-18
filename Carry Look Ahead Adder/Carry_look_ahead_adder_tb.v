`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:58:53 12/12/2022 
// Design Name: 
// Module Name:    Carry_look_ahead_adder_tb 
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
module Carry_look_ahead_adder_tb();
reg [3:0]a_tb;
reg [3:0]b_tb;
reg cin_tb;
wire [3:0]sum_tb;
wire carry_tb;
integer i;
carry_look_ahead_adder DUT(a_tb,b_tb,cin_tb,sum_tb,carry_tb);

initial
begin
	for(i=0;i<512;i=i+1)
	begin
	{a_tb,b_tb,cin_tb}=i;
	#10;
	end
end

initial
begin
$monitor($time,"A=%d B=%d c=%d Sum=%d Carry=%d",a_tb,b_tb,cin_tb,sum_tb,carry_tb);
end

endmodule
