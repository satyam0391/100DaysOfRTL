module logicgates(
  input a, b,
  output And_out, Or_out, Not_out, Nand_out, Nor_out, Xor_out, Xnor_out
);

  assign And_out  = a & b;
  assign Or_out   = a | b;
  assign Not_out  = ~a;
  assign Nand_out = ~(a & b);
  assign Nor_out  = ~(a | b);
  assign Xor_out  = a ^ b;
  assign Xnor_out = a ~^ b;

endmodule
