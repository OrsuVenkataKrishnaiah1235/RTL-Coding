module top_module (
    input clk,
    input [7:0] in,
    output [7:0] anyedge
);reg [7:0]in1;
    always@(posedge clk)
        begin
            in1<=in;
            anyedge<=in1^in;
        end

endmodule

