module pc (
    input wire clk,
    input wire rst,
    input wire branchsig,
    input wire bnch1,
    input wire jr,
    input wire j,
    input wire aui,
    input wire[7:0] alu,
    input wire [31:0]address_in,
    output reg [31:0]address_out
    
);

always @(posedge clk or negedge rst) begin
    if(!rst)begin
        address_out <= 0;
    end
    else if(branchsig || bnch1)
    begin
        address_out=alu;
    end
   else if (jr==1'b1)begin
    address_out=alu;

    end
    else if(j==1'b1)begin
        address_out=alu;
    end
    else if(aui==1'b1)begin
        address_out=alu; 
    end
    else begin
        address_out <= address_out + 32'd4;
    end
end
endmodule