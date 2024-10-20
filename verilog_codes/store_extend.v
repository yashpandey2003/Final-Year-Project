/* 
▪ * Group No:- 13
▪ * Author List: Sumit Saroj, Yash Pandey, Shankar Lal Yadav
▪ * Filename: store_extend 
▪ * Functions: store_extend 
▪ * Global Variables: None
▪ */

// store_extend.v - logic for extending the data and addr for storing word, half and byte

module store_extend (
    input   [31:0] y,
    input   [1:0] sel,
    output reg [31:0] data
);

always @(*) begin
    case(sel)
        2'b10: data = y;
        2'b00: data = {{24{1'b0}}, y[7:0]};
        2'b01: data = {{16{1'b0}}, y[15:0]};
        default: data = y;
    endcase
end

endmodule
