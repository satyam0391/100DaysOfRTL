module tb_even;
reg[3:0]in;
wire p;
even_parity_gen dut(.p(p),.in(in));
initial
begin
in=4'b1010; #10
in=4'b1110; #10
in=4'b0101; #10
in=4'b1011; #10
$finish;
end
endmodule
