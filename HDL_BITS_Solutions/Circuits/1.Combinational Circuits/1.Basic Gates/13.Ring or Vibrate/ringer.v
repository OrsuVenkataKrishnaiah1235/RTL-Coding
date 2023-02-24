module top_module (
    input ring,
    input vibrate_mode,
    output ringer,       // Make sound
    output motor         // Vibrate
);
assign motor=ring&&vibrate_mode;
    assign ringer=(!vibrate_mode)&ring;
endmodule