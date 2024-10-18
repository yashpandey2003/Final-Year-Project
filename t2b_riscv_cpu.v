/* 
▪ * Group No:- 13
▪ * Author List: Sumit Saroj, Yash Pandey, Shankar Lal Yadav
▪ * Filename: store_extend 
▪ * Functions: store_extend 
▪ * Global Variables: None
▪ */


// t2b_riscv_cpu module declaration
module t2b_riscv_cpu (
    input clk,reset,
    input Ext_MemWrite,
    input [31:0] Ext_WriteData, Ext_DataAdr,
    output MemWrite,
    output [31:0] WriteData, DataAdr, ReadData,
    output cpu_done

);

wire [31:0] DataAdr_rv32;
wire [31:0] WriteData_rv32;
wire MemWrite_rv32;
wire [31:0] Instr;
wire [31:0] PC;
wire [2:0] funct;
wire [6:0] funct7;
assign funct = Instr[14:12];
assign funct7 = Instr[31:25];

// instantiate processor and memories
riscv_cpu rvsingle (clk, reset, PC, Instr, MemWrite_rv32, DataAdr_rv32, WriteData_rv32, ReadData);
instr_mem imem (reset,PC, Instr);
data_mem dmem (clk, MemWrite,reset, DataAdr, WriteData, ReadData, funct, funct7,cpu_done);

// output assignments
assign MemWrite = (Ext_MemWrite && reset) ? 1 : MemWrite_rv32;
assign WriteData = (Ext_MemWrite && reset) ? Ext_WriteData : WriteData_rv32;
assign DataAdr = (reset) ? Ext_DataAdr : DataAdr_rv32;

endmodule

