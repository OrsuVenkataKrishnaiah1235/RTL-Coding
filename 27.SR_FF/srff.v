`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:36:50 12/16/2022 
// Design Name: 
// Module Name:    srff 
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
module srff(s,r,clk,rst,q,qbar);
input s,r,clk,rst;
output reg q,qbar;
always@(posedge clk or posedge rst)
begin
if(rst==1)
q<=0;
else
	begin
		case({s,r})
		2'b00:q=q;
		2'b01:q=0;
		2'b10:q=1;
		2'b11:q=1'bz;
		default:q<=1'b0;
		endcase
		qbar<=~q;
	end
end
endmodule
