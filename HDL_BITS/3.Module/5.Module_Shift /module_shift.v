module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0]w0,w1,w2;
    my_dff8 hi(clk,d,w0);
    my_dff8 h(clk,w0,w1);
    my_dff8 i(clk,w1,w2);
    always @(*)
        begin
            case(sel)
                2'b00:q<=d;
                2'b01:q<=w0;
                2'b10:q<=w1;
                2'b11:q<=w2;
            endcase
        end
endmodule