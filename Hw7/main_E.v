// verilog_out version 6.89.1
// options:  veriloggen -EE main_E.IFF
// bdlpars options:  -EE -info_base_name bubble_sort ../../bubble_sort.c
// bdltran options:  -EE -c2000 -s -Zresource_fcnt=GENERATE -Zresource_mcnt=GENERATE -Zdup_reset=YES -Zfolding_sharing=inter_stage -EE -lb /proj/cad/cwb-6.1/packages/cycloneV.BLIB -lfl /proj/cad/cwb-6.1/packages/cycloneV.FLIB +lfl /proj/cad/cwb-6.1/packages/cycloneV-float.FLIB +lfl main-auto.FLIB +lfl main-amacro-auto.FLIB -lfc main-auto.FCNT +lfc main-amacro-auto.FCNT -lml main-auto.MLIB -lmc main-auto.MCNT main.IFF 
// timestamp_0: 20251112160858_52855_48791
// timestamp_5: 20251112160901_52889_58295
// timestamp_9: 20251112160903_52889_24642
// timestamp_C: 20251112160903_52889_92269
// timestamp_E: 20251112160904_52889_63117
// timestamp_V: 20251112160904_52977_09341

module main ( main_ret ,CLOCK ,RESET );
output	[31:0]	main_ret ;	// line#=../../bubble_sort.c:21
input		CLOCK ;
input		RESET ;
wire		ST1_01d ;
wire		ST1_02d ;
wire		ST1_03d ;
wire		ST1_04d ;
wire		ST1_05d ;
wire		ST1_06d ;
wire		ST1_07d ;
wire		ST1_08d ;
wire		ST1_09d ;
wire		JF_01 ;

main_fsm INST_fsm ( .CLOCK(CLOCK) ,.RESET(RESET) ,.ST1_09d(ST1_09d) ,.ST1_08d(ST1_08d) ,
	.ST1_07d(ST1_07d) ,.ST1_06d(ST1_06d) ,.ST1_05d(ST1_05d) ,.ST1_04d(ST1_04d) ,
	.ST1_03d(ST1_03d) ,.ST1_02d(ST1_02d) ,.ST1_01d(ST1_01d) ,.JF_01(JF_01) );
main_dat INST_dat ( .main_ret(main_ret) ,.CLOCK(CLOCK) ,.RESET(RESET) ,.ST1_09d(ST1_09d) ,
	.ST1_08d(ST1_08d) ,.ST1_07d(ST1_07d) ,.ST1_06d(ST1_06d) ,.ST1_05d(ST1_05d) ,
	.ST1_04d(ST1_04d) ,.ST1_03d(ST1_03d) ,.ST1_02d(ST1_02d) ,.ST1_01d(ST1_01d) ,
	.JF_01(JF_01) );

endmodule

module main_fsm ( CLOCK ,RESET ,ST1_09d ,ST1_08d ,ST1_07d ,ST1_06d ,ST1_05d ,ST1_04d ,
	ST1_03d ,ST1_02d ,ST1_01d ,JF_01 );
input		CLOCK ;
input		RESET ;
output		ST1_09d ;
output		ST1_08d ;
output		ST1_07d ;
output		ST1_06d ;
output		ST1_05d ;
output		ST1_04d ;
output		ST1_03d ;
output		ST1_02d ;
output		ST1_01d ;
input		JF_01 ;
reg	[3:0]	B01_streg ;

parameter	ST1_01 = 4'h0 ;
parameter	ST1_02 = 4'h1 ;
parameter	ST1_03 = 4'h2 ;
parameter	ST1_04 = 4'h3 ;
parameter	ST1_05 = 4'h4 ;
parameter	ST1_06 = 4'h5 ;
parameter	ST1_07 = 4'h6 ;
parameter	ST1_08 = 4'h7 ;
parameter	ST1_09 = 4'h8 ;

assign	ST1_01d = ( ( B01_streg == ST1_01 ) ? 1'h1 : 1'h0 ) ;
assign	ST1_02d = ( ( B01_streg == ST1_02 ) ? 1'h1 : 1'h0 ) ;
assign	ST1_03d = ( ( B01_streg == ST1_03 ) ? 1'h1 : 1'h0 ) ;
assign	ST1_04d = ( ( B01_streg == ST1_04 ) ? 1'h1 : 1'h0 ) ;
assign	ST1_05d = ( ( B01_streg == ST1_05 ) ? 1'h1 : 1'h0 ) ;
assign	ST1_06d = ( ( B01_streg == ST1_06 ) ? 1'h1 : 1'h0 ) ;
assign	ST1_07d = ( ( B01_streg == ST1_07 ) ? 1'h1 : 1'h0 ) ;
assign	ST1_08d = ( ( B01_streg == ST1_08 ) ? 1'h1 : 1'h0 ) ;
assign	ST1_09d = ( ( B01_streg == ST1_09 ) ? 1'h1 : 1'h0 ) ;
always @ ( posedge CLOCK or posedge RESET )
	if ( RESET )
		B01_streg <= ST1_01 ;
	else
		case ( B01_streg )
		ST1_01 :
			B01_streg <= ST1_02 ;
		ST1_02 :
			B01_streg <= ST1_03 ;
		ST1_03 :
			B01_streg <= ST1_04 ;
		ST1_04 :
			B01_streg <= ST1_05 ;
		ST1_05 :
			B01_streg <= ST1_06 ;
		ST1_06 :
			B01_streg <= ST1_07 ;
		ST1_07 :
			B01_streg <= ST1_08 ;
		ST1_08 :
			B01_streg <= ST1_09 ;
		ST1_09 :
			if ( ( JF_01 != 1'h0 ) )
				B01_streg <= ST1_01 ;
			else
				B01_streg <= ST1_09 ;
		default :
			B01_streg <= ST1_01 ;
		endcase

endmodule

module main_dat ( main_ret ,CLOCK ,RESET ,ST1_09d ,ST1_08d ,ST1_07d ,ST1_06d ,ST1_05d ,
	ST1_04d ,ST1_03d ,ST1_02d ,ST1_01d ,JF_01 );
output	[31:0]	main_ret ;	// line#=../../bubble_sort.c:21
input		CLOCK ;
input		RESET ;
input		ST1_09d ;
input		ST1_08d ;
input		ST1_07d ;
input		ST1_06d ;
input		ST1_05d ;
input		ST1_04d ;
input		ST1_03d ;
input		ST1_02d ;
input		ST1_01d ;
output		JF_01 ;
wire		U_02 ;
wire	[2:0]	decr3u1i1 ;
wire	[2:0]	decr3u1ot ;
wire	[2:0]	incr3u1i1 ;
wire	[3:0]	incr3u1ot ;
wire	[2:0]	gop3u_11i2 ;
wire	[2:0]	gop3u_11i1 ;
wire		gop3u_11ot ;
wire		JF_01 ;
wire		b_ary1_WE1 ;
wire		main_ret_r_en ;
wire		RG_cnti_en ;
reg	[2:0]	RG_cnti ;	// line#=../../bubble_sort.c:24
reg	[2:0]	RG_cntj ;	// line#=../../bubble_sort.c:24
reg	[31:0]	main_ret_r ;	// line#=../../bubble_sort.c:21
reg	[2:0]	RG_cnti_t ;
reg	[2:0]	RG_cntj_t ;
reg	RG_cntj_t_c1 ;
reg	RG_cntj_t_c2 ;
reg	[2:0]	b_ary1_WA1 ;

main_decr3u INST_decr3u_1 ( .i1(decr3u1i1) ,.o1(decr3u1ot) );	// line#=../../bubble_sort.c:63
main_incr3u INST_incr3u_1 ( .i1(incr3u1i1) ,.o1(incr3u1ot) );	// line#=../../bubble_sort.c:61
main_gop3u_1 INST_gop3u_1_1 ( .i1(gop3u_11i1) ,.i2(gop3u_11i2) ,.o1(gop3u_11ot) );	// line#=../../bubble_sort.c:63
assign	main_ret = main_ret_r ;	// line#=../../bubble_sort.c:21
MEM_b_ary b_ary1 ( .WA1(b_ary1_WA1) ,.WD1(1'h0) ,.WE1(b_ary1_WE1) ,.WCLK1(CLOCK) );	// line#=../../bubble_sort.c:23
assign	gop3u_11i1 = RG_cntj ;	// line#=../../bubble_sort.c:63
assign	gop3u_11i2 = RG_cnti ;	// line#=../../bubble_sort.c:63
assign	incr3u1i1 = RG_cnti ;	// line#=../../bubble_sort.c:61
assign	decr3u1i1 = RG_cntj ;	// line#=../../bubble_sort.c:63
assign	U_02 = ( ST1_09d & ( ~gop3u_11ot ) ) ;	// line#=../../bubble_sort.c:63
always @ ( U_02 or incr3u1ot or ST1_08d )
	case ( { ST1_08d , U_02 } )
	2'b10 :
		RG_cnti_t = 3'h0 ;	// line#=../../bubble_sort.c:61
	2'b01 :
		RG_cnti_t = incr3u1ot [2:0] ;	// line#=../../bubble_sort.c:61
	default :
		RG_cnti_t = 3'hx ;
	endcase
assign	RG_cnti_en = ( ST1_08d | U_02 ) ;
always @ ( posedge CLOCK )
	if ( RG_cnti_en )
		RG_cnti <= RG_cnti_t ;	// line#=../../bubble_sort.c:61
always @ ( gop3u_11ot or ST1_09d or decr3u1ot or U_02 or ST1_08d )	// line#=../../bubble_sort.c:63
	begin
	RG_cntj_t_c1 = ( ST1_08d | U_02 ) ;	// line#=../../bubble_sort.c:63
	RG_cntj_t_c2 = ( ST1_09d & gop3u_11ot ) ;	// line#=../../bubble_sort.c:63
	case ( { RG_cntj_t_c1 , RG_cntj_t_c2 } )
	2'b10 :
		RG_cntj_t = 3'h7 ;	// line#=../../bubble_sort.c:63
	2'b01 :
		RG_cntj_t = decr3u1ot ;	// line#=../../bubble_sort.c:63
	default :
		RG_cntj_t = 3'hx ;
	endcase
	end
always @ ( posedge CLOCK )	// line#=../../bubble_sort.c:63
	RG_cntj <= RG_cntj_t ;	// line#=../../bubble_sort.c:63
assign	JF_01 = ( ( ~gop3u_11ot ) & incr3u1ot [3] ) ;	// line#=../../bubble_sort.c:61
assign	main_ret_r_en = ( U_02 & incr3u1ot [3] ) ;
always @ ( posedge CLOCK or posedge RESET )	// line#=../../bubble_sort.c:61,83
	if ( RESET )
		main_ret_r <= 32'h00000000 ;
	else if ( main_ret_r_en )
		main_ret_r <= 32'h00000000 ;
always @ ( ST1_08d or ST1_07d or ST1_06d or ST1_05d or ST1_04d or ST1_03d or ST1_02d or 
	ST1_01d )
	case ( { ST1_01d , ST1_02d , ST1_03d , ST1_04d , ST1_05d , ST1_06d , ST1_07d , 
		ST1_08d } )
	8'b10000000 :
		b_ary1_WA1 = 3'h0 ;	// line#=../../bubble_sort.c:55
	8'b01000000 :
		b_ary1_WA1 = 3'h1 ;	// line#=../../bubble_sort.c:55
	8'b00100000 :
		b_ary1_WA1 = 3'h2 ;	// line#=../../bubble_sort.c:55
	8'b00010000 :
		b_ary1_WA1 = 3'h3 ;	// line#=../../bubble_sort.c:55
	8'b00001000 :
		b_ary1_WA1 = 3'h4 ;	// line#=../../bubble_sort.c:55
	8'b00000100 :
		b_ary1_WA1 = 3'h5 ;	// line#=../../bubble_sort.c:55
	8'b00000010 :
		b_ary1_WA1 = 3'h6 ;	// line#=../../bubble_sort.c:55
	8'b00000001 :
		b_ary1_WA1 = 3'h7 ;	// line#=../../bubble_sort.c:55
	default :
		b_ary1_WA1 = 3'hx ;
	endcase
assign	b_ary1_WE1 = ( ( ( ( ( ( ( ST1_01d | ST1_02d ) | ST1_03d ) | ST1_04d ) | 
	ST1_05d ) | ST1_06d ) | ST1_07d ) | ST1_08d ) ;

endmodule

module main_decr3u ( i1 ,o1 );
input	[2:0]	i1 ;
output	[2:0]	o1 ;

assign	o1 = ( i1 - 1'h1 ) ;

endmodule

module main_incr3u ( i1 ,o1 );
input	[2:0]	i1 ;
output	[3:0]	o1 ;

assign	o1 = ( { 1'h0 , i1 } + 1'h1 ) ;

endmodule

module main_gop3u_1 ( i1 ,i2 ,o1 );
input	[2:0]	i1 ;
input	[2:0]	i2 ;
output		o1 ;
wire		M_01 ;

assign	M_01 = ( i1 > i2 ) ;
assign	o1 = M_01 ;

endmodule
