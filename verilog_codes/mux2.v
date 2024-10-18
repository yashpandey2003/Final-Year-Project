/* 
▪ * Group No:- 13
▪ * Author List: Sumit Saroj, Yash Pandey, Shankar Lal Yadav
▪ * Filename: store_extend 
▪ * Functions: store_extend 
▪ * Global Variables: None
▪ */

// mux2.v - logic for 2-to-1 multiplexer

module mux2 #(parameter WIDTH = 8) (
    input       [WIDTH-1:0] d0, d1,
    input       sel,
    output      [WIDTH-1:0] y
);

assign y = sel ? d1 : d0;

endmodule
