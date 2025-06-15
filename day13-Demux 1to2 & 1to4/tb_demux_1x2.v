module tb_demux_1x2;
  reg I, sel;
  wire y0, y1;
  demux_1x2 dut (I,sel,y0,y1);
  initial begin
    $monitor("Time = %0t I = %b sel = %b y0 = %b y1 = %b",$time,I,sel,y0,y1);
    I = 0;
	 sel = 0; #10;
    sel = 1; #10;
    I = 1;
	 sel = 0; #10;
    sel = 1; #10;
    $finish;
  end

endmodule
