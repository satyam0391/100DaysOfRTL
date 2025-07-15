module tb;
reg T,clk,reset;
wire Q;
T_FF dut(T,clk,reset,Q);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
reset=1;T=0; #10
reset=0;T=1; #10
T=1; #10
reset=0;T=0; #10
reset=1;T=1; #10
T=0; #10
$finish;
end
endmodule
