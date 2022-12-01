module Half_Adder_Tb();
reg A_tb,B_tb;
wire Sum_tb,Carry_out;
intiger i;
Half_Adder DUT(A_tb,B_tb,Sum_tb,Carry_out);
always @(A_tb,B_tb)
begin
    for(i=0;i<4;i++)
    begin
        {A_tb,B_tb}=i;
    end
end
endmodule
