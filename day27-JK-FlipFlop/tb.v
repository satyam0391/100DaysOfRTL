module tb;
reg clk,j,k;
wire q;
JK_FF dut(j,k,clk,q);
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
j=0; k=0; #10
j=0; k=1; #10
j=1; k=0; #10
j=1; k=1; #10
j=0; k=0; #10
$finish;
end
endmodule
