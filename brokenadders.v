

module behavioralFullAdder(sum, carryout, a, b, carryin);
output sum, carryout;
input a, b, carryin;
assign {carryout, sum}=a+b+carryin;
endmodule

module behavioralFullAdder_broken(sum, carryout, a, b, carryin);
output sum, carryout;
input a, b, carryin;
assign {sum, carryout}=a+b+carryin;
endmodule


module behavioralFullAdder_broken2(sum, carryout, a, b, carryin);
output sum, carryout;
input a, b, carryin;
assign {sum, carryout}=a+b+1'b1;
endmodule


module testFullAdder;

reg a, b, carryin;
wire sum, carryout;

behavioralFullAdder adder0(sum, carryout,a,b,carryin);
//behavioralFullAdder_broken adder1(sum, carryout,a,b,carryin);
//behavioralFullAdder_broken2 adder2(sum, carryout,a,b,carryin);

initial begin

$display("A B Cin | Cout Sum");
a=0;b=0;carryin=0; #1000 
$display("%b  %b  %b |  %b  %b", a, b, carryin, carryout, sum);
a=0;b=0;carryin=1;#1000 
$display("%b  %b  %b |  %b  %b", a, b, carryin, carryout, sum);
a=0;b=1;carryin=0;#1000 
$display("%b  %b  %b |  %b  %b", a, b, carryin, carryout, sum);
a=0;b=1;carryin=1;#1000 
$display("%b  %b  %b |  %b  %b", a, b, carryin, carryout, sum);

a=1;b=0;carryin=0;#1000 
$display("%b  %b  %b |  %b  %b", a, b, carryin, carryout, sum);
a=1;b=0;carryin=1;#1000 
$display("%b  %b  %b |  %b  %b", a, b, carryin, carryout, sum);
a=1;b=1;carryin=0;#1000 
$display("%b  %b  %b |  %b  %b", a, b, carryin, carryout, sum);
a=1;b=1;carryin=1;#1000 
$display("%b  %b  %b |  %b  %b", a, b, carryin, carryout, sum);


end

endmodule
