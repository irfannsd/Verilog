module and_or_top(
    input A,
    input B,
    output AND_OUT,
    output OR_OUT
);

// AND gate
assign AND_OUT = A & B;

// OR gate
assign OR_OUT = A | B;

endmodule