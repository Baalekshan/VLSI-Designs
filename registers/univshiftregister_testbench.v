initial begin
// Initialize Inputs
clk=0;
forever #10 clk=~clk;
end
initial begin
s = 0;
i = 8;
sr = 0;
sl = 0;
clr = 1;
#90;
s = 0;
i = 8;
sr = 0;
sl = 0;
clr = 0;
#90;
s = 1;
i = 1;
sr = 0;
sl = 0;
clr = 1;
#90;
s = 1;
i = 1;
sr = 1;
sl = 0;
clr = 0;
#90;
36
s = 2;
i = 2;
sr = 0;
sl = 0;
clr = 1;
#90;
s = 2;
i = 2;
sr = 0;
sl = 1;
clr = 0;
#90;
s = 3;
i = 8;
sr = 0;
sl = 0;
clr = 0;
#90;
// Wait 100 ns for global reset to finish
#100;
// Add stimulus here
$stop;
end
endmodule
