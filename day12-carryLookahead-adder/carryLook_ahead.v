module carryLook_ahead(A,B,Cin,Sum,Cout);
 input [3:0]A, B;     
 input Cin;      
 output [3:0]Sum;    
 output Cout;
 wire [3:0]G, P;     
 wire [4:0]C;          

 assign G = A & B;      // Generate: G[i] = A[i] & B[i]
 assign P = A ^ B;      // Propagate: P[i] = A[i] ^ B[i]

 assign C[0] = Cin;
 assign C[1] = G[0]|(P[0]&C[0]);
 assign C[2] = G[1]|(P[1]&G[0])|(P[1]&P[0]&C[0]);
 assign C[3] = G[2]|(P[2]&G[1])|(P[2]&P[1]&G[0])|(P[2]&P[1]&P[0]&C[0]);
 assign C[4] = G[3]|(P[3]&G[2])|(P[3]&P[2]&G[1])|(P[3]&P[2]&P[1]&G[0])|(P[3]&P[2]&P[1]&P[0]&C[0]);
 assign Cout = C[4];
 assign Sum = P ^ C;

endmodule
