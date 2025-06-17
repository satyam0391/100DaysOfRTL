module tb_decoder3x8;
    reg [2:0] sel;
    wire [7:0] Y;

    decoder3x8 dut(sel,Y);

    initial begin
        $monitor("Time=%0t sel=%b Y=%b", $time, sel, Y);
        sel = 3'b000; #10;
        sel = 3'b001; #10;
        sel = 3'b010; #10;
        sel = 3'b011; #10;
        sel = 3'b100; #10;
        sel = 3'b101; #10;
        sel = 3'b110; #10;
        sel = 3'b111; #10;
        $finish;
    end
endmodule
