module countingClocks(out, clk);
output reg [3:0] out;
input clk;


reg [3:0] count;
initial count = 0;
always @(posedge clk) begin
	count <= count + 1;
	out <= count;
end
endmodule


module testClocks;
wire [3:0] out;
reg clk;


countingClocks clock(out, clk);

initial clk = 0;
always #100 clk=!clk;


endmodule