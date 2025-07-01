module SR_latch(S,R,Q,Qbar);
input S,R;
output Q,Qbar;
assign Q=~(R|Qbar);
assign Qbar=~(S|Q);
endmodule

//below is using Nand gate

//module SR_latch(S,R,Q,Qbar);
//input S,R;
//output Q,Qbar;
//assign Q=~(S&Qbar);
//assign Qbar=~(R&Q);
//endmodule
