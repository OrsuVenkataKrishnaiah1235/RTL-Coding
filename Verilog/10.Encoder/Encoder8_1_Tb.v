module Encoder_tb();
reg [7:0] D_tb;
wire [2:0] out_tb;
integer i;
Encoder DUT(D_tb,out_tb);
initial
begin
        for(i=0;i<256;i=i+1)
        begin
        D_tb=i;
        #10;
        end
end
endmodule
