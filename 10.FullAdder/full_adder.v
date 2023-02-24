`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:29:06 12/11/2022 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder(a,b,c,sum,carry);
input a,b,c;
output reg sum,carry;
always@(a,b,c)
begin
	sum=a^b^c;
	carry=(a&b)+(a&c)+(b&c);
end
endmodule
