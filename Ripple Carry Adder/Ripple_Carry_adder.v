`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:20:10 12/11/2022 
// Design Name: 
// Module Name:    Ripple_Carry_adder 
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

module Ripple_Carry_adder(A,B,Sum,Carry);
input [3:0]A,B;
output  [3:0]Sum;
output  Carry;
wire x,y,z;
full_add fa1(A[0],B[0],0,Sum[0],x);
full_add fa2(A[1],B[1],x,Sum[1],y);
full_add fa3(A[2],B[2],y,Sum[2],z);
full_add fa4(A[3],B[3],z,Sum[3],Carry);
endmodule
