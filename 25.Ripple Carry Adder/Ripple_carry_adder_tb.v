`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:29:55 12/11/2022 
// Design Name: 
// Module Name:    Ripple_carry_adder_tb 
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
module Ripple_carry_adder_tb();
reg [3:0]A_tb;
reg [3:0]B_tb;
wire carry_tb;
wire [3:0]Sum_tb;
Ripple_Carry_adder DUT(A_tb,B_tb,Sum_tb,carry_tb);
integer i;
initial
begin
	for(i=0;i<64;i=i+1)
	begin
		{A_tb,B_tb}=i;
		#10;
	end
end
initial
begin
$monitor($time,"A=%d \t B=%d \t Sum=%d \t Carry=%d\t ",A_tb,B_tb,Sum_tb,carry_tb );
end
endmodule
