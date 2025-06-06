module ALU_tb;

  reg [7:0] A, B;
  reg [3:0] sel;
  wire [15:0] result;
  wire carry;
  ALU dut(A,B,sel,result,carry);
  initial begin
    
    A = 8'd10; B = 8'd5; sel = 4'b0000; #10;// Test Addition

    sel = 4'b0001; #10;// Test Subtraction

    sel = 4'b0100; #10;// Test AND
    
    sel = 4'b0101; #10;// Test OR
    
    sel = 4'b1000; #10;// Test Left Shift
    $finish;
  end

endmodule
