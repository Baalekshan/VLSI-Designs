module jkflipflop (clk, rst, j,k, q, qb);
input clk, rst, j, k;
output reg q; 
output qb;
assign qb = ~q; always@(posedge clk) 
begin 
 if(rst==0) 
 q <= 0;
 else 
 begin
 case({j,k})
 2'b00: q <= q; // No change
 2'b01: q <= 1'b0; // reset
 2'b10: q <= 1'b1; // set
 2'b11: q <= ~q; // Toggle
 endcase
 end