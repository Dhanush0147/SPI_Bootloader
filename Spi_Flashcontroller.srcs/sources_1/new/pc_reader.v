module pc_reader (
    input  wire        clk,
    input  wire        reset,
    input  wire        enable,
    output reg [31:0]  pc,
    output reg         en
);

    reg [25:0] div;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            div <= 0;
            pc  <= 0;
            en  <= 0;
        end else if (enable) begin
            div <= div + 1;
            if (div == 26'd50_000_000) begin
           div <= 0;
                pc  <= pc + 1;
            en  <= 1'b1;
            end else begin
                en <= 1'b0;
            end
        end
    end
endmodule
