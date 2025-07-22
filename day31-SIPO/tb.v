module tb;
reg clk,reset,sin;
wire [3:0]q;
SIPO dut(clk,reset,sin,q);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin 
reset=1;sin=1; #10
reset=0;sin=1; #10
sin=0; #10
sin=1; #10
sin=1; #10
$finish;
end
endmodule

