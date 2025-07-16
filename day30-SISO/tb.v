module tb;
reg clk,rst,sin;
wire sout;
SISO dut(clk,rst,sin,sout);
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
rst=1; sin=1; #5
rst=0; sin=0; #10
sin=1; #10
sin=1; #10
sin=1; #10
sin=0; #10
$finish;
end
endmodule