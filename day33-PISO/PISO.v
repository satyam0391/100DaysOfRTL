module PISO(clk,reset,ld,d,sout);
input [3:0]d;
input clk,reset,ld;
output sout;
reg [3:0]Q;
always @(posedge clk) 
begin
if(reset) Q <= 4'b0000;
else if(ld) Q<=d;
else 
Q<=(Q>>1);
end
assign sout=Q[0];
endmodule 