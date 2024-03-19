module mux ( a,b,sel,out);


input wire [31:0]a;
input wire  [31:0]b;
input wire  sel;
output reg [31:0] out;
always @(*) begin
    
out  = sel ? b: a;
 end 
    
endmodule