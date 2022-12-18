`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:05:47 12/15/2022 
// Design Name: 
// Module Name:    Encoder83_tb 
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
module Encoder83_tb();
reg [7:0]in;
reg en;
wire [2:0]out;
Encoder8_3 DUT(en,in,out);
integer i;
initial
begin
en=0;
for(i=0;i<8;i=i+1)
begin
in=2**i;
#10;
end
en=1;
for(i=0;i<8;i=i+1)
begin
in=2**i;
#10;
end
end
initial
begin
$monitor($time," en=%d in=%d out=%d",en,in,out);
end
endmodule
