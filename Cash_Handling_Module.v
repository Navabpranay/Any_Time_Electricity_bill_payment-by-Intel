// Cash_Handling_Module.v
module Cash_Handling_Module(
    input clk,
    input reset,
    input [9:0] cash_inserted,  // assuming cash input
    output reg valid_note,
    output reg [9:0] cash_total
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        cash_total <= 0;
        valid_note <= 0;
    end else begin
        case (cash_inserted)
            10, 20, 50, 100, 200, 500: begin
                valid_note <= 1;
                cash_total <= cash_total + cash_inserted;
            end
            default: valid_note <= 0;
        endcase
    end
end

endmodule
