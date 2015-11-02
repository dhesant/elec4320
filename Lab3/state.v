`include "define.v"

module state(clk,reset,run,cont,halt,cs);
  
  input clk, reset, run, cont, halt;
  output [2:0] cs;
  reg [2:0]cs;

//cs: current state
//run: is set high only to start the processor and bring it out of the IDLE state {check the testbench to see what is happening}
//cont: set for some instructions that need that extra state (EXECB) {check cpu.v to see what is happening}

//Put your implementation here

	initial begin
		cs = `IDLE;
	end

	always @(posedge clk) begin
		case (cs)
			`IDLE:
				if (reset) begin
					cs = `IDLE;
				end
				else if (run) begin
					cs = `FETCHA;
				end
			`FETCHA:
				cs = `FETCHB;
			`FETCHB:
				cs = `EXECA;
			`EXECA:
				if (halt) begin
					cs = `IDLE;
				end
				else begin
					if (cont) begin
						cs = `EXECB;
					end
					else begin
						cs = `FETCHA;
					end
				end
			`EXECB:
				cs = `FETCHA;
		endcase
	end					
endmodule
