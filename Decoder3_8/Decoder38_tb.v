`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:48:32 12/15/2022 
// Design Name: 
// Module Name:    Decoder38_tb 
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
module Decoder38_tb();
reg [2:0]in;
reg en;
wire [7:0]out;
decoder38 DUT(en,in,out);
integer i;
initial
begin
en=0;
for(i=0;i<8;i=i+1)
begin
in=i;
#10;
end
en=1;
for(i=0;i<8;i=i+1)
begin
in=i;
#10;
end
end
initial
begin
$monitor($time,"en=%d in=%d out=%d",en,in,out);
end
endmodule
