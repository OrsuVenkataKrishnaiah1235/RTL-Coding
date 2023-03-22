module top_module (
    input clk,
    input [7:0] in,
    output reg [7:0] pedge
);reg [7:0]in1;
    always@(posedge clk)
        begin
            in1<=in;
            pedge<=(~in1)&in;
        end
    
endmodule
