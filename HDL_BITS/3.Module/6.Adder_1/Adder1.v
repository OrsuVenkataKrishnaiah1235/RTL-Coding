module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cout,c;
    add16 hi(a[15:0],b[15:0],1'b0,sum[15:0],cout);
  
    add16 DUT(a[31:16],b[31:16],cout,sum[31:16],c);

endmodule