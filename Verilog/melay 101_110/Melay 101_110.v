module melay(Data_in,Data_out,clk,rst);
input Data_in,clk,rst;
output reg Data_out;
reg[2:0]current_state,next_state;
Parameter
s0=3'b000,s1=3'b001,s11=3'b010,s110=3'b011,s10=3'b100,s101=3'b101;
always @ (posedge clk,posedge rst)
begin
	if(rst)
	current_state<=s0;
	else
	current_state<=next_state;
end
always @(Data_in,current_state)
begin
	case(current_state)
	s0:
		if(Data_in==0)
		next_state<=s0;
		else
		next_state<=s1;
	s1:
		if(Data_in==0)
		next_state<=s10;
		else
		next_state<=s11;
	s11:
		if(Data_in==0)
		next_state<=s110;
		else
		next_state<=s11;
	s110:
		if(Data_in==1)
		next_state<=s101;
		else
		next_state<=s0;
	s10:
		if(Data_in==1)
		next_state<=s101;
		else
		next_state<=s0;s101:
		if(Data_in==1)
		next_state<=s11;
		else
		next_state<=s10;
default:next_state<=s0;
endcase
end
always @(posedge clk)
begin
	case(current_state)
		s0:if(Data_in==1 || Data_in==0)
			Data_out<=0;
		s1:if(Data_in==1 || Data_in==0 )
			Data_out<=0;
		s11:
			if(Data_in==1)
			Data_out<=0;
			else
			Data_out<=1;
		s110:if(Data_in==1 || Data_in==0)
			Data_out<=0;
		s101:if(Data_in==1 || Data_in==0)
			Data_out<=0;
		s10:
			if(Data_in==1)
			Data_out<=1;
			else
				Data_out<=0;
default:Data_out<=0;
endcase
end
endmodule
