module bfp_bitWidthAcc
  #(
    parameter FFT_BFPDW = 5,
    parameter FFT_DW = 16
    )
  (
   input wire               clk,
   input wire               rst,

   input wire               init,
   input wire [FFT_BFPDW-1:0]  bw_init,
   input wire               update,
   input wire [FFT_BFPDW-1:0]  bw_new,

   output wire [FFT_BFPDW-1:0] bfp_bw,
   output wire signed [7:0] bfp_exponent
   );
   
   reg [FFT_BFPDW-1:0]      bfp_bw_f;
   assign bfp_bw = bfp_bw_f;

   always @ ( posedge clk ) begin
      if ( rst ) begin
         bfp_bw_f <= '0;
      end else if ( init ) begin
         bfp_bw_f <= bw_init;
      end else if ( update) begin
         bfp_bw_f <= bw_new;
      end
   end

   reg signed [7:0]  bfp_exponent_signed;
   reg signed [FFT_BFPDW:0] bfp_scale;
   wire [FFT_BFPDW-1:0]     bw = init ? bw_init : bw_new;
   
   always_comb begin
      if ( bw == FFT_DW ) begin
         bfp_scale = $signed((FFT_BFPDW+1)'(1));
      end else if ( bw == '0 ) begin
         bfp_scale = '0;
      end else begin
         bfp_scale = $signed({1'b0, bw}) - $signed((FFT_BFPDW+1)'(FFT_DW-2));
      end
   end

`ifdef DEBUG_PRINT
   always @ ( negedge clk ) begin
      if ( update ) begin
	 $display("CurrStage,%d", bfp_scale );
      end
   end
`endif
   
   always @ ( posedge clk ) begin
      if ( rst ) begin
         bfp_exponent_signed <= 8'h0;
      end else if ( init ) begin
         bfp_exponent_signed <= $signed(8'(bfp_scale));
      end else if ( update ) begin
         bfp_exponent_signed <= bfp_exponent_signed + bfp_scale;
      end
   end
   assign bfp_exponent = bfp_exponent_signed;

endmodule // bfp_bitWidthAcc

