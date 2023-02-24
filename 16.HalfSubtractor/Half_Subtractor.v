`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:59:10 12/12/2022 
// Design Name: 
// Module Name:    Half_Subtractor 
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
module Half_Subtractor(a,b,difference,barrow);
input a,b;
output reg difference,barrow;
always@(a,b)
begin
	difference<=a^b;
	barrow<=a&(~b);
end
endmodule
