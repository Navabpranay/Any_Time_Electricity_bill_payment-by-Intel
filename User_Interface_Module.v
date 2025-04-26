// User_Interface_Module.v
module User_Interface_Module(
    input clk,
    input reset,
    input user_touch,
    output reg prompt_display
);

always @(posedge clk or posedge reset) begin
    if (reset) 
        prompt_display <= 0;
    else if (user_touch)
        prompt_display <= 1;
    else
        prompt_display <= 0;
end

endmodule
