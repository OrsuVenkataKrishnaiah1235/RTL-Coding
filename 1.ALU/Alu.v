`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:03:06 12/15/2022 
// Design Name: 
// Module Name:    Alu 
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
module Alu(a,b,s,y);
input [3:0]a,b,s;
output reg [3:0]y;
always@(*)
begin
case(s)
	4'b0000:y=a+b;//Addition
	4'b0001:y=a-b;//Substraction
	4'b0010:y=a*b;//Multipiler
	4'b0011:y=a/b;//Division
	4'b0100:y=a%b;//Modulo
	4'b0101:y=~a;//not a
	4'b0110:y=!b;//not b
	4'b0111:y=a^b;//xor
	4'b1000:y=~(a|b);//nor
	4'b1001:y=~(a^b);//xnor
	4'b1010:y=a**b;//square
	4'b1011:y=a&b;//and
	4'b1100:y=a|b;//or
	4'b1101:y=a+1;//increment
	4'b1110:y=a-1;//decrement
	4'b1111:y=!(a&b);//nand
	default:y=4'bzzz;
endcase
end

endmodule
