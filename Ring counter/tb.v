module tb;
reg clk,rst;
wire [3:0]q;
ring4bit dut(clk,rst,q);
initial 
begin
clk=0;
forever #5 clk=~clk;
end

initial 
begin
rst=0; #5 
rst=1; #10
rst=0; #40
$finish;
end
endmodule
