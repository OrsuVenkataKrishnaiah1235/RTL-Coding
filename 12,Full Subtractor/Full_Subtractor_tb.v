`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:00:21 12/12/2022 
// Design Name: 
// Module Name:    Full_Subtractor_tb 
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
module Full_Subtractor_tb();
reg a,b,c;
wire barrow,difference;
Full_Substractor DUT(a,b,c,barrow,difference);
integer i;
initial
begin
for(i=0;i<8;i=i+1)
begin
	{a,b,c}=i;
	#10;
end
end
initial
begin
$monitor($time,"A=%d B=%d C=%d Difference=%d Barrow=%d",a,b,c,difference,barrow);
end 
endmodule
