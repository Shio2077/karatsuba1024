
module tb_blkram;

localparam WIDTH = 256;

reg                 clk;
reg                 rst_n;
reg                 wea, enb;
reg [5:0]           addra, addrb;
reg [255:0]         dina;
wire [255:0]        doutb;
blk_mem_gen_0 u_blkram(
     .clka  (clk)
    ,.wea   (wea)
    ,.addra (addra)
    ,.dina  (dina)
    ,.clkb  (clk)
    ,.enb   (enb)
    ,.addrb (addrb)
    ,.doutb (doutb)
);

initial begin
    clk = 0;
end

always #5 clk = ~clk;
integer i, j, k;
initial begin
    wea     =   0;
    enb     =   0;
    addrb   =   0;
    addra   =   0;
    dina    =   'd0;
    #50;

    @(posedge clk);
    #0.1;
    wea     =   'b1;
    addra   =   'b0;
    dina    =   {32{8'hF0}};
    @(posedge clk);
    #0.1;
    wea     =   'b1;
    addra   =   'h1;
    dina    =   {32{8'h88}};
    @(posedge clk);
    #0.1;
    wea     =   'b1;
    addra   =   'h2;
    dina    =   {32{8'haa}};
    @(posedge clk);
    #0.1;
    wea     =   'b0;
    addra   =   'b0;
    dina    =   'b0;
    
    for(i=0; i<4; i=i+1)begin
        @(posedge clk);
    end

    @(posedge clk);
    #0.1;
    enb     =   'b1;
    addrb   =   'b0;
    @(posedge clk);
    #0.1;
    enb     =   'b1;
    addrb   =   'b1;
    @(posedge clk);
    #0.1;
    enb     =   'b1;
    addrb   =   'h2;
    @(posedge clk);
    #0.1;
    enb     =   'b1;
    addrb   =   'b0;
    @(posedge clk);
    #0.1;
    enb     =   'b1;
    @(posedge clk);
    #0.1;
    enb     =   'b1;
    @(posedge clk);
    #0.1;
    enb     =   'b1;
    @(posedge clk);
    #0.1;
    enb     =   'b0;

    #200;
    $finish();
end


endmodule