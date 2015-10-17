`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:11:32 08/01/2014 
// Design Name: 
// Module Name:    led_controller 
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
module led_controller( key_input, led_out );
   input [1:0]		key_input;
   output [4:0] 	led_out;

   reg [4:0] 		led = 5'b00010;

   always @(*)
     case (key_input)
       2'b00: led = 5'b00010;
       2'b01: led = 5'b00001;
       2'b10: led = 5'b00100;
       2'b11: led = 5'b00000;
     endcase

   assign led_out = led;

endmodule
