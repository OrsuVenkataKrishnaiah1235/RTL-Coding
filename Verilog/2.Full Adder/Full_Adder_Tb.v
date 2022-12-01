module Full_Adder_Tb();
reg A_tb,B_tb,C_tb;
wire Sum_tb,Carry_out;
intiger i;
Full_Adder DUT(A_tb,B_tb,C_tb,Sum_tb,Carry_out);
always @(A_tb,B_tb,C_tb)
begin
    for(i=0;i<8;i++)
    begin
        {A_tb,B_tb}=i;
    end
end
endmodule
