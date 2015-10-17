`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:09:54 08/01/2014 
// Design Name: 
// Module Name:    key_encoder 
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
module key_encoder( key_input, key_code, clk );
   input [8:0] 	key_input;	// 5 push buttons will be used
   input 	clk;

   output [4:0] key_code; 	// 21 frequencies

   reg [2:0] 	key_note;
   reg [1:0] 	range;

   always @ (posedge clk) begin
      case (key_input[8:7]) 	// Medium Key
	2'b11: range <= 0;
	2'b01: range <= 1;
	2'b00: range <= 2;
	2'b10: range <= 3;
      endcase

      case (key_input[6:0]) 
	7'b0000001: key_note <= 1;
	7'b0000010: key_note <= 2;
	7'b0000100: key_note <= 3;
	7'b0001000: key_note <= 4;
	7'b0010000: key_note <= 5;
	7'b0100000: key_note <= 6;
	7'b1000000: key_note <= 7;
	default:    key_note <= 0;
      endcase
   end

   assign key_code[4:0] = range * key_note;

endmodule
