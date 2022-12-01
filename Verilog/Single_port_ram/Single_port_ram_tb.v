`timescale 1ns/1ns
module singleportramtb();
wire [7:0]data_tb;
reg [3:0]addr_tb;
reg wr_en_tb,rd_en_tb,clk_tb;
reg [7:0]temp_data_tb;
integer i,j;
singleportram DUT(clk_tb,wr_en_tb,rd_en_tb,data_tb,addr_tb);
always
begin
    clk_tb=1;
    #5;
    clk_tb=0;
    #5;
end
task initialize;
begin
    wr_en_tb<=0;
    rd_en_tb<=0;
    addr_tb<=0;
end
endtask
task read_operation(input[3:0]a);
begin
    @(negedge clk_tb)
begin
    rd_en_tb <= 1'b1;
    wr_en_tb<=1'b0;
    addr_tb<=a;
end
end
endtask
task write_operation(input [7:0]c,input [3:0]d);
begin
    @(negedge clk_tb)
    begin
    wr_en_tb<=1'b1;
    rd_en_tb<=1'b0;
    temp_data_tb<=c;
    addr_tb<=d;
    end
end
endtask
initial
begin
    initialize;
    for(i=0;i<16;i=i+1)
    begin
        write_operation(i,i);
    end
    #10
    for(j=0;j<16;j=j+1)
    begin
        read_operation(j);
    end
end
assign data_tb=(wr_en_tb&&!rd_en_tb)?temp_data_tb:8'bzzzzzzzz;
endmodule
