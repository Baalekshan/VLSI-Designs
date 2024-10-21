module univshiftregister(s,i,sr,sl,clk,clr,a);
input [1:0]s;
input [3:0]i;
input sr,sl,clk,clr;
output [3:0]a;
wire [3:0]w;
mux m1(a[3],sr,a[2],i[3],s[1],s[0],w[3]);
mux m2(a[2],a[3],a[1],i[2],s[1],s[0],w[2]);
mux m3(a[1],a[2],a[0],i[1],s[1],s[0],w[1]);
mux m4(a[0],a[1],sl,i[0],s[1],s[0],w[0]);
dff d1(w[3],clk,clr,a[3]);
dff d2(w[2],clk,clr,a[2]);
dff d3(w[1],clk,clr,a[1]);
dff d4(w[0],clk,clr,a[0]);
endmodule
module dff(d,clk,clr,q);
input d,clk,clr;
output q;
reg q;
always@(posedge clk)
begin
if(clr==1)
 q=0;
else
 q=d;
end
endmodule
module mux(a,b,c,d,s1,s0,y);
input a,b,c,d,s1,s0;
output y;
assign y=(~s1&~s0&a)|(~s1&s0&b)|(s1&~s0&c)|(s1&s0&d);
endmodule
