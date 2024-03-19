
`include "mux3.v"
module wr (input wire [31:0]Imm_out,
           input wire [31:0]outO,
           output wire [31:0]Outter,
           input wire [31:0]A3,
input wire [31:0]B3,
input wire [2:0]Selpin,
input wire[31:0]C3,
input wire[31:0]D3,
input wire[31:0]E3
);
    









mux3 u_multiplexer3(.A3(A3),
                    .B3(B3),
                    .C3(C3),
                    .D3(D3),
                    .E3(E3),
                    .Selpin(Selpin),
                    .Outter(Outter));
endmodule