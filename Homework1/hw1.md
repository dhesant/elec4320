# ELEC4320 HW1
## Dhesant Nakka - 20146587 - 19 October 2015

## 1)
### FPGA
$100 x 2,000 + $10k x 2 weeks = $220k
### Gate Array
2,000/200 chips = 10 wafers  
$3k x 10 wafers + $50k + $10k x 6 weeks = $140k
### 6' Standard Cell
50k/10k=5mm^2 x 1.3 = 6.5mm^2/chip  
15,000/6.5mm^2 = 2307 chips/wafer = 1 wafer  
$3k x 1 wafer + $200k + $10k x 20 weeks = $403k
### 8' Custom
50k/20k = 2.5mm^2 x 1.3 = 3.25mm^2/chip  
24,000/3.25mm^2 = 7384 chips/wafer = 1 wafer  
$6k x 1 wafer + $400k + $10k x 30 weeks = $706k

The best choice is a Gate Array

## 2)
Files attached:
- 4bitgray.v for Verilog Code
- gray_counter_tb.v for testbench
- presim.png for behavorial simulation
- postsim.png for post-route simulation

## 3)
### a)
#### Programmable Elements
Each AND has 8 inputs, there are 4 AND gates per output, and there are 4 outputs.  
=> (8 x 4) x 4  = 128 programmable elements in the typical circuit.

#### Equivalant Gates
Each AND gate is an 8-input AND gate  = 4 equivalent gates.
The OR gate is a 4-input OR gate = 2 equivalent gates.
There is 1 NOT gate at the end of the circuit = 0.5 equivalent gates.
=> (4 x 4 + 2 + 0.5) x 4 = 74 equivalent gates.

### b)
#### Programmable Elements
Each AND gate is a 6-input AND gate.
Each OR gate is a 8-input OR gate.
=> 6 x 8 + 8 x 4 = 80 programmable elements in the typical circuit.

#### Equivalent Gates
Each AND gate is a 6-input AND gate = 3 equivalent gates.
Each OR gate is a 8-input OR gate = 4 equivalent gates.
=> 3 x 8 + 4 x 4 = 40 equivalent gates.
