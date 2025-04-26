// Payment_Processing_Module.v
module Payment_Processing_Module(
    input clk,
    input reset,
    input [15:0] bill_amount,
    input [15:0] paid_amount,
    output reg excess_payment,
    output reg short_payment,
    output reg [15:0] adjustment_amount
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        excess_payment <= 0;
        short_payment <= 0;
        adjustment_amount <= 0;
    end else begin
        if (paid_amount > bill_amount) begin
            excess_payment <= 1;
            short_payment <= 0;
            adjustment_amount <= paid_amount - bill_amount;
        end else if (paid_amount < bill_amount) begin
            short_payment <= 1;
            excess_payment <= 0;
            adjustment_amount <= bill_amount - paid_amount;
        end else begin
            excess_payment <= 0;
            short_payment <= 0;
            adjustment_amount <= 0;
        end
    end
end

endmodule
