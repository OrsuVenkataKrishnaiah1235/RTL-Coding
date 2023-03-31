/*

From a 1000 Hz clock, derive a 1 Hz signal, called OneHertz, that could be used to drive an Enable signal for a set of hour/minute/second counters to create a digital wall clock. Since we want the clock to count once per second, the OneHertz signal must be asserted for exactly one cycle each second. Build the frequency divider using modulo-10 (BCD) counters and as few other gates as possible. Also output the enable signals from each of the BCD counters you use (c_enable[0] for the fastest counter, c_enable[2] for the slowest).

The following BCD counter is provided for you. Enable must be high for the counter to run. Reset is synchronous and set high to force the counter to zero. All counters in your circuit must directly use the same 1000 Hz signal.

module bcdcount (
	input clk,
	input reset,
	input enable,
	output reg [3:0] Q
);


This is a Verilog module that implements a 3-digit BCD (binary coded decimal) counter with a frequency divider that generates a 1Hz signal.

The inputs to the module are a clock signal (clk) and a reset signal (reset). The outputs of the module are a 1Hz signal (OneHertz) and a 3-bit signal that controls the enable inputs of the three BCD counters (c_enable).

The three BCD counters are implemented using an external module called bcdcount, which takes in a clock signal, a reset signal, an enable signal, and outputs a 4-bit BCD count value. The counter0, counter1, and counter2 instances of this module have their own enable signals, which are controlled by the c_enable signal output by the module.

The c_enable signal is a 3-bit signal that controls the enable inputs of the three BCD counters. The first bit of c_enable (c_enable[0]) is set high only when both q1 and q0 are equal to 9, indicating that the first two digits of the BCD count have reached their maximum value. The second bit of c_enable (c_enable[1]) is set high only when q0 is equal to 9, indicating that the third digit of the BCD count has reached its maximum value. The third bit of c_enable (c_enable[2]) is always set high, indicating that the counters are always enabled.

The OneHertz signal is set high only when all three digits of the BCD count have reached their maximum value (9), indicating that one second has elapsed. This signal can be used as a reference for other circuits that need to operate at a slower frequency, such as a clock for a microprocessor.

*/

module top_module (
    input clk,
    input reset,
    output OneHertz,
    output [2:0] c_enable
); //
    
    wire [3:0] q0, q1, q2;

    bcdcount counter0 (clk, reset, c_enable[0], q0);
    bcdcount counter1 (clk, reset, c_enable[1], q1);
    bcdcount counter2 (clk, reset, c_enable[2], q2);

    assign c_enable = {(q1 == 4'd9) && (q0 == 4'd9), q0 == 4'd9, 1'b1};
    assign OneHertz = (q2 == 4'd9) && (q1 == 4'd9) && (q0 == 4'd9);
    
endmodule
