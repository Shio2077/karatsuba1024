// This module is for testing only

module wire_conn #(
    parameter WIDTH = 256)(
    input wire [WIDTH-1:0]   a_in,
    input wire [WIDTH-1:0]   b_in,
    input wire [WIDTH-1:0]   c_in,
    input wire [WIDTH-1:0]   d_in,
    output wire[4*WIDTH-1:0] e_out
);

assign e_out = {d_in, c_in, b_in, a_in};

endmodule