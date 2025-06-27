 module tb;
 reg[3:0]D;
 wire a,b,c,d,e,f,g;
 bcd_to_7segment dut(D,a,b,c,d,e,f,g);
 initial
 begin
 D=4'b0000; #10
 D=4'b1000; #10
 D=4'b0111; #10
 D=4'b1001; #10
 D=4'b1100; #10
 $finish;
 end
 endmodule
