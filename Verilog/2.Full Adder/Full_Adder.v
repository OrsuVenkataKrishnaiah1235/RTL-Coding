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


module Full_Adder(in1,in2,Cin,Sum_FA,Cout_FA);
//port Declaration
input in1,in2,Cin;
output Sum_FA,Cout_FA;
wire Sum_HA1,Cout_HA1,Cout_HA2;
//Module instantiation(Submodule Declaration)
//Order Based instantiation
Half_Adder HA1(in1,in2,Sum_HA1,Cout_HA1);
Half_Adder HA2(Sum_HA1,Cin,Sum_FA,Cout_HA2);
//Name Based instantiation
//Half_Adder HA1(.A(in1),.B(in2),.Sum(Sum_HA1),.Cout(Cout_HA1));
//Half_Adder HA2(.A(Sum_HA1),.B(Cin),.Sum(Sum_FA),.Cout(Cout_HA2));
//Gate Level Moddeling<gate><gate_name>(output port,input port,input port......)
or g1(Cout_FA,w1,w2);
endmodule

