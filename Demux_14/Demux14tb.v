`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:39:13 12/15/2022 
// Design Name: 
// Module Name:    Demux14tb 
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
module Demux14tb();
reg din;
reg [1:0]s;
wire [3:0]y;
Demux14 DUT(y,s,din);
initial begin
    din = 1;
    s = 2'b00;
#1  s = 2'b01;
#1  s = 2'b10;
#1  s = 2'b11;
end
initial
begin
$monitor($time,"Din=%d S=%d Y=%d",din,s,y);
end 
endmodule
