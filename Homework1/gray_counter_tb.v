`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:56:01 10/14/2015
// Design Name:   gray_couter
// Module Name:   C:/Users/djnakka/Downloads/hw1/gray_counter/gray_counter_tb.v
// Project Name:  gray_counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gray_couter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module gray_counter_tb;

	// Inputs
	reg rst;
	reg clk;

	// Outputs
	wire [3:0] grayout;

	// Instantiate the Unit Under Test (UUT)
	gray_couter uut (
		.rst(rst), 
		.clk(clk), 
		.grayout(grayout)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here
		forever #1 clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		rst = 0;

		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here
		#20
		rst = 1;
		#2
		rst = 0;
	end     
endmodule

