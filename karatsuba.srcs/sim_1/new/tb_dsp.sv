`timescale 1ns/1ps

module dsp_tb;
    localparam WIDTH = 16;
    localparam CYCLES_OUT = 3;

    reg                 clk;
    reg                 rst_n;
    reg [WIDTH-1:0]     a, b;
    wire[2*WIDTH-1:0]   p;

    
    dsp_macro u_dsp_macro(
        .CLK 	(clk  ),
        .A   	({9'b0, a}   ),
        .B   	({2'b0, b}   ),
        .P   	(p   )
    );
    initial begin
        clk = 0;
    end
    always #5 clk = ~clk;
    integer i;
    reg [2*WIDTH-1:0]   expected;

    initial begin
        rst_n = 0;
        a = 0;
        b = 0;
        #20;
        rst_n = 1;
        #20;
        @(posedge clk);
        a = 16'hFFFF;
        b = 16'hFFFF;
        expected = a*b;
        @(posedge clk);
        a = 'b0;
        b = 'b0;
        for(i=0; i<CYCLES_OUT; i=i+1)
            @(posedge clk);
        if(p != expected) begin
            $error("Mismatch at vector 1: got %h, expected %h", p, expected);
        end
        else begin
            $display("PASS vector 1: p = %h", p);
        end
    end


endmodule