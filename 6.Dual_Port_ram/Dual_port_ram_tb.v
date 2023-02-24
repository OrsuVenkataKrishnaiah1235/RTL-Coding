`timescale 1ns/1ns
module dual_port_ram_tb();
reg [7:0]din_tb;
reg [3:0]wr_addr_tb;
reg [3:0]rd_addr_tb;
reg wr_en_tb,rd_en_tb,clk_tb;
wire [7:0]dout_tb;
integer i,j;dual_port_ram
DUT(clk_tb,din_tb,dout_tb,wr_en_tb,wr_addr_tb,rd_en_tb,rd_addr_tb);
always
begin
    clk_tb=1;
    #5;
    clk_tb=0;
    #5;
end
task initialize;
begin
    din_tb<=0;
    wr_en_tb<=0;
    rd_en_tb<=0;
    rd_addr_tb<=0;wr_addr_tb<=0;
end
endtask
task write_operation(input [3:0]a,input[7:0]b);
    begin
    @(negedge clk_tb)
    begin
    wr_en_tb<=1'b1;
    wr_addr_tb <=a;
    din_tb <=b;
    end
end
endtask
task read_operation(input [3:0]c);
begin
    @(negedge clk_tb)
    begin
    rd_en_tb <= 1'b1;
    rd_addr_tb <=c;
end
end
endtask
initial
fork
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
join
endmodule
