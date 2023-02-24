`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:07:40 12/12/2022 
// Design Name: 
// Module Name:    Half_Substractor 
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
module Half_Substractor_tb();
reg a_tb,b_tb;
wire barrow_tb,difference_tb;
integer i;
Half_Subtractor DUT(a_tb,b_tb,difference_tb,barrow_tb);
initial 
begin
	for(i=0;i<4;i=i+1)
	begin
		{a_tb,b_tb}=i;
		#10;
	end
end
initial
begin
$monitor($time,"A=%d B=%d Difference=%d Barrow=%d",a_tb,b_tb,difference_tb,barrow_tb);
end
endmodule
