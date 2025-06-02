// This module cannot be implemented on FPGA
// Module is for reference only

module ka1024 #(parameter WIDTH=1024)(
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

wire [WIDTH-1:0] ka512HiOut, ka512LoOut, ka512MidTmp;
wire [2*HALF+1:0] ka512ExtMidOut;   
ka512 ka512_inst2(clk, rst_n, aHi, bHi, ka512HiOut);
ka512 ka512_inst1(clk, rst_n, aSumD[0][HALF-1:0], bSumD[0][HALF-1:0], ka512MidTmp);
ka512 ka512_inst0(clk, rst_n, aLo, bLo, ka512LoOut);

assign ka512ExtMidOut = ((aSumD[18][HALF] &  bSumD[18][HALF]) << WIDTH)
                       + (bSumD[18][HALF] ? (aSumD[18][HALF-1:0]<<HALF):0)
                       + (aSumD[18][HALF] ? (bSumD[18][HALF-1:0]<<HALF):0)
                       + (ka512MidTmp);

reg [2*HALF+1:0]  midOut;
reg [WIDTH-1:0] ka512HiOutReg, ka512LoOutReg;
// Stg 2
always@(posedge clk or negedge rst_n) begin
  if(!rst_n)begin
      midOut          <=  'b0;
      ka512HiOutReg     <=  'b0;
      ka512LoOutReg     <=  'b0;
  end
  else begin
    midOut            <=  ka512ExtMidOut - ka512HiOut - ka512LoOut;
    ka512HiOutReg       <=  ka512HiOut;
    ka512LoOutReg       <=  ka512LoOut;
  end
end

// Stg3
always@(posedge clk or negedge rst_n) begin
  if(!rst_n)begin
    p <=  'b0;
  end
  else begin
    p <=  (ka512HiOutReg << WIDTH) + (midOut << HALF) + ka512LoOutReg;
  end
end

endmodule