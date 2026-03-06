`timescale 1ns/1ps
`include "and_or_top.v"


module and_or_tb;

reg A;
reg B;

wire AND_OUT;
wire OR_OUT;

// Instantiate Top Module
and_or_top uut (
    .A(A),
    .B(B),
    .AND_OUT(AND_OUT),
    .OR_OUT(OR_OUT)
);

initial begin

    // Waveform dump
    $dumpfile("waveform.vcd");
    $dumpvars(0, and_or_tb);

    $display("A B | AND OR");
    $monitor("%b %b |  %b   %b", A, B, AND_OUT, OR_OUT);

    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;

    #10 $finish;

end

endmodule