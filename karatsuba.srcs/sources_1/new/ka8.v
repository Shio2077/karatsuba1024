// karatsuba 8 bit multiplier

module ka4 #(parameter WIDTH=4)(
  input wire clk,
  input wire rst_n,
  input wire [WIDTH-1:0]       a,
  input wire [WIDTH-1:0]       b,
  output wire [2*WIDTH-1:0]      p
);

  assign p = a*b;

endmodule

module ka8 #(parameter WIDTH=8)(
  input wire clk,
  input wire rst_n,
  input wire [WIDTH-1:0]        a,
  input wire [WIDTH-1:0]        b,
  output reg [2*WIDTH-1:0]        p
);

localparam HALF = WIDTH/2;
reg [HALF-1:0]  aHi, aLo, bHi, bLo;
reg [HALF:0]  aSum, bSum;
reg [HALF:0] aSumS2, bSumS2;
reg [HALF:0] aSumS3, bSumS3;
reg [HALF:0] aSumS4, bSumS4;

// Stg 1
always@(posedge clk or negedge rst_n) begin
  if(!rst_n) begin
    aHi <=  'b0;
    aLo <=  'b0;
    bHi <=  'b0;
    bLo <=  'b0;
    aSum <= 'b0;
    bSum <= 'b0;
    aSumS2          <=  'b0;
    bSumS2          <=  'b0;
    aSumS3          <=  'b0;
    bSumS3          <=  'b0;
    aSumS4          <=  'b0;
    bSumS4          <=  'b0;
  end
  else begin
    aHi <=  a[WIDTH-1:HALF];
    aLo <=  a[HALF-1:0];
    bHi <=  b[WIDTH-1:HALF];
    bLo <=  b[HALF-1:0];
    aSum <= a[WIDTH-1:HALF] + a[HALF-1:0];
    bSum <= b[WIDTH-1:HALF] + b[HALF-1:0];
    aSumS2            <=  aSum;
    bSumS2            <=  bSum;
    aSumS3            <=  aSumS2;
    bSumS3            <=  bSumS2;
    aSumS4            <=  aSumS3;
    bSumS4            <=  bSumS3;
  end
end

wire [WIDTH-1:0] ka4HiOut, ka4LoOut, ka4MidTmp;
wire [2*HALF+1:0] ka4ExtMidOut;   
ka4 ka4_inst2(clk, rst_n, aHi, bHi, ka4HiOut);
ka4 ka4_inst1(clk, rst_n, aSum[HALF-1:0], bSum[HALF-1:0], ka4MidTmp);
ka4 ka4_inst0(clk, rst_n, aLo, bLo, ka4LoOut);

wire [2*HALF+1:0] tmp0;
wire [2*HALF+1:0] tmp1;
wire [2*HALF+1:0] tmp2;
assign tmp0 = bSum[HALF] ? (aSum[HALF-1:0]<<HALF):0;
assign tmp1 = aSum[HALF] ? (bSum[HALF-1:0]<<HALF):0;
assign tmp2 = (aSum[HALF] &  bSum[HALF]) << WIDTH;

assign ka4ExtMidOut = tmp0 + tmp1 + tmp2 + ka4MidTmp;

reg [2*HALF+1:0]  midOut;
reg [WIDTH-1:0] ka4HiOutReg, ka4LoOutReg;
// Stg 2
always@(posedge clk or negedge rst_n) begin
  if(!rst_n)begin
      midOut          <=  'b0;
      ka4HiOutReg     <=  'b0;
      ka4LoOutReg     <=  'b0;
  end
  else begin
    midOut            <=  ka4ExtMidOut - ka4HiOut - ka4LoOut;
    ka4HiOutReg       <=  ka4HiOut;
    ka4LoOutReg       <=  ka4LoOut;
  end
end

// Stg3
always@(posedge clk or negedge rst_n) begin
  if(!rst_n)begin
    p <=  'b0;
  end
  else begin
    p <=  (ka4HiOutReg << WIDTH) + (midOut << HALF) + ka4LoOutReg;
  end
end

endmodule