module Rippel_Carry_Adder_tb();
reg [3:0]A_tb;
reg [3:0]B_tb;
wire [3:0]Sum_tb;
wire Carryout_tb;
integer i;
Ripple_Carry_Adder DUT(A_tb,B_tb,Sum_tb,Carryout_tb);
initial
begin
    for(i=0;i<512;i=i+1)
    begin
        {A_tb,B_tb}=i;
        #10;
    end
    $finish;
end
endmodule
