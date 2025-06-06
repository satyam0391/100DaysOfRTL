module ALU(A,B,sel,result,carry);
input [7:0]A,B;
input [3:0]sel;
output reg [15:0]result;
output reg carry;
always @(*)begin

result = 0;
carry = 0;

case(sel)

4'b0000: begin // Addition
{carry, result} = A + B;
end

4'b0001: begin // Subtraction
{carry, result} = A - B;
end

4'b0010: begin // Multiplication
result = A * B;
end

4'b0011: begin // Division
if (B != 0) begin
result = A / B;
end 
else begin
result = 16'hXXXX; 
end
end

4'b0100: begin // AND
result = A & B;
end

4'b0101: begin // OR
result = A | B;
end

4'b0110: begin // XOR
result = A ^ B;
end

4'b0111: begin // NOT A
result = ~A;
end

4'b1000: begin // Left Shift
result = A << 1;
end

4'b1001: begin // Right Shift
result = A >> 1;
end
default: begin
result = 0;
carry = 0;
end
endcase
end

endmodule
