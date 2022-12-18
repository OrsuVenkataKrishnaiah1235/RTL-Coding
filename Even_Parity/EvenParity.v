`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:38:55 12/15/2022 
// Design Name: 
// Module Name:    EvenParity 
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
module EvenParity(A,B,C,out);
input A,B,C;
output reg out;
always@(A,B,C)
begin
	out=A^B^C;
end



endmodule
