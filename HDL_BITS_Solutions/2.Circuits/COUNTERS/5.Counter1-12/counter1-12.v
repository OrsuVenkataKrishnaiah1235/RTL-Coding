/* Design a 1-12 counter with the following inputs and outputs:

Reset Synchronous active-high reset that forces the counter to 1
Enable Set high for the counter to run
Clk Positive edge-triggered clock input
Q[3:0] The output of the counter
c_enable, c_load, c_d[3:0] Control signals going to the provided 4-bit counter, so correct operation can be verified.
You have the following components available:

the 4-bit binary counter (count4) below, which has Enable and synchronous parallel-load inputs (load has higher priority than enable). The count4 module is provided to you. Instantiate it in your circuit.
logic gates
module count4(
	input clk,
	input enable,
	input load,
	input [3:0] d,
	output reg [3:0] Q
);
The c_enable, c_load, and c_d outputs are the signals that go to the internal counter's enable, load, and d inputs, respectively. Their purpose is to allow these signals to be checked for correctness.
*/
module top_module (
    input clk,
    input reset,
    input enable,
    output [3:0] Q,
    output c_enable,
    output c_load,
    output [3:0] c_d
); //

    assign c_enable = enable;
    assign c_d = c_load ? 1 : 0;
    always @(posedge clk) begin
        if(reset) begin
            Q <= 1;
           
        end
        else begin
            if(enable) begin
                if(Q == 12) begin
                    Q <= 1;
                    
                end
                else begin
                    Q <= Q + 1;
                    
                end
            end
        end
    end
    
    always @(*) begin
        if(reset || (Q == 12 && c_enable)) begin
            c_load <= 1;
        end
        else begin
            c_load <= 0;
        end
    end
    count4 the_counter (clk, c_enable, c_load, c_d /*, ... */ );

endmodule
