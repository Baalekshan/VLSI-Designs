module srflipflop (clk, rst, s, r, q, qbar);
 input clk, rst;
 input s,r;
 output reg q;
 output qbar;
always@(posedge clk) 
begin 
if(rst==0) 
 q <= 0;
 else 
 begin
10
 case({s,r})
 2'b00: q <= q; // No change
 2'b01: q <= 1'b0; // reset
 2'b10: q <= 1'b1; // set
 2'b11: q <= 1'bx; // Invalid inputs
 endcase
 end
 end
 assign qbar = ~q;
endmodule
