/* 
▪ * Group No:- 13
▪ * Author List: Sumit Saroj, Yash Pandey, Shankar Lal Yadav
▪ * Filename: store_extend 
▪ * Functions: store_extend 
▪ * Global Variables: None
▪ */

// adder.v - logic for adder

module adder #(parameter WIDTH = 32) (
    input       [WIDTH-1:0] a, b,
    output      [WIDTH-1:0] sum
);

assign sum = a + b;

endmodule
