module datatype (a,b,f,y);
    input a, b;
    output wire f; // net data type(wire)
    output reg y;  //reg datatype
	 
    integer k;           // Integer variable 
    real pi=3.14            //real datatype
    assign f = a ^ b;    
    
    always @(*) begin
        y <= a & b;       
    end

endmodule
