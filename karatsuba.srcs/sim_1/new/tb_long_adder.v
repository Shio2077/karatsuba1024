`timescale 1ns/1ps

module tb_long_adder;


localparam  WIDTH   =   2048;

reg                 clk;
reg                 rst_n;
reg [WIDTH-1:0]     a, b;
reg                 c_in;
reg                 valid_in;

// output declaration of module long_adder
wire                [WIDTH-1:0] sum;
wire                c_out;

wide_adder #(
    .WIDTH 	(WIDTH  ))
u_wide_adder(
    .clk      	(clk       ),
    .rst_n    	(rst_n     ),
    .a        	(a         ),
    .b        	(b         ),
    .c_in     	(c_in      ),
    .valid_in 	(valid_in  ),
    .sum      	(sum       ),
    .c_out    	(c_out     )
);


initial begin
    clk = 0;
end
always #5 clk = ~clk;
reg [WIDTH-1:0] expectedSum;
reg             expectedC;
integer i, j, k;
initial begin
    rst_n   =   1'b1;
    #10;
    rst_n   =   1'b0;
    #20;
    rst_n   =   1'b1;
    #5
    @(posedge clk);
    #0.1;
    a = {64{$urandom($time)}};
    b = {64{$urandom($time)}};
    c_in = 0;
    valid_in = 1;
    expectedSum = a + b;
    @(posedge clk);
    #0.1;
    a = 0;
    b = 0;
    c_in = 0;
    valid_in = 0;
    for (i=0; i<1000; i=i+1) begin
        @(posedge clk);
        if(sum != 0) begin
            $display("expectedSum = %0h", expectedSum);
            $display("sampled Sum = %0h", sum);
        end
    end
    $finish();
end

endmodule