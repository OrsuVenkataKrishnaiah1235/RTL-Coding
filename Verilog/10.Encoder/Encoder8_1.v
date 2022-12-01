module Encoder(D,out);
input [7:0]D;
output reg [2:0]out;
always @(*)
begin
    casex(D)
    8'b00000001:out=3'b000;
    8'b0000001x:out=3'b001;
    8'b000001xx:out=3'b010;
    8'b00001xxx:out=3'b011;
    8'b0001xxxx:out=3'b100;
    8'b001xxxxx:out=3'b101;
    8'b01xxxxxx:out=3'b110;
    8'b1xxxxxxx:out=3'b111;
    default:out=0;
endcase
end
endmodule
