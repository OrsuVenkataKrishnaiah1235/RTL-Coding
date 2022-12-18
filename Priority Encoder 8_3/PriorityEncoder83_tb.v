`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:26:24 12/15/2022 
// Design Name: 
// Module Name:    PriorityEncoder83_tb 
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
module PriorityEncoder83_tb();
reg [7:0]in;
reg en;
wire [2:0]out;
priorityEncoder83 DUT(en,in,out);
	initial begin
		// Initialize Inputs
		en = 0;
 in=8'b00000001;
#10; in=8'b0000001x;
#10; in=8'b000001xx;
#10; in=8'b00001xxx;
#10; in=8'b0001xxxx;
#10; in=8'b001xxxxx;
#10; in=8'b01xxxxxx;
#10; in=8'b1xxxxxxx;
#10; en = 1;
 in=8'b00000001;
#10; in=8'b0000001z;
#10; in=8'b000001zz;
#10; in=8'b00001zzz;
#10; in=8'b0001zzzz;
#10; in=8'b001zzzzz;
#10; in=8'b01zzzzzz;
#10; in=8'b1zzzzzzz;
end
initial
begin
$monitor($time," en=%d in=%d out=%d",en,in,out);
end


endmodule
