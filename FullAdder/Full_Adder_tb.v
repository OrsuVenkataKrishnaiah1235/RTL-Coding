`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:46:59 12/11/2022 
// Design Name: 
// Module Name:    Full_Adder_tb 
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
module Full_Adder_tb();
reg a_tb,b_tb,c_tb;
wire sum_tb,carry_tb;
full_adder uut(.a(a_tb),.b(b_tb),.c(c_tb),.sum(sum_tb),.carry(carry_tb));
integer i;

initial
begin
$monitor($time,"A=%d  b=%d c=%d sum=%d carry=%d",a_tb,b_tb,c_tb,sum_tb,carry_tb);
end

initial 
begin
for(i=0;i<8;i=i+1)
begin
	{a_tb,b_tb,c_tb}=i;
	#10;
end
end



endmodule
