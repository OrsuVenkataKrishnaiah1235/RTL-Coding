module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    // assign intermediate_result1 = compare? true: false;
    always@(*)
        begin
            if((a<b)&&(a<c)&&(a<d))
                min<=a;
            else if((b<a)&&(b<c)&&(b<d))
                min<=b;
            else if((c<a)&&(c<b)&&(c<d))
                min<=c;
            else
                min<=d;
        end

endmodule