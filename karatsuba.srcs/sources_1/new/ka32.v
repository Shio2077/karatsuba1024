// karatsuba 32 bit multiplier, use DSP macro.
module ka32 #(parameter WIDTH=32)(
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

wire [WIDTH-1:0] ka16HiOut, ka16LoOut, ka16MidTmp;
wire [2*HALF+1:0] ka16ExtMidOut;   
wire [42:0] dspLoP, dspMidP, dspHiP;

dsp_macro multLow (
  .CLK(clk),  // input wire CLK
  .SCLR(!rst_n),
  .A({9'b0, aLo}),      // input wire [15 : 0] A
  .B({2'b0, bLo}),      // input wire [15 : 0] B
  .P(dspLoP)      // output wire [31 : 0] P
);
dsp_macro multMid (
  .CLK(clk),  // input wire CLK
  .SCLR(!rst_n),
  .A({9'b0, aSumD[0][HALF-1:0]}),      // input wire [15 : 0] A
  .B({2'b0, bSumD[0][HALF-1:0]}),      // input wire [15 : 0] B
  .P(dspMidP)      // output wire [31 : 0] P
);
dsp_macro multHi (
  .CLK(clk),  // input wire CLK
  .SCLR(!rst_n),
  .A({9'b0, aHi}),      // input wire [15 : 0] A
  .B({2'b0, bHi}),      // input wire [15 : 0] B
  .P(dspHiP)      // output wire [31 : 0] P
);

assign ka16MidTmp = dspMidP[31:0];
assign ka16HiOut = dspHiP[31:0];
assign ka16LoOut = dspLoP[31:0];

assign ka16ExtMidOut = ((aSumD[3][HALF] &  bSumD[3][HALF]) << WIDTH)
                      + (bSumD[3][HALF] ? (aSumD[3][HALF-1:0]<<HALF):0)
                      + (aSumD[3][HALF] ? (bSumD[3][HALF-1:0]<<HALF):0)
                      + (ka16MidTmp);

reg [2*HALF+1:0]  midOut;
reg [WIDTH-1:0] ka16HiOutReg, ka16LoOutReg;
// Stg 2
always@(posedge clk or negedge rst_n) begin
  if(!rst_n)begin
      midOut          <=  'b0;
      ka16HiOutReg     <=  'b0;
      ka16LoOutReg     <=  'b0;
  end
  else begin
    midOut            <=  ka16ExtMidOut - ka16HiOut - ka16LoOut;
    ka16HiOutReg       <=  ka16HiOut;
    ka16LoOutReg       <=  ka16LoOut;
  end
end

// Stg3
always@(posedge clk or negedge rst_n) begin
  if(!rst_n)begin
    p <=  'b0;
  end
  else begin
    p <=  (ka16HiOutReg << WIDTH) + (midOut << HALF) + ka16LoOutReg;
  end
end

endmodule

// Commented code below is karatsuba 32 bit module, which do not use DSP macro.
/*
module ka32 #(parameter WIDTH=32)(
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

wire [WIDTH-1:0] ka16HiOut, ka16LoOut, ka16MidTmp;
wire [2*HALF+1:0] ka16ExtMidOut;   
ka16 ka16_inst2(clk, rst_n, aHi, bHi, ka16HiOut);
ka16 ka16_inst1(clk, rst_n, aSumD[0][HALF-1:0], bSumD[0][HALF-1:0], ka16MidTmp);
ka16 ka16_inst0(clk, rst_n, aLo, bLo, ka16LoOut);

assign ka16ExtMidOut = ((aSumD[6][HALF] &  bSumD[6][HALF]) << WIDTH)
                     + (bSumD[6][HALF] ? (aSumD[6][HALF-1:0]<<HALF):0)
                     + (aSumD[6][HALF] ? (bSumD[6][HALF-1:0]<<HALF):0)
                     + (ka16MidTmp);

reg [2*HALF+1:0]  midOut;
reg [WIDTH-1:0] ka16HiOutReg, ka16LoOutReg;
// Stg 2
always@(posedge clk or negedge rst_n) begin
  if(!rst_n)begin
      midOut          <=  'b0;
      ka16HiOutReg     <=  'b0;
      ka16LoOutReg     <=  'b0;
  end
  else begin
    midOut            <=  ka16ExtMidOut - ka16HiOut - ka16LoOut;
    ka16HiOutReg       <=  ka16HiOut;
    ka16LoOutReg       <=  ka16LoOut;
  end
end

// Stg3
always@(posedge clk or negedge rst_n) begin
  if(!rst_n)begin
    p <=  'b0;
  end
  else begin
    p <=  (ka16HiOutReg << WIDTH) + (midOut << HALF) + ka16LoOutReg;
  end
end

endmodule
*/