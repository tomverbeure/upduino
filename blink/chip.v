
module chip (
	output	LED_R_,
	output	LED_G_,
	output	LED_B_
	);

	wire clk, led;

	SB_HFOSC u_hfosc (
        	.CLKHFPU(1'b1),
        	.CLKHFEN(1'b1),
        	.CLKHF(clk)
    	);

	blink my_blink (
		.clk(clk),
		.rst(0),
    		.led(led)
	);

	assign LED_R_ = ~led;
	assign LED_G_ = ~led;
	assign LED_B_ = ~led;

endmodule
