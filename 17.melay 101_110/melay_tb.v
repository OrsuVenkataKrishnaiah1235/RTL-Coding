module melay_tb();
reg Data_in_tb,clk_tb,rst_tb;
wire Data_out_tb;
melay DUT(Data_in_tb,Data_out_tb,clk_tb,rst_tb);
always
begin
	clk_tb<=1;
	#10;
	clk_tb<=0;
	#10;
end
task initialize;
begin
	Data_in_tb<=0;
	rst_tb<=0;
end
endtask
task rst(input a);
begin
	@(negedge clk_tb)
	rst_tb<=1;
	@(negedge clk_tb)
	rst_tb<=0;
end
endtask
task Din(input b);
begin
	@(negedge clk_tb)
	Data_in_tb<=b;
end
endtask
initial
begin
	initialize;
	rst(1);
	Din(1);
	Din(0);
	Din(1);
	rst(0);
	Din(1);
	Din(1);
	Din(0);
end
endmodule
