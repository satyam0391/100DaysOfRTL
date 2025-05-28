module operators;

  reg [7:0] A = 15;
  reg [7:0] B = 5;

  // Arithmetic operators
  wire [7:0] sum;
  wire [7:0] diff;
  assign sum  = A + B;
  assign diff = A - B;

  // Relational operator
  wire compare;
  assign compare = (A >= B);

  // Bitwise operator
  wire [7:0] b_and;
  assign b_and = A & B;

  // Shift operator
  wire [7:0] leftshift;
  assign leftshift = A << 1;

  // Reduction operator
  wire xor_red;
  assign xor_red = ^A;

  // Concatenation operator
  wire [15:0] F;
  assign F = {A, B};

endmodule
