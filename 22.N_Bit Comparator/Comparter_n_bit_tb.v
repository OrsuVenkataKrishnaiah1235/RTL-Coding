`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:57:44 12/20/2022 
// Design Name: 
// Module Name:    Comparter_n_bit_tb 
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
module Comparter_n_bit_tb();
//parameter n=32;
reg [32-1:0]a;
reg [32-1:0]b;
wire l,e,h;
Comparater_n_bit DUT(a,b,l,e,h);
initial
begin
a=22;b=200;
#10 a=233;b=200;
#10 a=888;b=888;
#10 a=123;b=234;
end
initial
begin
$monitor($time, "A=%d B=%d L=%d E=%d H=%d",a,b,l,e,h);
end


endmodule
