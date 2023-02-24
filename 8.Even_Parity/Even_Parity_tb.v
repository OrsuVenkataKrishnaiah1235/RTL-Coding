`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:41:10 12/15/2022 
// Design Name: 
// Module Name:    Even_Parity_tb 
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
module Even_Parity_tb();
reg A,B,C;
wire out;
EvenParity DUT(A,B,C,out);
integer i;
initial
begin
	for(i=0;i<8;i=i+1)
	begin
		{A,B,C}=i;
		#10;
	end
end
initial
begin
$monitor($time," A=%d B=%d C=%d out=%d",A,B,C,out);
end


endmodule
