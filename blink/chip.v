
module chip (
	output	LED_R,
	output	LED_G,
	output	LED_B
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

	assign LED_R = led;
	assign LED_G = led;
	assign LED_B = led;

endmodule
