module mux_tb();
reg [7:0]Input_tb;
reg [2:0]Select_Lines_tb;
wire out_tb;
integer i;
Mux8_1 DUT(Input_tb,Select_Lines_tb,out_tb);
task initilize;
        Input_tb=1'h00;
        Select_Lines_tb=3'b000;
endtask;
initial
begin
        initilize;
        #10;
        for(i=0;i<8;i=i+1)
        begin
        Select_Lines_tb=i;
        Input_tb[i]=1'b0;
        #10;
        Input_tb[i]=1'b1;
        #10;
    $stop;
end
endmodule
