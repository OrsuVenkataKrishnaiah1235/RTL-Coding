module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    wire[99:0]cout_wires;
    genvar i;
    bcd_fadd adder(a[3:0],b[3:0],cin,cout_wires[0],sum[3:0]);
    generate
        for(i=4;i<400;i=i+4)
            begin:BCD_Ripple_carry_adder
                bcd_fadd add(a[i+3:i],b[i+3:i],cout_wires[i/4-1],cout_wires[i/4],sum[i+3:i]);
            end
    endgenerate
    assign cout=cout_wires[99];
endmodule