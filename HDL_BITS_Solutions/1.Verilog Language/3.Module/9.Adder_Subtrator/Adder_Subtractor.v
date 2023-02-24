module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire wire1;
    wire [31:0]b_xor;
    
    assign b_xor = {32{sub}}^b; 
    add16 adder1(a[15:0], b_xor[15:0], sub, sum[15:0], wire1);
    add16 adder2(a[31:16], b_xor[31:16], wire1, sum[31:16]);
endmodule