module tb;
reg clk,rst;
wire [31:0]count;
up_counter dut(clk,rst,count);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
rst=1; #5
rst=0; #20
$finish;
end
endmodule
