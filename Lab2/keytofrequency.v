`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:10:22 08/01/2014 
// Design Name: 
// Module Name:    keytofrequency 
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
module keytofrequency( key_code, clk, slow_rate );
   input[4:0]	key_code;
   input 	clk;
   output [12:0] slow_rate;
   reg [12:0] 	 slow;

   always @ (posedge clk)
     case (key_code)
       0: slow <= 0;							// 0: frequency = 0;
       1: slow <= 'D1909;						//	1: frequency = 'D262;
       2: slow <= 'D1746;						//	2: frequency = 'D294;
       3: slow <= 'D1515;						//	3: frequency = 'D330;
       4: slow <= 'D1433;						//	4: frequency = 'D349;
       5: slow <= 'D1276;						//	5: frequency = 'D392;
       6: slow <= 'D1137;						//	6: frequency = 'D440;
       7: slow <= 'D1012;						//	7: frequency = 'D494;
       8: slow <= 'D966;						//	8: frequency = 'D523;
       9: slow <= 'D852;						//	9: frequency = 'D587;
       10: slow <= 'D759;						//	10: frequency = 'D659;
       11: slow <= 'D717;						//	11: frequency = 'D698;
       12: slow <= 'D638;						//	12: frequency = 'D784;
       13: slow <= 'D568;						//	13: frequency = 'D880;
       14: slow <= 'D506;						//	14: frequency = 'D988;
       15: slow <= 'D478;						//	15: frequency = 'D1047;
       16: slow <= 'D426;						//	16: frequency = 'D1175;
       17: slow <= 'D379;						//	17: frequency = 'D1319;
       18: slow <= 'D358;						//	18: frequency = 'D1397;
       19: slow <= 'D319;						//	19: frequency = 'D1568;
       20: slow <= 'D284;						//	20: frequency = 'D1760;
       21: slow <= 'D253;						//	21: frequency = 'D1976;
     endcase

   assign slow_rate = slow;

endmodule
