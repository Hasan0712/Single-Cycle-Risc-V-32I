
`include "pc.v"


module fetch (
input wire clk,
input wire rst,
output wire[31:0]address_out,
input wire [31:0]address_in,
input wire branchsig,
input wire bnch1,
input wire jr,
input wire j,
input wire aui,
input wire [7:0]alu
 
);







pc u_pcV(.clk(clk),
         .rst(rst),
         .address_out(address_out),
         .branchsig(branchsig),
         .address_in(address_in),
         .bnch1(bnch1),
         .jr(jr),
         .j(j),                                   
         .aui(aui),
         .alu(alu));


endmodule