module Top_TB_Lab2 ();

   wire       clk_w;
   wire [8:0] key_input_w;
   wire       speaker_out_w;
   wire [4:0] led_out_w;

   TestBench_Lab2 TestBench_Lab2 _
       .clk(clk_w),
       .key_input(key_input_w)
       );

   main main (
         .key_input(key_input_w),
	 .sysclk(clk_w),
	 .speaker_out(speaker_out_w),
	 .led_out(led_out_w)
	 );

endmodule