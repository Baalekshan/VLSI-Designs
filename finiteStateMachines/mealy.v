module mealy(in,clk,rst,out);
input in,clk,rst;
output reg out;
parameter s0=2'b00,s1=2'b01,s2=2'b10
, s3=2'b11
;
reg [1:0]nextstate;
always @(posedge clk)
begin
if (rst==1)
begin
nextstate=s0;
out=0;
end
else
begin
case (nextstate)
s0:
if (in==0)
begin
nextstate=s0;
out=0;
end
else
begin
nextstate=s1;
out=0;
end
s1:
if (in==0
)
begin
nextstate=s0
;
out=1
;
end
else
begin
nextstate=s3
;
out=0;
end
s2:
if (in==0
)
begin
nextstate=s0;
out=1;
52
end
else
begin
nextstate=s2
;
out=0;
end
s3
:
if (in==0
)
begin
nextstate=s0;
out=1;
end
else
begin
nextstate=s2
;
out=0;
end
endcase
end
end
endmodule
