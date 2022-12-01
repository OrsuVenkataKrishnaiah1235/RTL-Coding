module tff_tb();
reg clk_tb,reset_tb,t_tb ;
wire q_tb;
tff DUT(clk_tb,reset_tb,t_tb,q_tb);
always
begin
    clk_tb=1;
    #5;
    clk_tb=0;
    #5;
end
task rst_tsk(input a);
begin
    @(negedge clk_tb)
        reset_tb <=a;
end
endtask
task tb_tsk(input b);
    begin
        @(negedge clk_tb)
            t_tb <=b;
    end
endtask

initial
begin
    rst_tsk(1);
    #50;
    rst_tsk(0);
    #50;
    tb_tsk(1);
    #20;
    tb_tsk(0);
    #20;
end
endmodule
