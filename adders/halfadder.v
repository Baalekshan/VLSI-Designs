module halfadder (
input a,
input b,
output s,
output c 
);
always @(*) begin
s = a ^ b;
c = a & b;
end
endmodule