`timescale 1ns / 1ps

module stage7FullIntegration(
                             input        clk,
                             // Buttons
                             input        s_button,
                             input        w_button,

                             // Switches
                             input        switch0,
                             input        switch1,
                             input        switch2,
                             input        switch3,
 
							 // lcd IO
						     output       sf_ce,
							 output       sf_we,
							 output       sf_oe,
						     output       lcd_rw,
						     output       lcd_rs,
						     output       lcd_E,
						     output [3:0] lcd_D,

                             output reg   led0,
                             output reg   led1,
                             output reg   led2,
                             output reg   led3,
                             output reg   led4,
                             output reg   led5,
                             output reg   led6,
						     output       led7,
							 
							 // Stage 6 Control Ouput
							 output       isZero
);
   reg                                    MemCLK = 1'b 0;
   
   // Control
   wire                                    MSPWrite;
   wire                                    MSPop;
   wire                                    MSPRegReset;
   
   wire                                    RSPWrite;
   wire                                    RSPop;
   wire                                    RSPRegReset;
   
   wire                                    PCWrite;
   wire                                    PCSource;
   wire                                    PCAdd;
   wire                                    PCRegReset;
   
   wire                                    ValAWrite;
   wire                                    ValBWrite;
   wire                                    IRWrite;
   wire                                    displayWrite;

   wire                                    MemRead1;
   wire                                    MemRead2;
   wire                                    MemWrite1;
   wire                                    MemWrite2;
   
   wire                                    ResSource;
   wire                                    ResWrite;
   
   wire [1:0]                              MemDst1;
   wire [1:0]                              MemDst2;
   wire [2:0]                              MemData;
   
   wire [2:0]                              ALUop;


   // Stage 6 Inputs
   wire [15:0]                             SignExtOut;
   wire [15:0]                             ZeroExtOut;
   wire [15:0]                             ShifterOut;

   // Stage 4 special control inputs/outputs
   wire [4:0]                              CurrentState;
   wire [4:0]                              NextState;
   wire [15:0]                             PCOut;
   wire                                    endProgram;
   
   // Stage 6 Optional Outputs
   wire [15:0]                             MSPOut;
   wire [15:0]                             RSPOut;
   wire [15:0]                             IROut;
   wire [15:0]                             ResOut;
   wire [15:0]                             ValAOut;
   wire [15:0]                             ValBOut;
   wire [15:0]                             MemAOut;
   wire [15:0]                             MemBOut;
   

   stage6BasicOperation six(
						    .CLK(clk),
						    .MemCLK(MemCLK),

						    .MSPWrite(MSPWrite),
						    .MSPop(MSPop),
						    .MSPRegReset(MSPRegReset),

						    .RSPWrite(RSPWrite),
						    .RSPop(RSPop),
						    .RSPRegReset(RSPRegReset),

						    .PCWrite(PCWrite),
						    .PCSource(PCSource),
						    .PCAdd(PCAdd),
						    .PCRegReset(PCRegReset),

						    .ValAWrite(ValAWrite),
						    .ValBWrite(ValBWrite),
						    .IRWrite(IRWrite),
						    .displayWrite(displayWrite),

						    .MemRead1(MemRead1),
						    .MemRead2(MemRead2),
						    .MemWrite1(MemWrite1),
						    .MemWrite2(MemWrite2),

						    .ResSource(ResSource),
						    .ResWrite(ResWrite),

						    .MemDst1(MemDst1),
						    .MemDst2(MemDst2),
						    .MemData(MemData),

						    .ALUop(ALUop),

						    .isZero(isZero),

						    .SignExtOut(SignExtOut),
						    .ZeroExtOut(ZeroExtOut),
						    .ShifterOut(ShifterOut),
						
						    .MSPOut(MSPOut),
						    .RSPOut(RSPOut),
						    .PCOut(PCOut),
						    .IROut(IROut),
						    .ResOut(ResOut),
						    .ValAOut(ValAOut),
						    .ValBOut(ValBOut),
						    
						    .MemAOut(MemAOut),
						    .MemBOut(MemBOut),
						
				            //Display inputs/outputs
						    .RESET(w_button),
						    .sf_ce(sf_ce),
						    .sf_oe(sf_oe),
						    .sf_we(sf_we),
						    .lcd_rw(lcd_rw),
						    .lcd_rs(lcd_rs),
						    .lcd_E(lcd_E),
						    .lcd_D(lcd_D),
						    .led7(led7),

                            .switches({switch0,switch1,switch2,switch3})
						);

   stage4Integration four(
					      .ShifterIn(ValAOut),
					      .CLK(clk),
					 
					      .PC(PCOut),
					      
					      .CtrlRst(w_button),
					      .CurrentState(CurrentState),
					      .NextState(NextState),
                          .run(s_button),

					      .ValAWrite(ValAWrite),
					      .ValBWrite(ValBWrite),
					      .IRWrite(IRWrite),
                          .displayWrite(displayWrite),
	  
					      .MSPWrite(MSPWrite),
					      .MSPop(MSPop),
					      .MSPRegReset(MSPRegReset),

					      .RSPWrite(RSPWrite),
					      .RSPop(RSPop),
					      .RSPRegReset(RSPRegReset),

					      .PCWrite(PCWrite),
					      .PCSource(PCSource),
					      .PCAdd(PCAdd),
					      .PCRegReset(PCRegReset),

					      .MemRead1(MemRead1),
					      .MemRead2(MemRead2),
					      .MemWrite1(MemWrite1),
					      .MemWrite2(MemWrite2),

					      .ResSource(ResSource),
					      .ResWrite(ResWrite),

					      .MemDst1(MemDst1),
					      .MemDst2(MemDst2),
					      .MemData(MemData),
	  
					      .ALUop(ALUop),

					      .isZero(isZero),
	  
					      .IROut(IROut),

					      .SignExtOut(SignExtOut),
					      .ZeroExtOut(ZeroExtOut),
					      .ShifterOut(ShifterOut),

                          .endProgram(endProgram)
					      );

	// use this if your design contains sequential logic
   // parameter   PERIOD = 11;
   // parameter   real DUTY_CYCLE = 0.5;
   // parameter   OFFSET = 10;

   // initial begin
   //    $display("Starting");
   //    MemCLK = 0;
   // end
   

   always @ (clk) begin
      MemCLK = ~MemCLK;
      #10;
      MemCLK = ~MemCLK;
   end
   

   always @ (endProgram) begin
      led6 = endProgram;
   end
   
   always @ (s_button or w_button) begin
      led4 = s_button;
      led5 = w_button;
   end

   always @ (switch0 or switch1 or switch2 or switch3) begin
      led0 = switch0;
      led1 = switch1;
      led2 = switch2;
      led3 = switch3;
   end
   
   
endmodule
