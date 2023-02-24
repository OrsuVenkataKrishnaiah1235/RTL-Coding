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


module Full_Subtractor(in1,in2,Cin,Sum_FS,Cout_FS);
//port Declaration
input in1,in2,Cin;
output Sum_FS,Cout_FS;
wire Sum_HS1,Cout_HS1,Cout_HS2;
//Module instantiation(Submodule Declaration)
//Order Based instantiation
Half_Subtractor HS1(in1,in2,Sum_HS1,Cout_HS1);
Half_Subtractor HS2(Sum_HS1,Cin,Sum_FS,Cout_HS2);
//Name Based instantiation
//Half_Adder HA1(.A(in1),.B(in2),.Sum(Sum_HA1),.Cout(Cout_HA1));
//Half_Adder HA2(.A(Sum_HA1),.B(Cin),.Sum(Sum_FA),.Cout(Cout_HA2));
//Gate Level Moddeling<gate><gate_name>(output port,input port,input port......)
or g1(Cout_FS,w1,w2);
endmodule
