module half_adder_tb;
reg a,b;
wire sum,cout;

  half_adder DUT(a,b,sum,cout);
  
  initial begin
  $monitor("a=%b ,b=%b | sum=%b cout=%b",a,b,sum,cout);
    a=0;b=0; #10;
    a=0;b=1; #10;
    a=1;b=0; #10;
    a=1;b=1; #10;
  end
  
endmodule