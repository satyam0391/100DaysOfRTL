module tb_priority_encoder;
  reg [7:0] in;
  wire [2:0] code;
  priority_encoder dut (in,code);
  initial begin
    $monitor("in = %b code= %b",in,code);
    in = 8'b00000000; #10;
    in = 8'b00000001; #10;
    in = 8'b00000110; #10;
    in = 8'b00101000; #10;
    in = 8'b10000001; #10;
    $finish;
  end
endmodule
