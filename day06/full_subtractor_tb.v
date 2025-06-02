module full_subtractor_tb;
    reg a, b, bin;
    wire diff, borrow;
    full_subtractor DUT (a,b,bin,diff,borrow);

    initial begin
        $monitor("a=%b b=%b bin=%b | diff=%b borrow=%b", a, b, bin, diff, borrow);
        repeat(8) begin
            {a, b, bin} = $random;
            #10;
        end
        $finish;
    end
endmodule
