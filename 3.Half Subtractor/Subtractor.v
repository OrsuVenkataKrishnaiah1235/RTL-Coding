module Subtractor(A,B,Sum,Carry);
//Port Declaration
input A,B;
output Sum,Carry;
//Behaviour Modeling 
always @(A,B)
begin
    Sum=A^B;
    Carry=(~A)&B;
end
endmodule
