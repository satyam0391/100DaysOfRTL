module logicgate(
  input a, b,
  output And_out, Or_out, Not_out, Nand_out, Nor_out, Xor_out, Xnor_out
);

  and  (And_out, a, b);
  or   (Or_out, a, b);
  not  (Not_out, a);
  nand (Nand_out, a, b);
  nor  (Nor_out, a, b);
  xor  (Xor_out, a, b);
  xnor (Xnor_out, a, b);

endmodule
