`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:52:38 12/20/2022 
// Design Name: 
// Module Name:    Comparater_n_bit 
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
module Comparater_n_bit(a,b,l,e,h);
//parameter n=32;
input [32-1:0]a;
input [32-1:0]b;
output reg l=0,e=0,h=0;
always @(a,b)
begin
if(a>b)
begin
l=0;e=0;h=1;
end
else if(a<b)
begin
l=1;e=0;h=0;
end
else
begin
l=0;e=1;h=0;
end
end
endmodule
