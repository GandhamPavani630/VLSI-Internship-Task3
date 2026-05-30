module tb;

reg clk;
reg [3:0] a, b;
wire [4:0] y;

pipeline_example uut (
    .clk(clk),
    .a(a),
    .b(b),
    .y(y)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb);

    clk = 0;
    a = 2; b = 3;
    #10;

    a = 4; b = 5;
    #10;

    a = 7; b = 1;
    #10;

    $finish;
end

endmodule
