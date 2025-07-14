module tb;
reg D,clk,reset; 
wire Q;
D_FF dut(D,clk,reset,Q);
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
reset=0;
D=0;#10
D=1;#10
D=0;#10
D=1;#10
reset=1;#10
reset=0;#10
D=1;#10
D=0;#10
$finish;
end
endmodule
