module logicgates_tb;

  reg a, b;
  wire And_out, Or_out, Not_out, Nand_out, Nor_out, Xor_out, Xnor_out;


  logicgates dut (  a, b,
  And_out, Or_out, Not_out, Nand_out, Nor_out, Xor_out, Xnor_out
  
  );

  initial begin
    
    $monitor("%b %b |  %b   %b   %b    %b    %b   %b    %b", 
              a, b, And_out, Or_out, Not_out, Nand_out, Nor_out, Xor_out, Xnor_out);
    
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
    
    $finish;
  end

endmodule
