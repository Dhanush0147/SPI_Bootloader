`timescale 1ns / 1ps

module led_driver(
    input clock,
    input [31:0] data,
    output [7:0] AN,
    output reg CA,
    output reg CB,
    output reg CC,
    output reg CD,
    output reg CE,
    output reg CF,
    output reg CG
);

reg [2:0] counter = 3'b000;
reg [25:0] clock_division = 26'b0;

always @(posedge clock)
    clock_division <= clock_division + 1;

// Scanning rate from right to left using MSB of clock divider
always @(posedge clock_division[17]) 
    counter <= counter + 1;

// Anode Control Logic
// Active Low: 0 means the digit is ON, 1 means OFF
assign AN[0] = ~((~counter[2]) & (~counter[1]) & (~counter[0]));
assign AN[1] = ~((~counter[2]) & (~counter[1]) & (counter[0]));
assign AN[2] = ~((~counter[2]) & (counter[1]) & (~counter[0]));
assign AN[3] = ~((~counter[2]) & (counter[1]) & (counter[0]));
assign AN[4] = ~((counter[2]) & (~counter[1]) & (~counter[0]));
assign AN[5] = ~((counter[2]) & (~counter[1]) & (counter[0]));
assign AN[6] = ~((counter[2]) & (counter[1]) & (~counter[0]));
assign AN[7] = ~((counter[2]) & (counter[1]) & (counter[0]));

always @(posedge clock) begin
    // Default High (segments off) - Active Low Logic
    CA <= 1; CB <= 1; CC <= 1; CD <= 1; CE <= 1; CF <= 1; CG <= 1;
    
    case(counter)
        // Segment 0 (Rightmost digit) - Data[3:0]
        3'b000: begin
            case(data[3:0])
                4'b0000: begin CA <= 0; CB <= 0; CC <= 0; CD <= 0; CE <= 0; CF <= 0; end // 0
                4'b0001: begin CB <= 0; CC <= 0; end // 1
                4'b0010: begin CA <= 0; CB <= 0; CG <= 0; CE <= 0; CD <= 0; end // 2
                4'b0011: begin CA <= 0; CB <= 0; CG <= 0; CC <= 0; CD <= 0; end // 3
                4'b0100: begin CB <= 0; CC <= 0; CF <= 0; CG <= 0; end // 4
                4'b0101: begin CA <= 0; CF <= 0; CG <= 0; CC <= 0; CD <= 0; end // 5
                4'b0110: begin CA <= 0; CC <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end // 6
                4'b0111: begin CA <= 0; CB <= 0; CC <= 0; end // 7
                4'b1000: begin CA <= 0; CB <= 0; CC <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end // 8
                4'b1001: begin CA <= 0; CB <= 0; CC <= 0; CD <= 0; CF <= 0; CG <= 0; end // 9
                4'b1010: begin CA <= 0; CB <= 0; CC <= 0; CE <= 0; CF <= 0; CG <= 0; end // A
                4'b1011: begin CC <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end // b
                4'b1100: begin CD <= 0; CE <= 0; CG <= 0; end // c
                4'b1101: begin CB <= 0; CC <= 0; CD <= 0; CE <= 0; CG <= 0; end // d
                4'b1110: begin CA <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end // E
                4'b1111: begin CA <= 0; CE <= 0; CF <= 0; CG <= 0; end // F
                default: begin CA <= 1; CB <= 1; CC <= 1; CD <= 1; CE <= 1; CF <= 1; CG <= 1; end
            endcase
        end

        // Segment 1 - Data[7:4]
        3'b001: begin
            case(data[7:4])
                4'b0000: begin CA <= 0; CB <= 0; CC <= 0; CD <= 0; CE <= 0; CF <= 0; end 
                4'b0001: begin CB <= 0; CC <= 0; end 
                4'b0010: begin CA <= 0; CB <= 0; CG <= 0; CE <= 0; CD <= 0; end 
                4'b0011: begin CA <= 0; CB <= 0; CG <= 0; CC <= 0; CD <= 0; end 
                4'b0100: begin CB <= 0; CC <= 0; CF <= 0; CG <= 0; end 
                4'b0101: begin CA <= 0; CF <= 0; CG <= 0; CC <= 0; CD <= 0; end 
                4'b0110: begin CA <= 0; CC <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b0111: begin CA <= 0; CB <= 0; CC <= 0; end 
                4'b1000: begin CA <= 0; CB <= 0; CC <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1001: begin CA <= 0; CB <= 0; CC <= 0; CD <= 0; CF <= 0; CG <= 0; end 
                4'b1010: begin CA <= 0; CB <= 0; CC <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1011: begin CC <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1100: begin CD <= 0; CE <= 0; CG <= 0; end 
                4'b1101: begin CB <= 0; CC <= 0; CD <= 0; CE <= 0; CG <= 0; end 
                4'b1110: begin CA <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1111: begin CA <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                default: begin CA <= 1; CB <= 1; CC <= 1; CD <= 1; CE <= 1; CF <= 1; CG <= 1; end
            endcase
        end

        // Segment 2 - Data[11:8]
        3'b010: begin
             case(data[11:8])
                4'b0000: begin CA <= 0; CB <= 0; CC <= 0; CD <= 0; CE <= 0; CF <= 0; end 
                4'b0001: begin CB <= 0; CC <= 0; end 
                4'b0010: begin CA <= 0; CB <= 0; CG <= 0; CE <= 0; CD <= 0; end 
                4'b0011: begin CA <= 0; CB <= 0; CG <= 0; CC <= 0; CD <= 0; end 
                4'b0100: begin CB <= 0; CC <= 0; CF <= 0; CG <= 0; end 
                4'b0101: begin CA <= 0; CF <= 0; CG <= 0; CC <= 0; CD <= 0; end 
                4'b0110: begin CA <= 0; CC <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b0111: begin CA <= 0; CB <= 0; CC <= 0; end 
                4'b1000: begin CA <= 0; CB <= 0; CC <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1001: begin CA <= 0; CB <= 0; CC <= 0; CD <= 0; CF <= 0; CG <= 0; end 
                4'b1010: begin CA <= 0; CB <= 0; CC <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1011: begin CC <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1100: begin CD <= 0; CE <= 0; CG <= 0; end 
                4'b1101: begin CB <= 0; CC <= 0; CD <= 0; CE <= 0; CG <= 0; end 
                4'b1110: begin CA <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1111: begin CA <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                default: begin CA <= 1; CB <= 1; CC <= 1; CD <= 1; CE <= 1; CF <= 1; CG <= 1; end
            endcase
        end

        // Segment 3 - Data[15:12]
        3'b011: begin
             case(data[15:12])
                4'b0000: begin CA <= 0; CB <= 0; CC <= 0; CD <= 0; CE <= 0; CF <= 0; end 
                4'b0001: begin CB <= 0; CC <= 0; end 
                4'b0010: begin CA <= 0; CB <= 0; CG <= 0; CE <= 0; CD <= 0; end 
                4'b0011: begin CA <= 0; CB <= 0; CG <= 0; CC <= 0; CD <= 0; end 
                4'b0100: begin CB <= 0; CC <= 0; CF <= 0; CG <= 0; end 
                4'b0101: begin CA <= 0; CF <= 0; CG <= 0; CC <= 0; CD <= 0; end 
                4'b0110: begin CA <= 0; CC <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b0111: begin CA <= 0; CB <= 0; CC <= 0; end 
                4'b1000: begin CA <= 0; CB <= 0; CC <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1001: begin CA <= 0; CB <= 0; CC <= 0; CD <= 0; CF <= 0; CG <= 0; end 
                4'b1010: begin CA <= 0; CB <= 0; CC <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1011: begin CC <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1100: begin CD <= 0; CE <= 0; CG <= 0; end 
                4'b1101: begin CB <= 0; CC <= 0; CD <= 0; CE <= 0; CG <= 0; end 
                4'b1110: begin CA <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1111: begin CA <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                default: begin CA <= 1; CB <= 1; CC <= 1; CD <= 1; CE <= 1; CF <= 1; CG <= 1; end
            endcase
        end

        // Segment 4 - Data[19:16]
        3'b100: begin
             case(data[19:16])
                4'b0000: begin CA <= 0; CB <= 0; CC <= 0; CD <= 0; CE <= 0; CF <= 0; end 
                4'b0001: begin CB <= 0; CC <= 0; end 
                4'b0010: begin CA <= 0; CB <= 0; CG <= 0; CE <= 0; CD <= 0; end 
                4'b0011: begin CA <= 0; CB <= 0; CG <= 0; CC <= 0; CD <= 0; end 
                4'b0100: begin CB <= 0; CC <= 0; CF <= 0; CG <= 0; end 
                4'b0101: begin CA <= 0; CF <= 0; CG <= 0; CC <= 0; CD <= 0; end 
                4'b0110: begin CA <= 0; CC <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b0111: begin CA <= 0; CB <= 0; CC <= 0; end 
                4'b1000: begin CA <= 0; CB <= 0; CC <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1001: begin CA <= 0; CB <= 0; CC <= 0; CD <= 0; CF <= 0; CG <= 0; end 
                4'b1010: begin CA <= 0; CB <= 0; CC <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1011: begin CC <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1100: begin CD <= 0; CE <= 0; CG <= 0; end 
                4'b1101: begin CB <= 0; CC <= 0; CD <= 0; CE <= 0; CG <= 0; end 
                4'b1110: begin CA <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1111: begin CA <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                default: begin CA <= 1; CB <= 1; CC <= 1; CD <= 1; CE <= 1; CF <= 1; CG <= 1; end
            endcase
        end

        // Segment 5 - Data[23:20]
        3'b101: begin
             case(data[23:20])
                4'b0000: begin CA <= 0; CB <= 0; CC <= 0; CD <= 0; CE <= 0; CF <= 0; end 
                4'b0001: begin CB <= 0; CC <= 0; end 
                4'b0010: begin CA <= 0; CB <= 0; CG <= 0; CE <= 0; CD <= 0; end 
                4'b0011: begin CA <= 0; CB <= 0; CG <= 0; CC <= 0; CD <= 0; end 
                4'b0100: begin CB <= 0; CC <= 0; CF <= 0; CG <= 0; end 
                4'b0101: begin CA <= 0; CF <= 0; CG <= 0; CC <= 0; CD <= 0; end 
                4'b0110: begin CA <= 0; CC <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b0111: begin CA <= 0; CB <= 0; CC <= 0; end 
                4'b1000: begin CA <= 0; CB <= 0; CC <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1001: begin CA <= 0; CB <= 0; CC <= 0; CD <= 0; CF <= 0; CG <= 0; end 
                4'b1010: begin CA <= 0; CB <= 0; CC <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1011: begin CC <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1100: begin CD <= 0; CE <= 0; CG <= 0; end 
                4'b1101: begin CB <= 0; CC <= 0; CD <= 0; CE <= 0; CG <= 0; end 
                4'b1110: begin CA <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1111: begin CA <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                default: begin CA <= 1; CB <= 1; CC <= 1; CD <= 1; CE <= 1; CF <= 1; CG <= 1; end
            endcase
        end

        // Segment 6 - Data[27:24]
        3'b110: begin
             case(data[27:24])
                4'b0000: begin CA <= 0; CB <= 0; CC <= 0; CD <= 0; CE <= 0; CF <= 0; end 
                4'b0001: begin CB <= 0; CC <= 0; end 
                4'b0010: begin CA <= 0; CB <= 0; CG <= 0; CE <= 0; CD <= 0; end 
                4'b0011: begin CA <= 0; CB <= 0; CG <= 0; CC <= 0; CD <= 0; end 
                4'b0100: begin CB <= 0; CC <= 0; CF <= 0; CG <= 0; end 
                4'b0101: begin CA <= 0; CF <= 0; CG <= 0; CC <= 0; CD <= 0; end 
                4'b0110: begin CA <= 0; CC <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b0111: begin CA <= 0; CB <= 0; CC <= 0; end 
                4'b1000: begin CA <= 0; CB <= 0; CC <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1001: begin CA <= 0; CB <= 0; CC <= 0; CD <= 0; CF <= 0; CG <= 0; end 
                4'b1010: begin CA <= 0; CB <= 0; CC <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1011: begin CC <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1100: begin CD <= 0; CE <= 0; CG <= 0; end 
                4'b1101: begin CB <= 0; CC <= 0; CD <= 0; CE <= 0; CG <= 0; end 
                4'b1110: begin CA <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1111: begin CA <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                default: begin CA <= 1; CB <= 1; CC <= 1; CD <= 1; CE <= 1; CF <= 1; CG <= 1; end
            endcase
        end

        // Segment 7 (Leftmost digit) - Data[31:28]
        3'b111: begin
             case(data[31:28])
                4'b0000: begin CA <= 0; CB <= 0; CC <= 0; CD <= 0; CE <= 0; CF <= 0; end 
                4'b0001: begin CB <= 0; CC <= 0; end 
                4'b0010: begin CA <= 0; CB <= 0; CG <= 0; CE <= 0; CD <= 0; end 
                4'b0011: begin CA <= 0; CB <= 0; CG <= 0; CC <= 0; CD <= 0; end 
                4'b0100: begin CB <= 0; CC <= 0; CF <= 0; CG <= 0; end 
                4'b0101: begin CA <= 0; CF <= 0; CG <= 0; CC <= 0; CD <= 0; end 
                4'b0110: begin CA <= 0; CC <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b0111: begin CA <= 0; CB <= 0; CC <= 0; end 
                4'b1000: begin CA <= 0; CB <= 0; CC <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1001: begin CA <= 0; CB <= 0; CC <= 0; CD <= 0; CF <= 0; CG <= 0; end 
                4'b1010: begin CA <= 0; CB <= 0; CC <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1011: begin CC <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1100: begin CD <= 0; CE <= 0; CG <= 0; end 
                4'b1101: begin CB <= 0; CC <= 0; CD <= 0; CE <= 0; CG <= 0; end 
                4'b1110: begin CA <= 0; CD <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                4'b1111: begin CA <= 0; CE <= 0; CF <= 0; CG <= 0; end 
                default: begin CA <= 1; CB <= 1; CC <= 1; CD <= 1; CE <= 1; CF <= 1; CG <= 1; end
            endcase
        end
    endcase
end

endmodule