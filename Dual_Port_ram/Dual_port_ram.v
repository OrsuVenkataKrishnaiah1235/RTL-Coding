module dual_port_ram(clk,Din,Dout,wr_en,wr_addr,rd_En,rd_addr);
input [7:0]Din;
input [3:0]wr_addr;
input [3:0]rd_addr;
input wr_en,rd_En,clk;
output reg [7:0]Dout;
reg [7:0] Mem [15:0];
always @(posedge clk)
begin
if(wr_en)
    Mem[wr_addr]<=Din;
if(rd_En)
    Dout <=Mem[rd_addr];
end
endmodule
