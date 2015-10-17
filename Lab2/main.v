`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:09:37 08/01/2014 
// Design Name: 
// Module Name:    main 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////


module main( key_input, sysclk, speaker_out, led_out );
   input [8:0]		key_input;
   input 		sysclk;

   //output	[7:0]		seven_out;
   output 		speaker_out;
   output [4:0] 	led_out;

   wire [4:0] 		key_code;
   wire [12:0] 		slow_rate; 

   wire 		slowclk;

   key_encoder encoder(
		       .key_input(key_input),
		       .key_code(key_code),
		       .clk(sysclk)
		       );

   keytofrequency ktof(
		       .key_code(key_code),
		       .clk(sysclk),
		       .slow_rate(slow_rate)
		       );

   clk_divider clk_divider(
			   .sysclk(sysclk),
			   .slowclk(slowclk)
			   );

   pwm_controller pwm_ctrl(
			   .clk(slowclk),
			   .slow_rate(slow_rate),
			   .speaker_out(speaker_out)
			   );

   //seven_segment seven_seg(
   //.key_input(key_input[2:0]),
   //.a_to_g(seven_out)
   //);

   led_controller led_ctrl(
			   .key_input(key_input[8:7]),
			   .led_out(led_out)
			   );

endmodule
