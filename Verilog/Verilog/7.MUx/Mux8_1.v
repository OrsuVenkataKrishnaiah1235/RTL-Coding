//module Declaration
module Mux8_1(Input,Select_Lines,Output);
//port Declaration
input [7:0]Input,
input [2:0]Select_Lines;
output reg Output;
//Behaviour modeling Logic
//Within Procedural Assign
always @(*)
begin
    case(Select_Lines)
        3'b000:Output=Input[0];
        3'b001:Output=Input[1];
        3'b010:Output=Input[2];
        3'b011:Output=Input[3];
        3'b100:Output=Input[4];
        3'b101:Output=Input[5];
        3'b110:Output=Input[6];
        3'b111:Output=Input[7];
//Z indicates High Impedence (0 or 1)
    default:Output=1'bz;
    endcase
end
endmodule
