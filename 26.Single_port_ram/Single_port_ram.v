module singleportram(clk,wr_en,rd_en,data,addr);
inout [7:0]data;
input [3:0]addr;
input wr_en,rd_en,clk;
reg [7:0]temp_data;
reg [7:0] Mem [15:0];
assign data=(rd_en==1 && wr_en==0)?temp_data:8'bzzzzzzzz;
always @(posedge clk)
begin
    if(wr_en && !rd_en)
    begin
        Mem[addr]<=data;
    end
    else if (rd_en && !wr_en)
    begin
        temp_data <=Mem[addr];
    end
end
endmodule
