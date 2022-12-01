module fifo_tb();
reg [7:0]data_in_tb;
reg clk_tb,rst_tb,we_tb,re_tb;
wire [7:0]data_out_tb;
wire full_tb,empty_tb;
fifo DUT(data_in_tb,we_tb,clk_tb,rst_tb,data_out_tb,re_tb,full_tb,empty_tb);
always
begin
    clk_tb<=1;
    #5;
    clk_tb<=0;
    #5;
end
task initialize;
begin
    we_tb<=0;
    re_tb<=0;
    data_in_tb<=0;
end
endtask
task rst;
begin
    @(negedge clk_tb)
    begin
    rst_tb<=1;
    end
    @(negedge clk_tb)
    begin
    rst_tb<=0;
    end
end
endtask
task write_operation(input a);
begin
    @(negedge clk_tb)
    we_tb<=a;
end
endtask
task read_operation(input b);
begin
    @(negedge clk_tb)
    re_tb<=b;
end
endtask
task data_input(input[7:0]c);
begin
    @(negedge clk_tb)
    data_in_tb<=c;
end
endtask
initial
begin
    initialize;
    rst;
    write_operation(1);
    repeat(16)
    begin
    data_input($random %256);
    end
    write_operation(0);
    read_operation(1);
    #200;read_operation(0);
    rst;
end
endmodule
