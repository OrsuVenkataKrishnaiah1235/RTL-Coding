`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:22:41 12/12/2022 
// Design Name: 
// Module Name:    Full_Substractor 
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
module Full_Substractor(a,b,c,barrow,difference);
input a,b,c;
output reg barrow,difference;
always@(a,b,c)
begin
	difference<=a^b^c;
	barrow<=(a&(~b))+(a&c)+((~b)&c);
end
endmodule
