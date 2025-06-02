`timescale 1ns/1ps

module ka256_tb;

  // 参数
  localparam WIDTH = 256;
  localparam CYCLES_OUT = 18;
  localparam BASENUM = 256'hFFFFFFFFFFFFFFFF_FFFFFFFFFFFFFFFF_FFFFFFFFFFFFFFFF_FEDCBA9876543210;

  // 信号声明
  reg                     clk;
  reg                     rst_n;
  reg  [WIDTH-1:0]        a, b;
  wire [2*WIDTH-1:0]      p;
  reg [2*WIDTH-1:0]       expectedP[0:128];
  // 实例化被测模块
  ka256 #(
    .WIDTH(WIDTH)
  ) dut (
    .clk   (clk),
    .rst_n (rst_n),
    .a     (a),
    .b     (b),
    .p     (p)
  );


integer i, j;
reg [2*WIDTH-1:0] expected;

initial begin 
    clk = 'b0;

end
always #5 clk = ~clk;


initial begin
    #5 rst_n    = 'b1;
    @(posedge clk);
    rst_n       =  'b0;
    #20
    rst_n       =   'b1;
    for(i = 0; i < 2; i = i+1)begin
        @(posedge clk);  
    end
    for(i = 0; i < 128; i = i+1)begin
        a = BASENUM + i;
        b = BASENUM + i;
        expectedP[0] = a*b;
        for(j = 0; j < 128; j = j+1)begin
          expectedP[j+1] = expectedP[j];
        end
        @(posedge clk);
    end
    for(i = 0; i < 16; i = i+1)begin
        @(posedge clk);
    end

    // 结束仿真
    #10;
    $display("All tests completed.");
    $finish;
end

endmodule
