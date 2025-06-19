module tb_encoder4x2;
reg [3:0] in;
wire [1:0] out;
encoder4x2 dut (in, out); 
initial begin
 $monitor("Time=%0t in=%b Out=%b",$time,in,out);
 in = 4'b0001; #10;
 in = 4'b0010; #10;
 in = 4'b0100; #10;
 in = 4'b1000; #10;
 $finish;
end
endmodule
