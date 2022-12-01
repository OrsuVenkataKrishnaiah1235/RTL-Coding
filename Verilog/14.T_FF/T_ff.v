module tff(clk,rst,t,q);
input clk,rst,t;
output reg q;
always @(posedge clk)
        begin
        if(rst==1)
            q<=0;
        else
        begin
            if(t==0)
                q<=q;
            else
                q<=~q;
        end
end
endmodule
