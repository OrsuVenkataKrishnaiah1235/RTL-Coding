`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:24:26 12/15/2022 
// Design Name: 
// Module Name:    priorityEncoder83 
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
module priorityEncoder83(en,in,out);
input [7:0]in;
input en;
output reg [2:0]out;
always@(en or in)
begin
	if(en==1)
	begin
	case(in)
	8'b00000001:out=3'b000;
	8'b0000001z:out=3'b001;
	8'b000001zz:out=3'b010;
	8'b00001zzz:out=3'b011;
	8'b0001zzzz:out=3'b100;
	8'b001zzzzz:out=3'b101;
	8'b01zzzzzz:out=3'b110;
	8'b1zzzzzzz:out=3'b111;
	default:out=3'b0;
	endcase
	end
	else
		out=3'b0;
end
endmodule
