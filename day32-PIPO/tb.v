module tb;
reg [3:0]d;
reg clk,reset;
wire [3:0]Q;
PIPO dut(clk,reset,d,Q);
initial 
begin
clk=0;
forever #5 clk=~clk;
end
initial begin
#5
reset=1; d=4'b1010; #10
reset=0; d=4'b1001; #10
d=4'b0101; #10
d=4'b1100; #10
$finish;
end
endmodule