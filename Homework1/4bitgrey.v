module gray_couter(rst, clk, grayout);
   input 	   rst, clk;
   output reg [3:0] grayout;

   always@(posedge clk or posedge rst)
     begin
	if (rst)
	  grayout <= 0;
	else
	  begin
	     case (grayout)
	       4'b0000:  grayout <= 4'b0001;
	       4'b0001:  grayout <= 4'b0011;
	       4'b0011:  grayout <= 4'b0010;
	       4'b0010:  grayout <= 4'b0110;
	       4'b0110:  grayout <= 4'b0111;
	       4'b0111:  grayout <= 4'b0101;
	       4'b0101:  grayout <= 4'b0100;
	       4'b0100:  grayout <= 4'b1100;
	       4'b1100:  grayout <= 4'b1101;
	       4'b1101:  grayout <= 4'b1111;
	       4'b1111:  grayout <= 4'b1110;
	       4'b1110:  grayout <= 4'b1010;
	       4'b1010:  grayout <= 4'b1011;
	       4'b1011:  grayout <= 4'b1001;
	       4'b1001:  grayout <= 4'b1000;
	       4'b1000:  grayout <= 4'b0000;
	       default: grayout <= 0;
	     endcase // case (grayout)
	  end // else: !if(rst)
     end // always@ (posedge clk)
endmodule // gray_couter



