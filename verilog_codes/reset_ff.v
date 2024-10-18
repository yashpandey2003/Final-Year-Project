/* 
▪ * Group No:- 13
▪ * Author List: Sumit Saroj, Yash Pandey, Shankar Lal Yadav
▪ * Filename: store_extend 
▪ * Functions: store_extend 
▪ * Global Variables: None
▪ */

// reset_ff.v - 8-bit resettable D flip-flop

module reset_ff #(parameter WIDTH = 8) (
    input       adc_sck, reset,
    input       [WIDTH-1:0] d,
    output reg  [WIDTH-1:0] q
);

always @(posedge adc_sck or posedge reset) begin
    if (reset) q <= 0;
    else     q <= d;
end

endmodule
