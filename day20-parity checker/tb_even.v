 module tb_even;
 reg[3:0]in;
 reg p;
 wire error;
 even_parity_check dut(in,p,error);
 initial
 begin
 in=4'b0101; p=1'b0; #10
 in=4'b1101; p=1'b1; #10
 in=4'b0111; p=1'b0; #10
 in=4'b1001; p=1'b1; #10
 $finish;
 end 
endmodule
