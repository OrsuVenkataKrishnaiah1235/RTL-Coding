//Create a one-bit wide, 2-to-1 multiplexer. When sel=0, choose a. When sel=1, choose b.
module top_module( 
    input a, b, sel,
    output out ); 
    assign out=(sel==1)?b:a;
endmodule
