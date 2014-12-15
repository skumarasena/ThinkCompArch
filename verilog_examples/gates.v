
module structuralGates(out, in0, in1);
output out;
input in0;
input in1;

wire andout;
wire nandout;
wire orout;

and andgate(andout, in0, in1);
nand nandgate(nandout, in0, in1);
or orgate(orout, andout, nandout);

not inv(out, orout);

endmodule

module behavioralGates(out, in0, in1);
output out;
input in0;
input in1;

assign out = !((in0 && in1) || !(in0 && in1));

endmodule


module testGates;
reg in0, in1;
wire out;


behavioralGates gates(out, in0, in1);

initial begin
$display("In0 In1  | Out");
in0=0;in1=0; #1000 
$display("%b    %b   |  %b", in0, in1, out);
in0=0;in1=1; #1000 
$display("%b    %b   |  %b", in0, in1, out);
in0=1;in1=0; #1000 
$display("%b    %b   |  %b", in0, in1, out);
in0=1;in1=1; #1000 
$display("%b    %b   |  %b", in0, in1, out);

end

endmodule


