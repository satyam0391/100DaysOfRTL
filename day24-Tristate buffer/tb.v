 module tb;
 reg in,en; 
 wire out;
 tristate_buffer dut(in,en,out);
 initial
 begin
 in=0; en=0; #10
 in=1; en=0; #10
 in=0; en=1; #10
 in=1; en=1; #10
 $finish;
 end
 endmodule