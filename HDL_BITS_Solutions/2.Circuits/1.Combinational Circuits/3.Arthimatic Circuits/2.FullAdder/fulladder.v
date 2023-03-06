module top_module( 
    input a, b, cin,
    output cout, sum );
    assign cout=a&b | a&cin | b&cin;
    assign sum=a^b^cin;

endmodule
