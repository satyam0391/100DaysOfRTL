module D_FF(D,clk,reset,Q);
input D,clk,reset; 
output reg Q;
always @(posedge clk or posedge reset) begin 
if (reset) 
Q <= 0;  
else 
Q <= D;
end 
endmodule