

module ripple_adder_tb;
    reg [3:0] A, B;
    reg cin;
    wire [3:0] sum;
    wire cout;
    ripple_adder dut(A,B,cin,sum,cout);

    initial begin
        $monitor($time," A=%b, B=%b, Cin=%b => Sum=%b, Cout=%b", 
                  A, B, cin, sum, cout);
        A = 4'b0101; B = 4'b0011; cin = 1; #10;
        A = 4'b1111; B = 4'b0001; cin = 0; #10;
        A = 4'b1010; B = 4'b0101; cin = 1; #10;
        $finish;
    end
endmodule
