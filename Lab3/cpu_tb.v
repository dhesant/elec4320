//`timescale 1ns / 1ns

`include "define.v"

module cpu_tb;

 reg clk, reset, run;
 reg [15:0] in;
 wire [2:0] cs;
 wire [15:0] irout, qtop, dbus, out;
 wire [11:0] pcout, abus;
 wire locked_out;
 reg clk_rst;

 cpu cpu0(.c_in(clk), .reset(reset), .run(run), .in(in), .cs(cs), .pcout(pcout), .irout(irout), .qtop(qtop), .abus(abus), .dbus(dbus), .out(out), .locked_out(locked_out), .clk_rst(clk_rst));

initial 
begin
	clk=0;
	forever #5 clk = !clk;
end

initial begin
	clk_rst = 1;
	#5 clk_rst = 0;
end

initial begin
	@(posedge locked_out) reset=1; run=0; in=8;
	#200 reset=0; run=1;
	#200 run=0;
	#40000 $finish;
end

endmodule


