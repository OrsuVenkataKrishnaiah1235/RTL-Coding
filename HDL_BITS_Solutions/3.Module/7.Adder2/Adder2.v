module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);// Full adder module here
 wire c0,c1;
    add16 add(a[15:0],b[15:0],1'b0,sum[15:0],c0);
    add16 ad(a[31:16],b[31:16],c0,sum[31:16],c1);
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );
    assign sum=a^b^cin;
    assign cout=(a&b)|(a&cin)|(b&cin);
endmodule
