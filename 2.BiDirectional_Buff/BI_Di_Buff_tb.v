module bibuffer_tb();
wire A_tb,B_tb;
reg ctrl_tb;
reg temp_A,temp_B;
bibuffer DUT(A_tb,B_tb,ctrl_tb);
initial
begin
    ctrl_tb=1;
    temp_A=0;
    #20;
    temp_A=1;
    #20;
    ctrl_tb=0;
    temp_B=0;
    #20;
    temp_B=1;
    #20;
end
assign A_tb=(ctrl_tb==1)?temp_A:1'bz;
assign B_tb=(ctrl_tb==0)?temp_B:1'bz;
endmodule
