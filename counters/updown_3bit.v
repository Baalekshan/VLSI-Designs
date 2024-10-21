module updown_3bit(clk, rst, hi, updown, q, qb);
input clk,rst, hi, updown;
output [2:0]q; 
output [2:0]qb;
assign hi = 1'b1;
wire w1, w2, w3, w4, w5, w6, w7;
not n1(w1,updown);
and a1(w2, q[0], updown)
;
and a2(w3, qb[0], w1);
or r1(w4, w2, w3);
and a3(w5, q[1], w2);
and a4(w6, qb[1], w3);
or r2(w7, w5, w6); 
jkflipflop j1(clk, rst, hi, hi, q[0], qb[0]);
jkflipflop j2(clk, rst, w4, w4, q[1], qb[1]);
jkflipflop j3(clk, rst, w7, w7, q[2], qb[2]);
endmodule
