//using structural modeling

module full_adder(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
	
	assign sum = a^b^cin;
	assign cout = (a&b)| (a&cin) | (b&cin);
endmodule	

module ripple_adder(A,B,cin,sum,cout);
	 input [3:0]A,B;
    input cin;
    output [3:0]sum;
    output cout;
    wire c1,c2,c3;

    full_adder A0 (A[0], B[0], cin,  sum[0], c1);
    full_adder A1 (A[1], B[1], c1,   sum[1], c2);
    full_adder A2 (A[2], B[2], c2,   sum[2], c3);
    full_adder A3 (A[3], B[3], c3,   sum[3], cout);
endmodule

//using dataflow modeling

//module ripple_adder(A,B,cin,sum,cout);
//	 input [3:0]A,B;
//    input cin;
//    output [3:0]sum;
//    output cout;
//    assign {cout, sum} = A + B + cin;
//endmodule


