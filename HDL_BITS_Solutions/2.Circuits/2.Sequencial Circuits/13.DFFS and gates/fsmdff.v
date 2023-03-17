module top_module (
    input clk,
    input x,
    output z
); 
    wire d1,d2,d3;
    reg q1=0,q2=0,q3=0;
    assign d1 = q1^x;
    assign d2 = x&~q2;
    assign d3 = x|~q3;
    dff dff1 (d1,clk,q1);
    dff dff2 (d2,clk,q2);
    dff dff3 (d3,clk,q3);
    assign z = ~(q1|q2|q3);
endmodule

module dff (input d,
    input clk,
    output reg q);
    always@(posedge clk) begin
        q <= d;
    end
endmodule
