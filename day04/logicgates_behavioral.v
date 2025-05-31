module logicgates(
  input a, b,
  output reg And_out, Or_out, Not_out, Nand_out, Nor_out, Xor_out, Xnor_out
);

  always @ (*) begin
    And_out  = a & b;
    Or_out   = a | b;
    Not_out  = ~a;
    Nand_out = ~(a & b);
    Nor_out  = ~(a | b);
    Xor_out  = a ^ b;
    Xnor_out = a ~^ b;
  end

endmodule
