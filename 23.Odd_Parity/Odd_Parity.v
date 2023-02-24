`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:45:57 12/15/2022 
// Design Name: 
// Module Name:    Odd_Parity 
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
module Odd_Parity(A,B,C,out);

input A,B,C;
output reg out;
always@(A,B,C)
begin
	out=~(A^B^C);
end


endmodule
