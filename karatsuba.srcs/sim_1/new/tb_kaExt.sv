`timescale 1ns/1ps

module tb_kaExt;

localparam  WIDTH   =   1024;

reg                 clk;
reg                 rst_n;
reg [WIDTH-1:0]     a, b;
wire[2*WIDTH-1:0]   p;
reg                 valid_i;


kaExt u_kaExt(
     .clk(clk)
    ,.rst_n(rst_n)
    ,.valid_i(valid_i)
    ,.a(a)
    ,.b(b)
    ,.ready_o(ready_o)
    ,.p_valid(p_valid)
    ,.p(p)
);

initial begin
    clk = 0;
end
always #5 clk = ~clk;
integer i, j, k;
reg [2*WIDTH-1:0]   refP[100];
reg [2*WIDTH-1:0]   getP[100];
reg [255:0] b0, b1, b2, b3;
reg [31:0]  tmpRnd;
initial begin
    rst_n = 0;
    a = 0;
    b = 0;
    j = 0;
    k = 0;
    valid_i = 0;
    #20;
    rst_n = 1;
    #20;
    while(1) begin
        if(ready_o)begin
            a = 'h1000;
            b = {32{32'hFFFF_FFFF}};
            valid_i = 'b1;
            @(posedge clk);
            #0.1;
            valid_i = 'b0;
            a = 0;
            b = 0;
            break;
        end
    end
    //for(i=0; i<80; i=i+1)begin
    //    if(ready_o) begin
    //        a = 1;
    //        b = j;
    //        refP[j] = a*b;
    //        j = j + 1;
    //        valid_i = 1'b1;
    //        @(posedge clk);
    //        #0.1;
    //        valid_i = 1'b0;
    //        a = 0;
    //        b = 0;
    //    end
    //    if(p_valid) begin
    //        getP[k] = p;
    //        //$display("SIM TIME::%0d", $time());
    //        //$display("getP[%0d]=%0h", k, p);
    //        k = k + 1;
    //        @(posedge clk);
    //    end
    //    @(posedge clk);
    //end
    #4000;
    for(i=0; i<j; i=i+1)begin
        //$display("refP[%0d]=%0h", i, refP[i]);
        //$display("getP[%0d]=%0h", i, getP[i]);
        //if(refP[i] != getP[i]) begin
        //    $display("Check failed!!! \ngetP[%0d] == %0h,\nrefP[%0d] == %0h", i, getP[i], i, refP[i]);
        //end
        //else begin
        //    $display("Check pass");
        //end
    end
    @(posedge clk);
    $finish;
end


endmodule