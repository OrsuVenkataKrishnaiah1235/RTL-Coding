module SR_FF_TB();
reg Set_tb,reset_tb,clk_tb;
wire q_tb,qbar_tb;
intiger i;
Sr_ff DUT(Set_tb,reset_tb,clk_tb,q_tb,qbar_tb);

always @(*)
begin
	clk_tb <=0;
	forever #10 clk_tb=~clk_tb;
end
$monitor("simtime = %g, CLK = %b, S = %b, R = %b, Q = %b, QBAR = %b", $time, clk_tb, Set_tb, reset_tb, q_tb, qbar_tb);
always @(posedge clk_tb)
begin
	for(i=0;i<4;i++)
	{set_tb,reset_tb}=i;
	
end
endmodule

/*
behavioural model
module srff_behave(s,r,clk, q, qbar);

input s,r,clk;
output reg q, qbar;

always@(posedge clk)
begin

if(s == 1)
begin
q = 1;
qbar = 0;
end
else if(r == 1)
begin
q = 0;
qbar =1;
end
else if(s == 0 & r == 0) 
begin 
q <= q;
qbar <= qbar
end
end
endmodule
*/
