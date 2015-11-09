# ELEC4320 HW2
## Dhesant Nakka - 20146587 - 9 November 2015

## 1)
### a)
Implementation 1:
1 CLB's and 1 delay for every bit.  
=> Total of 8 Spartan CLB's and 8 CLB delays.

Implementation 2:
1.5 CLB's and 0.5 delays for every bit.  
=> Total of 12 Spartan CLB's and 4 CLB delays.

### b)
0.5 CLB's for every bit. 1 CLB delay in total.  
=> Total of 4 CLB's and 1 CLB delay.

### c)
For a 4-bit x 4-bit multiplier, there are 16 (4x4) AND gates (1-bit multiplication), 4 1-bit half adders, and 8 1-bit Full adders. This is equivalent to 28 CLB's.

## 2)
### a)
![alt text](https://raw.githubusercontent.com/dhesant/elec4320/master/Hw2/q2_eq.png "Equations")

### b)
![alt text](https://raw.githubusercontent.com/dhesant/elec4320/master/Hw2/q2_delay.png "Delay Graph")
![alt text](https://raw.githubusercontent.com/dhesant/elec4320/master/Hw2/q2_area.png "Area Graph")

From the first graph, it is better to have N = 5 to have the least delay in the circuit, and from the second graph, it is better to have N = 5 to minimize the area needed for the circuit.

### c)

## 3)
| Q1 | Q2 | S | Q1+ |
|:--:|:--:|:-:|:---:|
| 0  | 0  | 0 | 0   |
| 0  | 0  | 1 | 0   |
| 0  | 1  | 0 | 1   |
| 0  | 1  | 1 | 1   |
| 1  | 0  | 0 | 0   |
| 1  | 0  | 1 | 1   |
| 1  | 1  | 0 | 1   |
| 1  | 1  | 1 | 1   |

| Q1 | Q2 | S | T | Q2+ |
|:--:|:--:|:-:|:-:|:---:|
| 0  | 0  | 0 | 0 | 0   |
| 0  | 0  | 0 | 1 | 0   |
| 0  | 0  | 1 | 0 | 0   |
| 0  | 0  | 1 | 1 | 1   |
| 0  | 1  | 0 | 0 | 0   |
| 0  | 1  | 0 | 1 | 1   |
| 0  | 1  | 1 | 0 | 0   |
| 0  | 1  | 1 | 1 | 1   |
| 1  | 0  | 0 | 0 | 0   |
| 1  | 0  | 0 | 1 | 0   |
| 1  | 0  | 1 | 0 | 1   |
| 1  | 0  | 1 | 1 | 1   |
| 1  | 1  | 0 | 0 | 0   |
| 1  | 1  | 0 | 1 | 1   |
| 1  | 1  | 1 | 0 | 1   |
| 1  | 1  | 1 | 1 | 1   |

| Q1 | S | T | A (SQ1+ST) |
|:--:|:-:|:-:|:----------:|
| 0  | 0 | 0 | 0          |
| 0  | 0 | 1 | 0          |
| 0  | 1 | 0 | 0          |
| 0  | 1 | 1 | 1          |
| 1  | 0 | 0 | 0          |
| 1  | 0 | 1 | 0          |
| 1  | 1 | 0 | 1          |
| 1  | 1 | 1 | 1          |

| Q2 | T | A | Q2+ |
|:--:|:-:|:-:|:---:|
| 0  | 0 | 0 | 0   |
| 0  | 0 | 1 | 1   |
| 0  | 1 | 0 | 0   |
| 0  | 1 | 1 | 1   |
| 1  | 0 | 0 | 0   |
| 1  | 0 | 1 | 1   |
| 1  | 1 | 0 | 1   |
| 1  | 1 | 1 | 1   |

| Q2 | S | T | Z |
|:--:|:-:|:-:|:-:|
| 0  | 0 | 0 | 0 |
| 0  | 0 | 1 | 0 |
| 0  | 1 | 0 | 0 |
| 0  | 1 | 1 | 1 |
| 1  | 0 | 0 | 1 |
| 1  | 0 | 1 | 1 |
| 1  | 1 | 0 | 1 |
| 1  | 1 | 1 | 1 |

![alt text](https://raw.githubusercontent.com/dhesant/elec4320/master/Hw2/q3.png "Routing Diagram")
