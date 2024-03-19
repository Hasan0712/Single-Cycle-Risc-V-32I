
`include "wrapmem.v"
module memory (

input wire [31:0]data_i,
input wire [1:0]byteadd,
input wire [2:0] fun3,
input wire store,
input wire load,
output wire [31:0]data_o,
output wire [3:0]masking,
input wire [31:0]wrap_load_in,
output wire [31:0]wrap_load_out,
input wire mem_en,
input wire Load

);

wrappermem u_wrapper(.data_i(data_i),
                  .byteadd(byteadd),
                  .fun3(fun3),
                  .mem_en(mem_en),
                  .Load(Load),
                  .wrap_load_in(wrap_load_in),
                  .masking(masking),
                  .data_o(data_o),
                  .wrap_load_out(wrap_load_out));







    
endmodule