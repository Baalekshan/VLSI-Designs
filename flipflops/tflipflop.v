module tflipflop ( clk, rst, t, q, qb); 
input clk, rst, t;
output reg q;
output qb;
assign qb = ~q;
always @ (posedge clk) 
begin 
 if (rst==0) 
 q <= 0; 
 else 
 if (t) 
 q <= ~q; 
 else 
 q <= q; 
 end 
endmodule