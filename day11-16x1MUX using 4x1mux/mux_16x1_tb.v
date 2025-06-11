module mux_16x1_tb;
reg [15:0] I;
reg [3:0] sel;
wire out;

mux_16x1 DUT (I,sel,out);

initial begin
  $monitor($time," sel=%b out=%b", sel, out);
  I = 16'b1010_1100_1111_0001;
  sel = 4'b0000; #10; //for i0
  sel = 4'b0001; #10; //for i1
  sel = 4'b0111; #10; //for i7
  sel = 4'b1110; #10; //for i14
  sel = 4'b1111; #10; //for i15
  $finish;
end
endmodule
