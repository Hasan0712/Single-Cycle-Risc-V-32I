module mux3 (A3,B3,C3,D3,E3,Selpin,Outter);
    input wire [31:0]A3;
    input wire [31:0]B3;
    input wire [31:0]C3;
    input wire [31:0]D3;
    input wire [31:0]E3;
   // input wire [31:0]alu_out;

input wire  [2:0]Selpin;
output reg [31:0]Outter;
always @(*) begin
    if(Selpin==3'b000)begin
        Outter=A3;
    end
    else if (Selpin==3'b001)begin
        Outter=B3+32'd4;

    end
    else if(Selpin==3'b010)begin
        Outter=C3+32'd4;
    end
    else if(Selpin==3'b011)begin
       Outter=D3;
    end
    else if(Selpin==3'b100)begin
        Outter=E3;
    end
    

 end
    
endmodule