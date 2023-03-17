module odd_counter (
  input     wire        clk,
  input     wire        reset,
  output    reg[7:0] cnt_o
);
always @(posedge clk or posedge reset)
begin
if(reset)
cnt_o<=1;
else
    cnt_o=cnt_o+2;
    end
//Write your code here
//Do not delete dafault code
endmodule
