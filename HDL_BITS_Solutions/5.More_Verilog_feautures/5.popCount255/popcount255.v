module top_module( 
    input [254:0] in,
    output [7:0] out );
    reg [7:0]count;
integer i;
always@(*)
    begin
    	count=1'b0;
            for(i=0;i<255;i=i+1)
                begin
                    if(in[i]==1'b1)
                        begin
                            count=count+1'b1;
                        end
                end
        out=count;
    end
endmodule