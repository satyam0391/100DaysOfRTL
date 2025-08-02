module tb;
reg clk,reset,ld;
reg [3:0]d;
wire sout;
PISO dut(clk,reset,ld,d,sout);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin 
reset=0; ld = 0; d = 4'b0000;#5 
reset=1; #10 
reset=0; d=4'b1011; ld=1; #10;         
ld = 0;              
#40
$finish;
end
endmodule
