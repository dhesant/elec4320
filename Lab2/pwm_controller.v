`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:11:09 08/01/2014 
// Design Name: 
// Module Name:    pwm_controller 
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
module pwm_controller( clk, slow_rate, speaker_out );
   input	clk;				// input clk run at 1MHz
   input [12:0] slow_rate;
   output 	speaker_out;

   reg [12:0] 	counter;
   reg 		speaker;
   reg [12:0] 	slow_rate_old;

   initial begin
      counter = 0;
      slow_rate_old = 0;
      speaker = 1'b0;
   end

   always @(posedge clk) begin
      if(slow_rate_old != slow_rate) begin
	 counter <= 0;
	 speaker <= 1'b0;
	 slow_rate_old <= slow_rate;
      end
      if(counter == slow_rate && slow_rate != 0) begin
	 speaker <= ~speaker;
	 counter <= 0;
      end else if (slow_rate != 0) begin
	 counter <= counter + 1;
      end else begin
	 counter <= 0;
      end
   end

   assign speaker_out = speaker;

endmodule
