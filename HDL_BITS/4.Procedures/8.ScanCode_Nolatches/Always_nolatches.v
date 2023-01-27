// synthesis verilog_input_version verilog_2001
module top_module (
    input [15:0] scancode,
    output reg left,
    output reg down,
    output reg right,
    output reg up  ); 
    always @(*)
        begin
            left<=1'b0;down<=1'b0;right<=1'b0;up<=1'b0;
            case(scancode)
                16'he06b:
                    begin
                      left<=1'b1;down<=1'b0;right<=1'b0;up<=1'b0;
                    end
                16'he072:
                    begin
                      left<=1'b0;down<=1'b1;right<=1'b0;up<=1'b0;
                    end
                16'he074:
                    begin
                      left<=1'b0;down<=1'b0;right<=1'b1;up<=1'b0;
                    end
                16'he075:
                    begin
                      left<=1'b0;down<=1'b0;right<=1'b0;up<=1'b1;
                    end
            endcase
        end

endmodule