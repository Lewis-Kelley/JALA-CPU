`timescale 1ns / 1ps

module stage0LCDIntegration(
	                        input        displayWrite,
	                        input [15:0] dout1,
	                        input        clk,
	                        input        RESET,
	                        output       sf_ce,
							output reg   sf_oe,
							output reg   sf_we,
	                        output       lcd_rw,
	                        output       lcd_rs,
	                        output       lcd_E,
	                        output [3:0] lcd_D,
	                        output       led7
                            );
   
   wire [15:0]                         displayOut;
   reg                                 CLEAR;
   reg                                 write;

   reg16 display(
		         .CLK(clk),
		         .Write(displayWrite),
		         .I(dout1),
		         .O(displayOut)
	             );

   lcd_driver lcd(
                  .CLK(clk),
                  .RESET(RESET),
                  .CLEAR(CLEAR),
                  .Write(1),
                  .D(displayOut),

                  .sf_ce(sf_ce),
                  .lcd_rw(lcd_rw),
                  .lcd_rs(lcd_rs),
                  .lcd_E(lcd_E),
                  .lcd_D(lcd_D),
                  .lcdReady(led7)
                  );
	initial begin
	   sf_oe = 1;
	   sf_we = 1;
	   CLEAR = 0;
       write = 1;
	end

endmodule
