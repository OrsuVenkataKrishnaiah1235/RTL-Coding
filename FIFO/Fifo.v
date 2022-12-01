module dual_port_ram(clk,Din,Dout,wr_en,wr_addr,rd_En,rd_addr);
input [7:0]Din;
input [3:0]wr_addr;
input [3:0]rd_addr;
input wr_en,rd_En,clk;
output reg [7:0]Dout;
reg [7:0] Mem [15:0];
always @(posedge clk)
begin
    if(wr_en)
        Mem[wr_addr]<=Din;
    if(rd_En)
        Dout <=Mem[rd_addr];
end
endmodule
module fifo(data_in,we,clk,rst,data_out,re,full,empty);
    parameter data_width =8 ;
    parameter address_width=4;
    parameter ram_depth=16;
    output reg [data_width-1:0]data_out;
    output full,empty;
    input [data_width-1:0]data_in;
    input clk,rst,we,re;
    reg [address_width-1:0] wr_pointer;
    reg [address_width-1:0] rd_pointer;
    reg [address_width:0] status_count;
    wire [data_width-1:0] data_ram;
    dual_port_ram DUT(clk,data_in,data_ram,we,wr_pointer,re,rd_pointer);
//Read_pointer(4 bit counter) to read addresses
always @(posedge clk or posedge rst)
begin
    if(rst==1)
    rd_pointer <=0;
    else
    begin
    if(re==1)
        rd_pointer<=rd_pointer+1;
    end
end
always @(posedge clk or posedge rst) //Write_pointer(4 bit counter) to Write addresses
    begin
    if(rst==1)
        wr_pointer <=0;
    else
        begin
        if(we==1)
            wr_pointer<=wr_pointer+1;
        end
end
//Status (5bit Counter) Pointer For Full and Empty
always @(posedge clk,posedge rst)
begin
if(rst)
    status_count<=0;
else if ((we&&!re) && (status_count !=ram_depth))
    status_count<=status_count+1;
else if ((re&&!we) && (status_count !=0) )
    status_count<=status_count-1;
end
assign full=(status_count==(ram_depth));
assign empty=(status_count==0);
//Read Logic
always @(posedge clk,posedge rst)
begin
if(rst)
    data_out<=0;
else
   begin
if(rst)
    data_out<=data_ram;
end
end
endmodule
