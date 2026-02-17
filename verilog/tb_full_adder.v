`timescale 1ns/1ps

`include "full_adder.v"

module tb_full_adder;

    reg a;
    reg b;
    reg cin;
    wire sum;
    wire cout;

    // Instantiate DUT (Device Under Test)
    full_adder dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        // Dump waveform
        $dumpfile("full_adder.vcd");
        $dumpvars(0, tb_full_adder);

        // Display header
        $display("A B Cin | Sum Cout");
        $display("------------------");

        // Apply all input combinations
        a=0; b=0; cin=0; #10; $display("%b %b  %b  |  %b    %b", a,b,cin,sum,cout);
        a=0; b=0; cin=1; #10; $display("%b %b  %b  |  %b    %b", a,b,cin,sum,cout);
        a=0; b=1; cin=0; #10; $display("%b %b  %b  |  %b    %b", a,b,cin,sum,cout);
        a=0; b=1; cin=1; #10; $display("%b %b  %b  |  %b    %b", a,b,cin,sum,cout);
        a=1; b=0; cin=0; #10; $display("%b %b  %b  |  %b    %b", a,b,cin,sum,cout);
        a=1; b=0; cin=1; #10; $display("%b %b  %b  |  %b    %b", a,b,cin,sum,cout);
        a=1; b=1; cin=0; #10; $display("%b %b  %b  |  %b    %b", a,b,cin,sum,cout);
        a=1; b=1; cin=1; #10; $display("%b %b  %b  |  %b    %b", a,b,cin,sum,cout);

        #10;
        $finish;
    end

endmodule
