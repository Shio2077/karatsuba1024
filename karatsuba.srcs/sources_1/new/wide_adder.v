


module wide_adder #(parameter WIDTH = 2048)(
    input wire                  clk,
    input wire                  rst_n,
    input wire [WIDTH-1:0]      a,
    input wire [WIDTH-1:0]      b,
    input wire                  c_in,
    input wire                  valid_in,
    output reg [WIDTH-1:0]      sum,
    output reg                  c_out
);
localparam SLICED = WIDTH/32;
reg [SLICED-1:0]   aReg[1:31];
reg [SLICED-1:0]   bReg[1:31];
reg [SLICED:0]     sumD[0:31];
reg [4:0]          addCnt;
reg                addFlg;

integer i, j, k;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        addCnt      <=  'b0;
        addFlg      <=  'b0;
        sum         <=  'b0;
        c_out       <=  'b0;
        for(i=1; i<32; i=i+1)begin
            aReg[i]     <=  'b0;
            bReg[i]     <=  'b0;
        end
        for(j=0; j<32; j=j+1)begin
            sumD[j]     <=  'b0;
        end
    end
    else begin
        if(valid_in)begin
            addCnt      <=  'b0;
            addFlg      <=  'b1;
            sumD[0]     <=  a[SLICED-1:0] + b[SLICED-1:0] + c_in;
            // A storage
            aReg[1]     <=  a[2*SLICED-1:SLICED];
            aReg[2]     <=  a[3*SLICED-1:2*SLICED];
            aReg[3]     <=  a[4*SLICED-1:3*SLICED];
            aReg[4]     <=  a[5*SLICED-1:4*SLICED];
            aReg[5]     <=  a[6*SLICED-1:5*SLICED];
            aReg[6]     <=  a[7*SLICED-1:6*SLICED];
            aReg[7]     <=  a[8*SLICED-1:7*SLICED];
            aReg[8]     <=  a[9*SLICED-1:8*SLICED];
            aReg[9]     <=  a[10*SLICED-1:9*SLICED];
            aReg[10]    <=  a[11*SLICED-1:10*SLICED];
            aReg[11]    <=  a[12*SLICED-1:11*SLICED];
            aReg[12]    <=  a[13*SLICED-1:12*SLICED];
            aReg[13]    <=  a[14*SLICED-1:13*SLICED];
            aReg[14]    <=  a[15*SLICED-1:14*SLICED];
            aReg[15]    <=  a[16*SLICED-1:15*SLICED];
            aReg[16]    <=  a[17*SLICED-1:16*SLICED];
            aReg[17]    <=  a[18*SLICED-1:17*SLICED];
            aReg[18]    <=  a[19*SLICED-1:18*SLICED];
            aReg[19]    <=  a[20*SLICED-1:19*SLICED];
            aReg[20]    <=  a[21*SLICED-1:20*SLICED];
            aReg[21]    <=  a[22*SLICED-1:21*SLICED];
            aReg[22]    <=  a[23*SLICED-1:22*SLICED];
            aReg[23]    <=  a[24*SLICED-1:23*SLICED];
            aReg[24]    <=  a[25*SLICED-1:24*SLICED];
            aReg[25]    <=  a[26*SLICED-1:25*SLICED];
            aReg[26]    <=  a[27*SLICED-1:26*SLICED];
            aReg[27]    <=  a[28*SLICED-1:27*SLICED];
            aReg[28]    <=  a[29*SLICED-1:28*SLICED];
            aReg[29]    <=  a[30*SLICED-1:29*SLICED];
            aReg[30]    <=  a[31*SLICED-1:30*SLICED];
            aReg[31]    <=  a[32*SLICED-1:31*SLICED];
            // B storage
            bReg[1]     <=  b[2*SLICED-1:SLICED];
            bReg[2]     <=  b[3*SLICED-1:2*SLICED];
            bReg[3]     <=  b[4*SLICED-1:3*SLICED];
            bReg[4]     <=  b[5*SLICED-1:4*SLICED];
            bReg[5]     <=  b[6*SLICED-1:5*SLICED];
            bReg[6]     <=  b[7*SLICED-1:6*SLICED];
            bReg[7]     <=  b[8*SLICED-1:7*SLICED];
            bReg[8]     <=  b[9*SLICED-1:8*SLICED];
            bReg[9]     <=  b[10*SLICED-1:9*SLICED];
            bReg[10]    <=  b[11*SLICED-1:10*SLICED];
            bReg[11]    <=  b[12*SLICED-1:11*SLICED];
            bReg[12]    <=  b[13*SLICED-1:12*SLICED];
            bReg[13]    <=  b[14*SLICED-1:13*SLICED];
            bReg[14]    <=  b[15*SLICED-1:14*SLICED];
            bReg[15]    <=  b[16*SLICED-1:15*SLICED];
            bReg[16]    <=  b[17*SLICED-1:16*SLICED];
            bReg[17]    <=  b[18*SLICED-1:17*SLICED];
            bReg[18]    <=  b[19*SLICED-1:18*SLICED];
            bReg[19]    <=  b[20*SLICED-1:19*SLICED];
            bReg[20]    <=  b[21*SLICED-1:20*SLICED];
            bReg[21]    <=  b[22*SLICED-1:21*SLICED];
            bReg[22]    <=  b[23*SLICED-1:22*SLICED];
            bReg[23]    <=  b[24*SLICED-1:23*SLICED];
            bReg[24]    <=  b[25*SLICED-1:24*SLICED];
            bReg[25]    <=  b[26*SLICED-1:25*SLICED];
            bReg[26]    <=  b[27*SLICED-1:26*SLICED];
            bReg[27]    <=  b[28*SLICED-1:27*SLICED];
            bReg[28]    <=  b[29*SLICED-1:28*SLICED];
            bReg[29]    <=  b[30*SLICED-1:29*SLICED];
            bReg[30]    <=  b[31*SLICED-1:30*SLICED];
            bReg[31]    <=  b[32*SLICED-1:31*SLICED];
        end
        else if(addFlg) begin
            sumD[1]     <=  aReg[1] + bReg[1] + sumD[0][SLICED];
            sumD[2]     <=  aReg[2] + bReg[2] + sumD[1][SLICED];
            sumD[3]     <=  aReg[3] + bReg[3] + sumD[2][SLICED];
            sumD[4]     <=  aReg[4] + bReg[4] + sumD[3][SLICED];
            sumD[5]     <=  aReg[5] + bReg[5] + sumD[4][SLICED];
            sumD[6]     <=  aReg[6] + bReg[6] + sumD[5][SLICED];
            sumD[7]     <=  aReg[7] + bReg[7] + sumD[6][SLICED];
            sumD[8]     <=  aReg[8] + bReg[8] + sumD[7][SLICED];
            sumD[9]     <=  aReg[9] + bReg[9] + sumD[8][SLICED];
            sumD[10]    <=  aReg[10] + bReg[10] + sumD[9][SLICED];
            sumD[11]    <=  aReg[11] + bReg[11] + sumD[10][SLICED];
            sumD[12]    <=  aReg[12] + bReg[12] + sumD[11][SLICED];
            sumD[13]    <=  aReg[13] + bReg[13] + sumD[12][SLICED];
            sumD[14]    <=  aReg[14] + bReg[14] + sumD[13][SLICED];
            sumD[15]    <=  aReg[15] + bReg[15] + sumD[14][SLICED];
            sumD[16]    <=  aReg[16] + bReg[16] + sumD[15][SLICED];
            sumD[17]    <=  aReg[17] + bReg[17] + sumD[16][SLICED];
            sumD[18]    <=  aReg[18] + bReg[18] + sumD[17][SLICED];
            sumD[19]    <=  aReg[19] + bReg[19] + sumD[18][SLICED];
            sumD[20]    <=  aReg[20] + bReg[20] + sumD[19][SLICED];
            sumD[21]    <=  aReg[21] + bReg[21] + sumD[20][SLICED];
            sumD[22]    <=  aReg[22] + bReg[22] + sumD[21][SLICED];
            sumD[23]    <=  aReg[23] + bReg[23] + sumD[22][SLICED];
            sumD[24]    <=  aReg[24] + bReg[24] + sumD[23][SLICED];
            sumD[25]    <=  aReg[25] + bReg[25] + sumD[24][SLICED];
            sumD[26]    <=  aReg[26] + bReg[26] + sumD[25][SLICED];
            sumD[27]    <=  aReg[27] + bReg[27] + sumD[26][SLICED];
            sumD[28]    <=  aReg[28] + bReg[28] + sumD[27][SLICED];
            sumD[29]    <=  aReg[29] + bReg[29] + sumD[28][SLICED];
            sumD[30]    <=  aReg[30] + bReg[30] + sumD[29][SLICED];
            sumD[31]    <=  aReg[31] + bReg[31] + sumD[30][SLICED];
            if(addCnt == 'd31) begin //(addCnt == 3'd7) begin
                addCnt  <=  'b0;
                addFlg  <=  'b0;
                sum     <=    {
                                sumD[31][SLICED-1:0],
                                sumD[30][SLICED-1:0],
                                sumD[29][SLICED-1:0],
                                sumD[28][SLICED-1:0],
                                sumD[27][SLICED-1:0],
                                sumD[26][SLICED-1:0],
                                sumD[25][SLICED-1:0],
                                sumD[24][SLICED-1:0],
                                sumD[23][SLICED-1:0],
                                sumD[22][SLICED-1:0],
                                sumD[21][SLICED-1:0],
                                sumD[20][SLICED-1:0],
                                sumD[19][SLICED-1:0],
                                sumD[18][SLICED-1:0],
                                sumD[17][SLICED-1:0],
                                sumD[16][SLICED-1:0],
                                sumD[15][SLICED-1:0],
                                sumD[14][SLICED-1:0],
                                sumD[13][SLICED-1:0],
                                sumD[12][SLICED-1:0],
                                sumD[11][SLICED-1:0],
                                sumD[10][SLICED-1:0],
                                sumD[9][SLICED-1:0],
                                sumD[8][SLICED-1:0],
                                sumD[7][SLICED-1:0],
                                sumD[6][SLICED-1:0],
                                sumD[5][SLICED-1:0],
                                sumD[4][SLICED-1:0],
                                sumD[3][SLICED-1:0],
                                sumD[2][SLICED-1:0],
                                sumD[1][SLICED-1:0],
                                sumD[0][SLICED-1:0]
                               };
                c_out   <=  sumD[31][SLICED];
            end
            else begin
                addCnt  <=   addCnt + 'b1;
            end
        end
        else begin
            addCnt  <=  'b0; 
            sum     <=  'b0;
            c_out   <=  'b0;
        end
    end
end

endmodule