// 1024 bit multiplier, but this module is unrealistic to implemented on FPGA
// Module is for reference only

module kaReduced #(parameter WIDTH = 1024)(
    input wire                  clk,
    input wire                  rst_n,
    input wire                  valid_i,
    input wire [WIDTH-1:0]      a,
    input wire [WIDTH-1:0]      b,
    output wire                 ready_o,
    output wire                 p_valid,
    output wire[2*WIDTH-1:0]    p
);

localparam QUART    =   WIDTH/4;
localparam HALF     =   WIDTH/2;

wire [QUART-1:0]    ka256a, ka256b;
wire [HALF-1:0]     kaP;
reg [QUART-1:0]    ka256aReg, ka256bReg;

reg                 kValid;
reg [3:0]           kaPushCnt;
reg                 kaPushFin;
reg [QUART-1:0]     kaA[0:3];
reg [QUART-1:0]     kaB[0:3];


// ready counter 
reg                 rdyFlg;
reg                 busyFlg;
reg [7:0]           rdyCnt;
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
        else if(busyFlg && rdyCnt != 'd153)begin
            rdyCnt  <=  rdyCnt + 'b1;
        end
        else if(busyFlg && rdyCnt == 'd153)begin
            rdyFlg  <=  1'b1;
            busyFlg <=  'b0;
        end
    end
end


integer i, j;
// Push A,B into ka256 multiplier
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        kValid      <=  'b0;
        kaPushCnt   <=  'b0;
        kaPushFin   <=  'b1;
        ka256aReg   <=  'b0;
        ka256bReg   <=  'b0;
        for(i = 0; i < 4; i = i+1)begin
            kaA[i] <= 'b0;
            kaB[i] <= 'b0;
        end
    end
    else begin
        if(valid_i)begin
            kaA[0]      <=   a[255:0];
            kaB[0]      <=   b[255:0];
            kaA[1]      <=   a[511:256];
            kaB[1]      <=   b[511:256];
            kaA[2]      <=   a[767:512];
            kaB[2]      <=   b[767:512];
            kaA[3]      <=   a[1023:768];
            kaB[3]      <=   b[1023:768];
            kValid      <=   1'b1;
            kaPushFin   <=   1'b0;
            kaPushCnt   <=   4'b0;
        end
        else if(!kaPushFin) begin
            if(kaPushCnt == 4'd15) begin
                kaPushCnt   <=  4'b0;
                kaPushFin   <=  1'b1;
            end
            else
                kaPushCnt   <=  kaPushCnt + 1'b1;
            ka256aReg   <=  kaA[kaPushCnt[1:0]];
            ka256bReg   <=  kaB[kaPushCnt[3:2]];
        end
        else
            kValid      <=  1'b0;
    end
end

assign ka256a = kValid ? ka256aReg : 256'b0;
assign ka256b = kValid ? ka256bReg : 256'b0;


ka256 #(
    .WIDTH 	(QUART  ))
u_ka256(
    .clk   	(clk    ),
    .rst_n 	(rst_n  ),
    .a     	(ka256a      ),
    .b     	(ka256b      ),
    .p     	(kaP      )
);

// Get ka256-P output
reg [2*WIDTH-1:0]       pSum;
reg                     pGetFlg;
reg [3:0]               kaPopCnt; // 0~15
reg                     kaPopFin;
reg [2*WIDTH-1:0]       kaPSft;
reg [2*WIDTH-1:0]       kaPSftReg[0:15];

always @* begin
    case(kaPopCnt[3:2]+kaPopCnt[1:0])
    0:  kaPSft  =   {1536'b0, kaP};
    1:  kaPSft  =   {1280'b0, kaP, 256'b0};
    2:  kaPSft  =   {1024'b0, kaP, 512'b0};
    3:  kaPSft  =   {768'b0, kaP, 768'b0};
    4:  kaPSft  =   {512'b0, kaP, 1024'b0};
    5:  kaPSft  =   {256'b0, kaP, 1280'b0};
    6:  kaPSft  =   {kaP, 1536'b0};
    endcase
end

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        pGetFlg     <=      'b0;
        kaPopCnt    <=      'b0;
        kaPopFin    <=      'b0;
        for (j=0; j<16; j=j+1)begin
            kaPSftReg[j]    <=  'b0;
        end
    end
    else begin
        if(kaPushCnt == 5'd15) begin
            pGetFlg     <=      'b1;
        end
        if(pGetFlg) begin
            if(kaPopCnt == 4'd15)begin
                kaPopCnt    <=  4'd0;
                pGetFlg     <=  1'b0;
                kaPopFin    <=  1'b1;
            end
            else begin
                kaPopCnt    <=  kaPopCnt + 1'b1;
                kaPopFin    <=  1'b0;
            end
            kaPSftReg[kaPopCnt]   <=  kaPSft;
        end
        else begin
            kaPopCnt    <=  'b0;
            kaPopFin    <=  'b0;
        end
    end
end

reg                 addFlg;
reg [3:0]           addCnt;
reg [3:0]           addIdx;
reg [2*WIDTH-1:0]   adderA;
reg [2*WIDTH-1:0]   adderB;
reg                 addValid;
wire[2*WIDTH-1:0]   sum;
reg [2*WIDTH-1:0]   pReg;

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
    end
    else begin
        if(pGetFlg)begin
            addFlg  <=  'b1;
        end
        if(addFlg&&(addCnt != 'd9))begin
            addCnt  <=  addCnt + 'b1;
        end
        // if addIdx == 15, add finished
        if(addCnt == 'd9 && addIdx != 'd15)begin
            addCnt  <=  'd0;
            addIdx  <=  addIdx + 'b1;
        end
        else if(addCnt == 'd0 && addIdx == 'd15)begin
            addCnt  <=  'd0;
            addIdx  <=  'd0;
            addFlg  <=  'd0;
        end
    end
end

reg pValid;
assign p_valid = pValid;

always@(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        pReg        <=  'b0;
        adderA      <=  'b0;
        adderB      <=  'b0;
        addValid    <=  'b0;
        pValid      <=  'b0;
        pReg        <=  'b0;
    end
    else begin
        // add first cycle condition
        if(addFlg && addCnt == 0 && addIdx == 0) begin
            adderA      <=  kaPSftReg[0];
            adderB      <=  kaPSft;
            //$display("adderA[cycle0]==%0h", kaPSftReg[0]);
            //$display("adderB[cycle0]==%0h", kaPSft);
            addValid    <=  'b1;
        end
        // add process end condition
        else if(addFlg && addCnt == 0 && addIdx == 'd15)begin
            adderA      <=  'b0;
            adderB      <=  'b0;
            addValid    <=  'b0;
            pValid      <=  'b1;
            pReg        <=  sum;
            //for(i=0; i<16; i=i+1)begin
            //    $display("kaPSftReg[%0d]=%0h", i, kaPSftReg[i]);
            //end
        end
        // add middle cycle condition
        else if(addFlg && addCnt == 0)begin
            adderA      <=  sum;
            adderB      <=  kaPSftReg[addIdx + 'b1];
            //$display("adderB[addIdx[%0d]]=%0h", addIdx, kaPSftReg[addIdx]);
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