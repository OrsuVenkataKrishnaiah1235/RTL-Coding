module Sr_ff(Set,Reset,clk,Q,qbar);
input set,Reset,clk;
output Q,qbar;

assign Q = clk ? (s + ((~r) & Q)) : Q;//by Characteristics equation
assign qbar = ~Q;

endmodule
