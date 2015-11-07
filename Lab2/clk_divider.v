`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:12:09 08/01/2014 
// Design Name: 
// Module Name:    clk_divider 
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
module clk_divider( sysclk, slowclk );
   input 	sysclk; 	// Original Timer Clock in 100MHz

   output 	slowclk;	// Slow Clock set to 1MHz, divide by 100 times

   reg [6:0] 	counter; // 'D50 = 6'b110010
   reg		slowclock;

   initial begin
      counter = 0;
      slowclock = 1;
   end
   
   always @ (posedge sysclk) begin
		if(counter == 'D50) begin
			counter <= 0;
			slowclock <= ~slowclock;
		end else begin
			counter <= counter + 1;
		end
   end

   assign slowclk = slowclock;

endmodule
