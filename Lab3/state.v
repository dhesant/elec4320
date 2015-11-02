`include "define.v"

module state(clk,reset,run,cont,halt,cs);
  
  input clk, reset, run, cont, halt;
  output [2:0] cs;
  reg [2:0]cs;

//cs: current state
//run: is set high only to start the processor and bring it out of the IDLE state {check the testbench to see what is happening}
//cont: set for some instructions that need that extra state (EXECB) {check cpu.v to see what is happening}

//Put your implementation here

endmodule
