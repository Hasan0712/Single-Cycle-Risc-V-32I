module register(rs1addr,rs2addr,rdaddr,clk,enable,reset,data,opa,opb);
input wire [4:0]rs1addr;
input wire [4:0]rs2addr;
input wire [31:0]data;
input wire [4:0]rdaddr;
input wire clk;
input wire enable;
input wire reset;

output wire [31:0] opa;
output wire [31:0] opb;
reg [31:0]rd[31:0];
integer i;
always @(posedge clk or negedge reset)begin
    
    if(!reset)begin
    for(i=0;i<=31;i++)begin
    
rd[rdaddr]<=32'b0;
    end 
    end
    else if(enable) begin 
        rd[rdaddr]<= data;

    end
end                                                                                                                                                                                     


 assign opa=(rs1addr !=0)?rd[rs1addr]:0;
 assign opb=(rs2addr !=0)?rd[rs2addr]:0;





endmodule
/*module registerfile (
    input wire clk,
    input wire rst,
    input wire en,
    input wire [4:0]rs1,
    input wire [4:0]rs2,
    input wire [4:0]rd,
    input wire [31:0]data,

    output wire [31:0]op_a,
    output wire [31:0]op_b
);

reg [31:0] register[31:1];
integer i;

always @(posedge clk or negedge rst) begin
    if(!rst)begin
        for (i=0; i<32; i++) begin
            register[i] <= 32'b0;
        end
    end
    else if(en)begin
        register[rd] <= data;
    end
end

assign op_a = (rs1 != 0)? register[rs1] : 0;
assign op_b = (rs2 != 0)? register[rs2] : 0;

endmodule*/