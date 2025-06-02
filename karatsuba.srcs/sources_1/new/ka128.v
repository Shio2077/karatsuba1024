module ka128 #(parameter WIDTH=128)(
  input wire clk,
  input wire rst_n,
  input wire [WIDTH-1:0]        a,
  input wire [WIDTH-1:0]        b,
  output reg [2*WIDTH-1:0]        p
);

localparam HALF = WIDTH/2;
localparam DELAY = 24;
reg [HALF-1:0]  aHi, aLo, bHi, bLo;
reg [HALF:0]  aSum, bSum;
reg [HALF:0] aSumD [0:DELAY];
reg [HALF:0] bSumD [0:DELAY];
integer i, j;

// Stg 1
always@(posedge clk or negedge rst_n) begin
  if(!rst_n) begin
    aHi <=  'b0;
    aLo <=  'b0;
    bHi <=  'b0;
    bLo <=  'b0;
    for (i = 0; i <= DELAY; i = i + 1) begin
      aSumD[i] <= 'b0;
      bSumD[i] <= 'b0;
    end
  end
  else begin
    aHi <=  a[WIDTH-1:HALF];
    aLo <=  a[HALF-1:0];
    bHi <=  b[WIDTH-1:HALF];
    bLo <=  b[HALF-1:0];
    aSumD[0] <= a[WIDTH-1:HALF] + a[HALF-1:0];
    bSumD[0] <= b[WIDTH-1:HALF] + b[HALF-1:0];
    for(j = 1; j <= DELAY; j = j + 1) begin
      aSumD[j] <= aSumD[j-1];
      bSumD[j] <= bSumD[j-1];
    end 
  end
end

wire [WIDTH-1:0] ka64HiOut, ka64LoOut, ka64MidTmp;
wire [2*HALF+1:0] ka64ExtMidOut;   
ka64 ka64_inst2(clk, rst_n, aHi, bHi, ka64HiOut);
ka64 ka64_inst1(clk, rst_n, aSumD[0][HALF-1:0], bSumD[0][HALF-1:0], ka64MidTmp);
ka64 ka64_inst0(clk, rst_n, aLo, bLo, ka64LoOut);

assign ka64ExtMidOut = ((aSumD[9][HALF] &  bSumD[9][HALF]) << WIDTH)
                      + (bSumD[9][HALF] ? (aSumD[9][HALF-1:0]<<HALF):0)
                      + (aSumD[9][HALF] ? (bSumD[9][HALF-1:0]<<HALF):0)
                      + (ka64MidTmp);

reg [2*HALF+1:0]  midOut;
reg [WIDTH-1:0] ka64HiOutReg, ka64LoOutReg;
// Stg 2
always@(posedge clk or negedge rst_n) begin
  if(!rst_n)begin
      midOut          <=  'b0;
      ka64HiOutReg     <=  'b0;
      ka64LoOutReg     <=  'b0;
  end
  else begin
    midOut            <=  ka64ExtMidOut - ka64HiOut - ka64LoOut;
    ka64HiOutReg       <=  ka64HiOut;
    ka64LoOutReg       <=  ka64LoOut;
  end
end

// Stg3
always@(posedge clk or negedge rst_n) begin
  if(!rst_n)begin
    p <=  'b0;
  end
  else begin
    p <=  (ka64HiOutReg << WIDTH) + (midOut << HALF) + ka64LoOutReg;
  end
end

endmodule