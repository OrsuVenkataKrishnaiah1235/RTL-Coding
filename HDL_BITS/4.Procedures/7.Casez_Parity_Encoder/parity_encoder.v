// synthesis verilog_input_version verilog_2001
module top_module (
    input [7:0] in,
    output reg [2:0] pos );
    always@(*)
        begin
            casez(in)
                8'bzzzzzzz1:pos<=1'b0;
                8'bzzzzzz1z:pos<=1'b1;
                8'bzzzzz1zz:pos<=2'b10;
                8'bzzzz1zzz:pos<=2'b11;
                8'bzzz1zzzz:pos<=3'b100;
                8'bzz1zzzzz:pos<=3'b101;
                8'bz1zzzzzz:pos<=3'b110;
                8'b1zzzzzzz:pos<=3'b111;
                default:pos<=1'b0;
            endcase
        end

endmodule