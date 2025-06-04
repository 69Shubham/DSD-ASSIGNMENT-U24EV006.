module xor_gate (output Y, input A, B);
  assign Y = A ^ B;
endmodule

module and_gate (output Y, input A, B);
  assign Y = A & B;
endmodule

module or_gate (output Y, input A, B);
  assign Y = A | B;
endmodule

module full_adder_structural (
  output SUM, COUT,
  input A, B, CIN
);

  wire xor1_out, and1_out, and2_out, or1_out;

  // Instantiate gates
  xor_gate xor1 (xor1_out, A, B);        // xor1_out = A ^ B
  xor_gate xor2 (SUM, xor1_out, CIN);    // SUM = xor1_out ^ CIN

  and_gate and1 (and1_out, A, B);        // and1_out = A & B
  and_gate and2 (and2_out, xor1_out, CIN); // and2_out = (A ^ B) & CIN

  or_gate or1 (COUT, and1_out, and2_out);  // COUT = and1_out | and2_out

endmodule
