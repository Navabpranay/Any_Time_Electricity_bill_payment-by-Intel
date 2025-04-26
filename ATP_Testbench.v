// ATP_Testbench.v
`timescale 1ns / 1ps
module ATP_Testbench();

// Inputs
reg clk;
reg reset;
reg user_touch;
reg scan_start;
reg [9:0] cash_inserted;

// Output
wire ack_printed;

// Instantiate Top-Level Module
ATP_Top_Level_Module UUT (
    .clk(clk),
    .reset(reset),
    .user_touch(user_touch),
    .scan_start(scan_start),
    .cash_inserted(cash_inserted),
    .ack_printed(ack_printed)
);

// Clock Generation
always #5 clk = ~clk;

initial begin
    // Initialize inputs
    clk = 0;
    reset = 1;
    user_touch = 0;
    scan_start = 0;
    cash_inserted = 0;
    
    // Reset pulse
    #10 reset = 0;
    
    // Simulate user touch
    #10 user_touch = 1;
    #10 user_touch = 0;
    
    // Simulate scanning
    #10 scan_start = 1;
    #10 scan_start = 0;
    
    // Insert cash
    #10 cash_inserted = 100;
    
    // Wait and observe
    #100;
    
    $finish;
end

endmodule
