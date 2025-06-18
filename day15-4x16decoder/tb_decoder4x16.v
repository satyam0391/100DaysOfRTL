module tb_decoder4x16;
    reg [3:0] I;
    reg en;
    wire [15:0]Y;
    decoder4x16 dut(I,Y,en);
    initial begin
        $monitor("Time=%0t en=%b I=%b Y=%b",$time,en,I,Y);
        en = 0; I = 4'b0000; #10;
        en = 1;
        I = 4'b0000; #10;
        I = 4'b0101; #10;
        I = 4'b1010; #10;
        I = 4'b1111; #10;
        $finish;
    end
endmodule
