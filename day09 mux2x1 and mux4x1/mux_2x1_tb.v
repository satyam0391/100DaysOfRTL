module mux_2x1_tb;
    reg I0, I1, sel;
    wire out;

    mux_2x1 dut (I0,I1,sel,out);

    initial begin
        $monitor("I0=%b I1=%b sel=%b -> out=%b", I0, I1, sel, out);
        I0=0; I1=1; sel=0; #10;
        I0=0; I1=1; sel=1; #10;
        I0=1; I1=0; sel=0; #10;
        I0=1; I1=0; sel=1; #10;
        $finish;
    end
endmodule
