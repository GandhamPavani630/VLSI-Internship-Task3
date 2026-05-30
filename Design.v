module pipeline_example (
    input clk,
    input [3:0] a, b,
    output reg [4:0] y
);

reg [4:0] stage1;

always @(posedge clk) begin
    stage1 <= a + b;      // Stage 1 (adder delay)
    y <= stage1 + 1;      // Stage 2 (extra delay)
end

endmodule
