module mod11(load,load_enable,out,clk,rst);
input clk,rst,load_enable;
input [3:0]load;
output reg [3:0]out;
always@(posedge clk)
begin
    if(rst==1)
        out<=0;
    else
    begin
        if(load_enable==1)
            out <=load;
        else if(out==10)
            out<=0;
        else
            out<=out+1;
    end
end
endmodule
