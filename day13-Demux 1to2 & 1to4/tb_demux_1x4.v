module tb_demux_1x4;
  reg I;
  reg [1:0] sel;
  wire [3:0] Y;
  demux_1x4 dut(I,sel,Y);
  initial begin
    $monitor("Time = %0t I = %b sel =%b Y = %b", $time, I, sel, Y);
    I = 1;
    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;
    I = 0;
    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;
    $finish;
  end
endmodule
