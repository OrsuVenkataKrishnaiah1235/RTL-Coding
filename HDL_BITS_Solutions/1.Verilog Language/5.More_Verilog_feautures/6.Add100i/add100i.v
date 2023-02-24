module fa(input a,b,cin,output c,s);
    assign c=(a&b)|(a&cin)|(cin&b);
    assign s=a^b^cin;
endmodule
module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
genvar i;//instead of integer genvar Keyword is used 
    fa ha1(a[0],b[0],cin,cout[0],sum[0]);
    generate
        for(i=1;i<100;i=i+1)
            begin:Full_adder_Block //its label for refference of the each instances 
                fa h(a[i],b[i],cout[i-1],cout[i],sum[i]);//generate is used to generate multiple instances
            end
    endgenerate
endmodule