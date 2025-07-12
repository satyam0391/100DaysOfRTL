module tb;
reg S, R, clk;
wire Q, Qbar;
SR_FF dut (S,R,clk,Q,Qbar);
initial begin
clk = 0;
forever #5 clk = ~clk;
end
initial begin
$monitor("Time=%0t S=%b R=%b Q=%b Qbar=%b",$time,S,R,Q,Qbar);
S=0; R=0; #10
S=0; R=1; #10
S=1; R=0; #10
S=0; R=0; #10
S=1; R=1; #10
$finish;
end
endmodule
