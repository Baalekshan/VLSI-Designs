module dflipflop(d,clk,clr,q, qb);
input d,clk,clr;
output reg q;
output qb;
assign qb = ~q;
always@(posedge clk)
begin
if(clr==1)
 q=0;
else
 q=d;
end
endmodule