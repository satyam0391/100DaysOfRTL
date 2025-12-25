module HA_tb;
reg a,b;
wire sum,cout;
HA dut(a,b,sum,cout);
initial begin
a=0; b=0; #10;
a=0; b=1; #10;
a=1; b=0; #10;
a=1; b=1; #10;
end
endmodule
