module moore(in,clk,rst,out);
input in, clk, rst;
output reg out;
reg[1:0] nextstate;
parameter s0=2'b00, s1=2'b01, s2=2'b10, s3=2'b11;
always @(posedge clk)
begin
if(rst==1) 
begin 
nextstate=s0; 
out=0; 
end
else
begin case (nextstate)
s0: 
begin 
out=0; 
if(in==0) 
nextstate=s0; 
else 
nextstate=s1; 
end
s1: 
begin 
out=0; 
if(in==0) 
nextstate=s1; 
else 
nextstate=s2; 
end
s2: 
begin 
out=0; 
if(in==0) 
nextstate=s2; 
else 
nextstate=s3; 
end
s3: 
begin 
56
out=1; 
if(in==0) 
nextstate=s3; 
else 
nextstate=s0; 
end
endcase
end
end
endmodule