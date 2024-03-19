module mux2 (op_a,op_b,selpin,out_O);


input wire [31:0]op_a;
input wire  [31:0]op_b;
input wire  selpin;
output reg [31:0] out_O;
always @(*) begin
    
out_O= selpin ? op_b: op_a;
 
    end 
endmodule