module decode_tb();
 reg [6:0]opcode_tb;

wire   r_tb;
wire   load_tb;
wire   store_tb;
wire   branch_tb;
wire   itype_tb;
wire    jalr_tb;
wire    jal_tb;
wire    lui_tb;

decode u_typedec1(.r(r_tb),
                     .load(load_tb),
                     .store(store_tb),
                     .branch(branch_tb),
                     .itype(itype_tb),
                     .jalr(jalr_tb),
                     .jal(jal_tb),
                     .lui(lui_tb),
                     .opcode(opcode_tb));
initial begin
    #10;
    opcode_tb=7'b0110011;
    #10;
    opcode_tb=7'b0000011;
    #10;
    opcode_tb=7'b0100011;
    #10;
    opcode_tb=7'b1100011;
    #10;
    opcode_tb=7'b0010011;
    #10;
    opcode_tb=7'b0110111;
    #10;
    opcode_tb=7'b1101111;
    #10;
    opcode_tb=7'b0110111;
    #10;


end
initial begin
    $dumpfile("typedecode.vcd");
    $dumpvars(0,decode_tb);
end
    
endmodule