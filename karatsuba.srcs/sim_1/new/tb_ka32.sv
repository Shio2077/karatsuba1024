
module tb_ka32;
localparam WIDTH = 32;
localparam BASENUM = 32'hFFFF_3210;
reg    clk, rst_n;
// output declaration of module ka32
reg [2*WIDTH-1:0] p;
reg [WIDTH-1:0]     a, b;
reg [2*WIDTH-1:0] expectedP;
ka32 #(
    .WIDTH 	(32  ))
u_ka32(
    .clk   	(clk    ),
    .rst_n 	(rst_n  ),
    .a     	(a      ),
    .b     	(b      ),
    .p     	(p      )
);

initial begin 
    clk = 'b0;

end
always #5 clk = ~clk;

integer i;

initial begin
    #5 rst_n    = 'b1;
    @(posedge clk);
    rst_n       =  'b0;
    #20
    rst_n       =   'b1;
    for(i = 0; i < 8; i = i+1)begin
        @(posedge clk);  
    end
    for(i = 0; i < 128; i = i+1)begin
        a = BASENUM + i;
        b = BASENUM + i;
        expectedP = a*b;
        @(posedge clk);
    end
    for(i = 0; i < 16; i = i+1)begin
        @(posedge clk);
    end
end





endmodule