
module kaExt #(parameter WIDTH = 1024)(
    input wire                  clk,
    input wire                  rst_n,
    input wire                  valid_i,
    input wire [WIDTH-1:0]      a,
    input wire [WIDTH-1:0]      b,
    output wire                 ready_o,
    output reg                  p_valid,
    output wire[2*WIDTH-1:0]    p
);

localparam  IDLE    =   2'b00;
localparam  PIPL    =   2'b01;
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

assign  ready_o = kaPushFin;

// Debug counter 
reg [7:0]           debugCnt;
reg                 debugFlg;
always@(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        debugCnt    <=  'b0;
        debugFlg    <=  'b0;
    end
    else begin
        if(valid_i)begin
            debugFlg <= 'b1;
            debugCnt    <=  debugCnt + 'b1;
        end
        else if(debugFlg)begin
            debugCnt    <=  debugCnt + 'b1;
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
        //pSum        <=      'b0;
        pGetFlg     <=      'b0;
        kaPopCnt    <=      'b0;
        kaPopFin    <=      'b0;
        //p_valid     <=      'b0;
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
                //p_valid     <=  1'b1;
            end
            else begin
                kaPopCnt    <=  kaPopCnt + 1'b1;
                kaPopFin    <=  1'b0;
            end
            kaPSftReg[kaPopCnt]   <=  kaPSft;
        end
        else begin
            //pSum        <=  'b0;
            kaPopCnt    <=  'b0;
            kaPopFin    <=  'b0;
            //p_valid     <=  1'b0;
        end
    end
end

reg                 addFlg[0:3];
reg [3:0]           addCnt[0:3];
reg [2*WIDTH-1:0]   adderA[0:15];
reg [2*WIDTH-1:0]   adderB[0:15];
reg                 addValid[0:15];
wire[2*WIDTH-1:0]   sum[0:15];

genvar k;
generate
    for(k=0; k<15; k=k+1)begin
        wide_adder #(
            .WIDTH 	(2*WIDTH  ))
        u_wide_adder(
            .clk      	(clk       ),
            .rst_n    	(rst_n     ),
            .a        	(adderA[k] ),
            .b        	(adderB[k] ),
            .c_in     	('b0       ),
            .valid_in 	(addValid[k]),
            .sum      	(sum[k]    ),
            .c_out    	(          )
        );
    end
endgenerate

localparam probeIdx = 8;
// multiply output add logic, 4-Tier relay add
// Tier 0, 8x long adder
always@(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        addFlg[0]   <=  'b0;
        addCnt[0]   <=  'b0;
        for(i=0; i<8; i=i+1)begin
            adderA[i]   <=  'b0;
            adderB[i]   <=  'b0;
            addValid[i] <=  'b0;
        end
    end
    else begin
        if(kaPopFin)begin
            addFlg[0]   <=       'b1;
            addCnt[0]   <=       'b0;
            for(i=0; i<8; i=i+1)begin
                adderA[i]   <=  kaPSftReg[i];
                adderB[i]   <=  kaPSftReg[8+i];
                addValid[i] <=  1'b1;
            end
        end
        else begin
            for(i=0; i<8; i=i+1)begin
                adderA[i]   <=  'b0;
                adderB[i]   <=  'b0;
                addValid[i] <=  'b0;
            end
        end
        if(addFlg[0])begin
            addCnt[0]   <=  addCnt[0] + 'b1;
        end
        else begin
            addCnt[0]   <=  'b0;
        end
        if(addCnt[0] == 10)begin
            addCnt[0]   <=  'b0;
            addFlg[0]   <=  'b0;
        end
    end
end
// Tier 1, 4x long adder
always@(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        addFlg[1]       <=  'b0;
        addCnt[1]       <=  'b0;
        for(i=8; i<12; i=i+1)begin
            adderA[i]   <=  'b0;
            adderB[i]   <=  'b0;
        end
    end
    else begin
        if(addCnt[0] == 9)begin
            addFlg[1]   <=  'b1;
            addCnt[1]   <=  'b0;
        end
        if(addCnt[0] == 9)begin
            for(i=8; i<12; i=i+1)begin
                adderA[i]   <=  sum[i-8];
                adderB[i]   <=  sum[i-4];
                addValid[i] <=  1'b1;
            end
        end
        else begin
            for(i=8; i<12; i=i+1)begin
                adderA[i]   <=  'b0;
                adderB[i]   <=  'b0;
                addValid[i] <=  'b0;
            end
        end
        if(addFlg[1])begin
            addCnt[1]   <=  addCnt[1] + 'b1;
        end
        else begin
            addCnt[1]   <=  'b0;
        end
        if(addCnt[1] == 10)begin
            addCnt[1]   <=  'b0;
            addFlg[1]   <=  'b0;
        end
    end
end
// Tier 2, 2x long adder
always@(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        addFlg[2]       <=  'b0;
        addCnt[2]       <=  'b0;
        for(i=12; i<14; i=i+1)begin
            adderA[i]   <=  'b0;
            adderB[i]   <=  'b0;
        end
    end
    else begin
        if(addCnt[1] == 9)begin
            addFlg[2]   <=  'b1;
            addCnt[2]   <=  'b0;
        end
        if(addCnt[1] == 9)begin
            for(i=12; i<14; i=i+1)begin
                adderA[i]   <=  sum[i-4];
                adderB[i]   <=  sum[i-2];
                //$display("adderA[%0d]=sum[%0d]=%0h", i, i-4, sum[i-4]);
                //$display("adderB[%0d]=sum[%0d]=%0h", i, i-2, sum[i-2]);
                addValid[i] <=  1'b1;
            end
        end
        else begin
            for(i=12; i<14; i=i+1)begin
                adderA[i]   <=  'b0;
                adderB[i]   <=  'b0;
                addValid[i] <=  'b0;
            end
        end
        if(addFlg[2])begin
            addCnt[2]   <=  addCnt[2] + 'b1;
        end
        else begin
            addCnt[2]   <=  'b0;
        end
        if(addCnt[2] == 10)begin
            addCnt[2]   <=  'b0;
            addFlg[2]   <=  'b0;
        end
    end
end
// Tier 3, 1x long adder
always@(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        addFlg[3]       <=  'b0;
        addCnt[3]       <=  'b0;
        adderA[14]      <=  'b0;
        adderB[14]      <=  'b0;
        p_valid         <=  'b0;
    end
    else begin
        if(addCnt[2] == 9)begin
            addFlg[3]   <=  'b1;
            addCnt[3]   <=  'b0;
        end
        if(addCnt[2] == 9) begin
            adderA[14]  <=  sum[12];
            adderB[14]  <=  sum[13];
            addValid[14]<=  'b1;
        end
        else begin
            adderA[14]  <=  'b0;
            adderB[14]  <=  'b0;
            addValid[14]<=  'b0;
        end
        if(addFlg[3])begin
            addCnt[3]   <=  addCnt[3] + 'b1;
        end
        else begin
            addCnt[3]   <=  'b0;
        end
        if(addCnt[3] == 8) begin
            addCnt[3]   <=  'b0;
            addFlg[3]   <=  'b0;
            p_valid     <=  'b1;
        end
        else
            p_valid     <=  'b0;
    end
end

assign p = p_valid ? sum[14]:2048'b0;


endmodule