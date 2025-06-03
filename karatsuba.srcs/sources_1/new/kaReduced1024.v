// 1024 bit multiplier
// achieved by karatsuba 128 bit multiplier 

module kaReduced1024 #(parameter WIDTH = 1024)(
    input wire                  clk,
    input wire                  rst_n,
    input wire                  valid_i,
    input wire [WIDTH-1:0]      a,
    input wire [WIDTH-1:0]      b,
    output wire                 ready_o,
    output wire                 p_valid,
    output wire[2*WIDTH-1:0]    p
);

localparam HQUAR    =   WIDTH/8;
localparam HALF     =   WIDTH/2;

wire [HQUAR-1:0]    ka128a, ka128b;
reg  [HQUAR-1:0]    ka128aReg, ka128bReg;

reg                 kValid;
reg [5:0]           kaPushCnt;
reg                 kaPushFin;
reg [HQUAR-1:0]     kaA[0:7];
reg [HQUAR-1:0]     kaB[0:7];


// ready counter 
reg                 rdyFlg;
reg                 busyFlg;
reg [11:0]          rdyCnt;
assign ready_o = rdyFlg;
always@(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        rdyCnt      <=  'b0;
        busyFlg     <=  'b0;
        rdyFlg      <=  'b1;
    end
    else begin
        if(valid_i)begin
            busyFlg <=  valid_i;
            rdyCnt  <=  'b0;
            rdyFlg  <=  'b0;
        end
        else if(busyFlg && rdyCnt != 'd2210)begin
            rdyCnt  <=  rdyCnt + 'b1;
        end
        else if(busyFlg && rdyCnt == 'd2210)begin
            rdyFlg  <=  1'b1;
            busyFlg <=  'b0;
        end
    end
end


integer i, j;
// Push A,B into ka128 multiplier
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        kValid      <=  'b0;
        kaPushCnt   <=  'b0;
        kaPushFin   <=  'b1;
        ka128aReg   <=  'b0;
        ka128bReg   <=  'b0;
        for(i = 0; i < 8; i = i+1)begin
            kaA[i] <= 'b0;
            kaB[i] <= 'b0;
        end
    end
    else begin
        if(valid_i)begin
            kaA[0]      <=   a[127:0];
            kaB[0]      <=   b[127:0];
            kaA[1]      <=   a[255:128];
            kaB[1]      <=   b[255:128];
            kaA[2]      <=   a[383:256];
            kaB[2]      <=   b[383:256];
            kaA[3]      <=   a[511:384];
            kaB[3]      <=   b[511:384];
            kaA[4]      <=   a[639:512];
            kaB[4]      <=   b[639:512];
            kaA[5]      <=   a[767:640];
            kaB[5]      <=   b[767:640];
            kaA[6]      <=   a[895:768];
            kaB[6]      <=   b[895:768];
            kaA[7]      <=   a[1023:896];
            kaB[7]      <=   b[1023:896];
            kValid      <=   1'b1;
            kaPushFin   <=   1'b0;
            kaPushCnt   <=   4'b0;
        end
        else if(!kaPushFin) begin
            if(kaPushCnt == 'd63) begin
                kaPushCnt   <=  4'b0;
                kaPushFin   <=  1'b1;
            end
            else
                kaPushCnt   <=  kaPushCnt + 1'b1;
            ka128aReg   <=  kaA[kaPushCnt[2:0]];
            ka128bReg   <=  kaB[kaPushCnt[5:3]];
        end
        else
            kValid      <=  1'b0;
    end
end

assign ka128a = kValid ? ka128aReg : 'b0;
assign ka128b = kValid ? ka128bReg : 'b0;

// Get ka128-P output
reg                     pGetFlg;
reg [5:0]               kaPopCnt;
reg                     kaPopFin;
reg [2*WIDTH-1:0]       kaPSft;
reg [2*WIDTH-1:0]       kaPSftReg;
wire [2*HQUAR-1:0]      kaP, kaPOut;
reg [2*HQUAR-1:0]       kaPRegD1;

reg                     addFlg;
reg [5:0]               addCnt;
reg [6:0]               addIdx;
wire [6:0]              addIdxFix, addSftIdx;
reg [2*WIDTH-1:0]       adderA;
reg [2*WIDTH-1:0]       adderB;
reg                     addValid;
wire[2*WIDTH-1:0]       sum;
reg [2*WIDTH-1:0]       pReg;
reg [2:0]               enb;
reg                     pValid;

assign      p_valid = pValid;
assign      addIdxFix = addIdx + 'd2;
assign      addSftIdx = addIdx + 'd1;

ka128 #(
    .WIDTH 	(HQUAR  ))
u_ka128(
    .clk   	(clk    ),
    .rst_n 	(rst_n  ),
    .a     	(ka128a      ),
    .b     	(ka128b      ),
    .p     	(kaP      )
);

blk_mem_gen_0 u_blkram(
     .clka  (clk)
    ,.wea   (pGetFlg)
    ,.addra (kaPopCnt)
    ,.dina  (kaP)
    ,.clkb  (clk)
    ,.enb   (enb[0]||enb[1]||enb[2])
    ,.addrb (addIdxFix)
    ,.doutb (kaPOut)
);

always @* begin
    case(addSftIdx[5:3]+addSftIdx[2:0])
    0:  kaPSft  =   {1792'b0, kaPOut         };
    1:  kaPSft  =   {1664'b0, kaPOut, 128'b0 };
    2:  kaPSft  =   {1536'b0, kaPOut, 256'b0 };
    3:  kaPSft  =   {1408'b0, kaPOut, 384'b0 };
    4:  kaPSft  =   {1280'b0, kaPOut, 512'b0 };
    5:  kaPSft  =   {1152'b0, kaPOut, 640'b0 };
    6:  kaPSft  =   {1024'b0, kaPOut, 768'b0 };
    7:  kaPSft  =   {896'b0,  kaPOut, 896'b0 };
    8:  kaPSft  =   {768'b0,  kaPOut, 1024'b0};
    9:  kaPSft  =   {640'b0,  kaPOut, 1152'b0};
    10: kaPSft  =   {512'b0,  kaPOut, 1280'b0};
    11: kaPSft  =   {384'b0,  kaPOut, 1408'b0};
    12: kaPSft  =   {256'b0,  kaPOut, 1536'b0};
    13: kaPSft  =   {128'b0,  kaPOut, 1664'b0};
    14: kaPSft  =   {         kaPOut, 1792'b0};
    default: 
        kaPSft  =   'b0;
    endcase
end

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        pGetFlg     <=      'b0;
        kaPopCnt    <=      'b0;
        kaPopFin    <=      'b0;
    end
    else begin
        if(kaPushCnt == 'd12) begin
            pGetFlg     <=      'b1;
        end
        if(pGetFlg) begin
            if(kaPopCnt == 'd63)begin
                kaPopCnt    <=  4'd0;
                pGetFlg     <=  1'b0;
                kaPopFin    <=  1'b1;
            end
            else begin
                kaPopCnt    <=  kaPopCnt + 1'b1;
                kaPopFin    <=  1'b0;
            end
        end
        else begin
            kaPopCnt    <=  'b0;
            kaPopFin    <=  'b0;
        end
    end
end



wide_adder #(.WIDTH(2*WIDTH))
u_adder (
     .clk       (clk        )
    ,.rst_n     (rst_n      )
    ,.a         (adderA     )
    ,.b         (adderB     )
    ,.c_in      ('b0        )
    ,.valid_in  (addValid   )
    ,.sum       (sum        )
    ,.c_out     (           )
);


always@(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        addCnt      <=  'b0;
        addIdx      <=  'b0;
        addFlg      <=  'b0;
        enb         <=  'b0;
    end
    else begin
        if(pGetFlg)begin
            addFlg  <=  'b1;
        end
        if(addFlg && addCnt != 'd33)begin
            addCnt  <=  addCnt + 'b1;
        end
        // enable bram before read it
        if(addFlg && addCnt == 'd30)begin
            enb[0]  <=  'b1;
        end
        else begin
            enb[0]  <=  'b0;
        end
        // if addIdx == 15, add finished
        if(addCnt == 'd33 && addIdx != 'd63)begin
            addCnt  <=  'd0;
            addIdx  <=  addIdx + 'b1;
        end
        else if(addCnt == 'd0 && addIdx == 'd63)begin
            addCnt  <=  'd0;
            addIdx  <=  'd0;
            addFlg  <=  'd0;
        end
    end
end

// Bram enb control
always@(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        enb[1]  <=  'b0;
        enb[2]  <=  'b0;
        kaPRegD1<=  'b0;
    end
    else begin
        enb[1]  <=  enb[0];
        enb[2]  <=  enb[1];
        kaPRegD1<=  kaP;
    end
end

// Input number into wide adder
always@(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        pReg        <=  'b0;
        adderA      <=  'b0;
        adderB      <=  'b0;
        addValid    <=  'b0;
        pValid      <=  'b0;
    end
    else begin
        // add first cycle condition
        if(addFlg && addCnt == 0 && addIdx == 0) begin
            adderA      <=  {1664'b0, kaP, 128'b0};
            adderB      <=  {1792'b0, kaPRegD1};
            addValid    <=  'b1;
        end
        // add process end condition
        else if(addFlg && addCnt == 0 && addIdx == 'd63)begin
            adderA      <=  'b0;
            adderB      <=  'b0;
            addValid    <=  'b0;
            pValid      <=  'b1;
            pReg        <=  sum;
        end
        // add middle cycle condition
        else if(addFlg && addCnt == 0)begin
            adderA      <=  sum;
            adderB      <=  kaPSft;
            addValid    <=  'b1;
        end
        else begin
            addValid    <=  'b0;
            adderA      <=  'b0;
            adderB      <=  'b0;
            pValid      <=  'b0;
            pReg        <=  'b0;
        end
    end
end

assign p = pValid ? pReg:2048'b0;


endmodule