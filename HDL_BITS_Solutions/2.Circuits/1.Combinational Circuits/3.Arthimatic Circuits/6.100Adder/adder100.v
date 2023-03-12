//Create a 100-bit binary adder. The adder adds two 100-bit numbers and a carry-in to produce a 100-bit sum and carry out.

module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
    wire[98:0]c;
    Fa f1(a[0],b[0],cin,c[0],sum[0]);
    Fa f2(a[99],b[99],c[98],cout,sum[99]);
    genvar i;
    generate
        for(i=1;i<99;i=i+1)
            begin:Full_Adder_Block
                Fa f3(a[i],b[i],c[i-1],c[i],sum[i]);
            end
    endgenerate

endmodule
module Fa(input a,b,c,output cout,sum);
    assign sum=a^b^c;
    assign cout=a&b|a&c|b&c;
endmodule
