module full_adder_behavioral (
  input A, B, CIN,
  output reg SUM, COUT
);

  always @ (A or B or CIN) begin
    {COUT, SUM} = A + B + CIN;
  end

endmodule
