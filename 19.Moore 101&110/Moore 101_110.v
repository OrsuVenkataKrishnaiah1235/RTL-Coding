module moore(Data_in,Data_out,clk,rst);
input Data_in,clk,rst;
output Data_out;
reg[2:0]current_state,next_state;
parameter Idle=3'b000,s1=3'b001,s11=3'b010,s110=3'b011,s10=3'b100,s101=3'b101;
always @ (posedge clk,posedge rst)
begin
if(rst)
    current_state <=Idle;
    else
    current_state<=next_state;
end
    always @(Data_in,current_state)
    begin
    case(current_state)
        Idle:
            if(Data_in==0)
                next_state<=Idle;
            else
                next_state<=s1;
        s1:
            if(Data_in==1)
                next_state<=s11;
            else
                next_state<=s10;
        s11:
            if(Data_in==0)
                next_state<=s110;
            else
         	    next_state<=s11;
        s110:
             if(Data_in==1)
            	   next_state<=s101;
              else
                next_state<=Idle;
        s10:
             if(Data_in==1)
 	             next_state<=s101;
             else
                 next_state<=Idle;
        s101:
             if(Data_in==1)
                next_state<=s11;
             else
                next_state<=s10;
    default:next_state<=Idle;
    endcase
end
assign Data_out=(current_state==s101 | current_state==s110)?1'b1:1'b0;
endmodule
