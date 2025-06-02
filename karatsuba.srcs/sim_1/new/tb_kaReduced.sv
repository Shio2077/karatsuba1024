`timescale 1ns/1ps

module tb_kaReduced;

localparam  WIDTH   =   1024;

reg                 clk;
reg                 rst_n;
reg [WIDTH-1:0]     a, b;
reg [WIDTH-1:0]     aReg[0:9];
reg [WIDTH-1:0]     bReg[0:9];
wire[2*WIDTH-1:0]   p;
reg                 valid_i;
wire                p_valid;


kaReduced128 u_kaReduced(
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
    i = 0;
    j = 0;
    k = 0;
    valid_i = 0;
    #20;
    rst_n = 1;
    @(posedge clk);
    fork
        begin
            for (i = 0; i < 10; i = i + 1) begin
                while (!ready_o) @(posedge clk);

                a = {32{$random()}};
                b = {32{$random()}};
                valid_i = 1'b1;
                refP[i] = a * b;
                $display("refP[%0d] stored", i);
                @(posedge clk);
                #0.1;
                valid_i = 1'b0;
                a = 0;
                b = 0;
            end
        end

        begin
            for (j = 0; j < 8; j = j + 1) begin
                while(1) begin
                    @(posedge clk);
                    #0.1;
                    if(p_valid)begin
                        getP[j] = p;
                        break;
                    end
                end
            end
        end
    join

    for (i = 0; i < 10; i = i + 1) begin
        $display("========== Case %0d ==========", i);
        $display("getP = %0h", getP[i]);
        $display("refP = %0h", refP[i]);
        if (getP[i] > refP[i])
            $display("getP bigger! sub res = %0h", (getP[i]-refP[i]));
        else if (getP[i] == refP[i])
            $display("~~~~~~~~~PASS~~~~~~~~~");
        else
            $display("refP bigger! sub res = %0h", (refP[i]-getP[i]));
        #10;
    end
    //for(i=0; i<10; i=i+1)begin
    //    aReg[j] = 0;
    //    bReg[j] = 0;
    //end
    //for(j=0; j<10; j=j+1)begin 
    //    aReg[j] = {32{$random()}};
    //    bReg[j] = {32{$random()}};
    //    refP[j] = a[j]*b[j];
    //end
    //fork
    //while(1)begin
    //    @(posedge clk);
    //    #0.1;
    //    if(ready_o) begin
    //        a = aReg[j];
    //        b = bReg[j];
    //        valid_i = 'b1;
    //        @(posedge clk);
    //        #0.1;
    //        a = 0;
    //        b = 0;
    //        j = j+1;
    //        if(j == 9)
    //            break;
    //    end
    //end
    //while(1)begin
    //    if(p_valid) begin
    //        getP[k] = p;
    //        $display("SIM TIME::%0d", $time());
    //        $display("getP[%0d]=%0h", k, p);
    //        k = k + 1;
    //        if(k == 9)
    //            break;
    //        @(posedge clk);
    //    end
    //end
    //join_none


    //#1000;
    //for(i=0; i<j; i=i+1)begin
    //    $display("refP[%0d]=%0h", i, refP[i]);
    //    $display("getP[%0d]=%0h", i, getP[i]);
    //    if(refP[i] != getP[i]) begin
    //        $display("Check failed!!! \ngetP[%0d] == %0h,\nrefP[%0d] == %0h", i, getP[i], i, refP[i]);
    //    end
    //    else begin
    //        $display("Check pass");
    //    end
    //end
    @(posedge clk);
    $finish;
end


endmodule