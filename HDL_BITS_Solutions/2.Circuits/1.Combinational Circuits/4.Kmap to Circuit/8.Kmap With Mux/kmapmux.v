module top_module (
    input c,
    input d,
    output [3:0] mux_in
); 
    assign mux_in[0]=c|d,mux_in[1]=0,mux_in[2]=!d,mux_in[3]=c&d;
endmodule
