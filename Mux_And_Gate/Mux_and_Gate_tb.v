`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:44:14 12/14/2022 
// Design Name: 
// Module Name:    Mux_and_Gate_tb 
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
module Mux_and_Gate_tb();
reg a,b;
wire y;

mux_and_gate DUT(a,b,y);
integer i;
initial
begin
for(i=0;i<4;i=i+1)
begin
{a,b}=i;
#10;
end
end
/*
begin
a=1'b0;b=1'b0;
#100 a=1'b1;b=1'b0;
#100 a=1'b0;b=1'b1;
#100 a=1'b1;b=1'b1;
end*/
initial 
begin
$monitor($time,"a=%b b=%d y=%d",a,b,y);
end

endmodule
