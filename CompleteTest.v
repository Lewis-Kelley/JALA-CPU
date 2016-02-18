`timescale 1ns / 1ps

module CompleteTest;

   // Inputs
   reg s_button;
   reg w_button;
   reg switch0;
   reg switch1;
   reg switch2;
   reg switch3;
   reg CLK;
   reg MemCLK;
   reg RESET;

   // Outputs
   wire sf_ce;
   wire sf_we;
   wire sf_oe;
   wire lcd_rw;
   wire lcd_rs;
   wire lcd_E;
   wire led0;
   wire led1;
   wire led2;
   wire led3;
   wire led6;
   wire led7;
   wire isZero;

   // Variables
   reg [1:0] CLKCount;
   integer   file;
   reg [18*8:1] string;
   integer      lineCount;

   // Instantiate the Unit Under Test (UUT)
   stage7FullIntegration uut (
		                      .s_button(s_button), 
		                      .w_button(w_button), 
		                      .switch0(switch0), 
		                      .switch1(switch1), 
		                      .switch2(switch2), 
		                      .switch3(switch3), 
		                      .clk(CLK), 
		                      //.MemCLK(MemCLK), 
		                      .sf_ce(sf_ce), 
		                      .sf_we(sf_we), 
		                      .sf_oe(sf_oe), 
		                      .lcd_rw(lcd_rw), 
		                      .lcd_rs(lcd_rs), 
		                      .lcd_E(lcd_E), 
		                      .led0(led0), 
		                      .led1(led1), 
		                      .led2(led2), 
		                      .led3(led3), 
		                      .led4(led4), 
		                      .led5(led5), 
		                      .led6(led6), 
		                      .led7(led7), 
		                      .isZero(isZero)
	                          );

   

   // // use this if your design contains sequential logic
   parameter   PERIOD = 20;
   parameter   real DUTY_CYCLE = 0.5;
   parameter   OFFSET = 10;

   // CLK Loop
   initial begin
      CLK = 0;
      #OFFSET;
      forever begin
    	 #(PERIOD-(PERIOD*DUTY_CYCLE)) CLK = ~CLK;
    	 #(PERIOD*DUTY_CYCLE);
         if (led6 == 1) begin
            $finish;
         end 
      end
   end
   
   // MemCLK Loop
   // initial begin
   //    MemCLK = 0;
   //    #OFFSET;
   //    forever begin
   //  	 #(PERIOD/2-(PERIOD/2*DUTY_CYCLE)) MemCLK = ~MemCLK;
   //  	 #(PERIOD/2*DUTY_CYCLE);
   //    end
   // end
   
   initial begin
      s_button = 0;
	  w_button = 1; //Trigger the reset
	  
	  CLKCount = 0;
	  
	  file = $fopen("../ipcore_dir/blockmem20480b.mif", "r");
	  if(file == 0) begin
		 $display("File was null");
		 $finish;
	  end
	  
	  lineCount = 0;
	  
	  while($fgets(string, file)) begin
		 lineCount = lineCount + 1;
	  end
	  
	  $display("The file had %d lines, and %d instructions", lineCount, lineCount - 10239);
	  
	  $fclose(file);
	  
      #100;

      w_button = 0;
      s_button = 1;

      #30;
      
      s_button = 0;
   end
   
   always @(posedge CLK) begin: TestCLK
	  if(CLKCount < 3) begin
		 CLKCount = CLKCount + 1;
		 disable TestCLK;
	  end
	  
	  w_button = 0;
   end
   
endmodule

