module top_module ( input clk, input d, output q );
    wire[1:0]w;
    my_dff hi(clk,d,w[0]);
    my_dff h(clk,w[0],w[1]);
    my_dff i(clk,w[1],q);
endmodule