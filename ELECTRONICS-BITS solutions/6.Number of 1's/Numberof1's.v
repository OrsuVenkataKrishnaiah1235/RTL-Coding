//Number of Ones

// Code your design here
module number_of_1s #(parameter
  DATA_WIDTH = 16
) (
  input [DATA_WIDTH-1:0] din,
  output reg [$clog2(DATA_WIDTH):0] dout=0
);
//Write Your Code Here
//Do not remove default code
integer i;
always@(*)
begin
for(i=0;i<DATA_WIDTH;i=i+1)
begin
if(din[i]==1)
dout=dout+1;
end
end
endmodule
