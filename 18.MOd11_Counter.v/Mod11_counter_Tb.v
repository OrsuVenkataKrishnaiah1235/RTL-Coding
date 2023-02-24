module mod11_tb();
reg clk_tb,rst_tb,load_en_tb;
reg [3:0]load_tb;
wire [3:0]out_tb;
mod11 DUT(load_tb,load_en_tb,out_tb,clk_tb,rst_tb);
always
begin
    clk_tb=1;
    #5;
    clk_tb=0;
    #5;
end
task load_tsk(input [3:0]a);
begin
    @(negedge clk_tb)
    begin
    load_en_tb<=1;
    load_tb<=a;
    end
        @(negedge clk_tb)
        load_en_tb<=0;
end
endtask
task rst_tsk(input b);
begin
    @(negedge clk_tb)
    rst_tb <=b;
    end
endtask
initial
begin
    rst_tsk(1);
    #50;
    rst_tsk(0);
    #50;
    load_tsk(1);
    #20;
    load_tsk(0);
    #20;
end
endmodule
