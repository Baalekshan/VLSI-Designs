module npnor(out,in1,in2);
output out;
input in1,in2;
supply1 a;
supply0 c;
wire b;
pmos(b,a,in2),(out,b,in1);
nmos(out,c,in1),(out,c,in2);
endmodule
