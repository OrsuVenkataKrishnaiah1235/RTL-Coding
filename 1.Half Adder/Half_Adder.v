module Half_Adder(A,B,Sum,Carry);
//Port Declaration
input A,B;
output Sum,Carry;
//Behaviour Modeling 
always @(A,B)
begin
    Sum=A^B;
    Carry=A&B;
end
endmodule
/*
//Gate level/Structural Modeling
xor g1(Sum,a,b);
and g2(carry,a,b);

//Data FLow Modeling
assign Sum=A^B;
assign Carry=A&B;
*/
