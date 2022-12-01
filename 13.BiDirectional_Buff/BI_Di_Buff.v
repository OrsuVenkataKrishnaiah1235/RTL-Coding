
module bibuffer(A,B,ctrl);
inout A,B;
input ctrl;
assign B=(ctrl==1)?A:1'bz;
assign A=(ctrl==0)?B:1'bz;
