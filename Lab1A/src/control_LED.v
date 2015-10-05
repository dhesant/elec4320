// Lab 1A: ELEC 4440- Reconfigurable Computing: From Theory to Practice
// Department of ECE, Hong Kong University of Science & Technology
// Controlling the LEDs using DIP switches on 

module control_LED
( input [7:0] input_value,
  output [7:0] show_value
);
/*
// Task 1: Input -> Output
assign show_value = input_value;
*/
/*
// Task 2: 2-1 Mux
wire[2:0] mux1;
wire[2:0] mux2;
reg [2:0] mux_out;
wire control;

assign mux1 = input_value[2:0];
assign mux2 = input_value[5:3];
assign control = input_value[6];
assign show_value[2:0] = mux_out;
assign show_value[7:3] = 5'b00000;

always@*
	case(control)
		1'b0: mux_out <= mux1;
		1'b1: mux_out <= mux2;
	endcase
*/
///*
// Task 3: 3-8 Decoder
wire [2:0] control;
reg[7:0] dec;

assign control = input_value[2:0];
assign show_value = dec;

always@*
case (control)
	3'b000  : dec <= 8'b00000001;
	3'b001  : dec <= 8'b00000010;
	3'b010  : dec <= 8'b00000100;
	3'b011  : dec <= 8'b00001000;
	3'b100  : dec <= 8'b00010000;
	3'b101  : dec <= 8'b00100000;
	3'b110  : dec <= 8'b01000000;
	default : dec <= 8'b10000000;
endcase
//*/
endmodule