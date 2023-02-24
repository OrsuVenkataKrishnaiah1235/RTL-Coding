`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:54:20 12/11/2022 
// Design Name: 
// Module Name:    Half_Adder_tb 
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
module Half_Adder_tb();
reg a_tb,b_tb;
wire sum_tb,carry_tb;
half_adder DUT(.a(a_tb),.b(b_tb),.sum(sum_tb),.carry(carry_tb));
integer i;
initial begin
$monitor($time,"a=%d b=%d sum=%d carry=%d",a_tb,b_tb,sum_tb,carry_tb);
end
initial
begin
	for(i=0;i<4;i=i+1)
	begin
	{a_tb,b_tb}=i;
	#10;
	end
end
endmodule
/*
initial begin
a_tb=1'b0;b_tb=1'b0;
#100 a_tb=1'b0;b_tb=1'b1;
#100 a_tb=1'b1;b_tb=1'b0;
#100 a_tb=1'b1;b_tb=1'b1;
end*/
