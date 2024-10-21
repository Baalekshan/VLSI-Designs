module mem(addr,clk,datain,cs,re,we,dataout);
input [3:0]datain,addr;
input clk,cs,re,we;
output reg [3:0]dataout;
reg [3:0]memory[15:0];
always@(posedge clk)
begin
if(cs==1'b1)
if(we==1'b1&&re==1'b0)
memory[addr]=datain;
else if (re===1'b1&&we==1'b0)
dataout=memory[addr];
else;
else;
end
endmodule