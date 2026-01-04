//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
// Copyright (C) 1988-2018 NEC Corporation. All rights reserved.
// tbgen version : 3.89  Fri Feb 23 09:13:11 JST 2018
//          (BIF version : 3.41B)
// tbgen option: -EE -stall=random -output=file -b10 -finish -scr=modelsim-all -dump=VCD main_E.IFF
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------

`timescale 1ps / 1ps

`include "./main_E_FIO.v"

module T_main_00;

`define CYBER_SIMULATION


`include "./main_E_SIG.v"
`include "./main_E_COM.v"
`include "./main_E_BAS.v"
`include "./main_E_USR.v"

parameter TestName     = "T_main_00";

//---------------------------------------------------------------------------

initial begin
    TB_Sim_Start( TestName );

    #TB_CP;
    wait ( TB_SimEnd === 1'b1 );

    #TB_CCH;
    TB_Sim_End(TestName);

    if (TB_StopFlg == 0) begin
        $stop(2);
    end else begin
        $finish(2);
    end
end

initial begin
    RESET = 1'b1;
    #TB_ResetPeriod;
    RESET = 1'b0;
end

always @ ( posedge TB_CLOCK_posclk ) begin
    if ( TB_SimEnd != 1'b1 ) begin
        if ( TB_TC == 1'b0 ) begin
            if ( TB_RESET_posrst === 1'b0 ) begin
                TB_TC = 1'b1;
                TB_TS <= TB_TS+1;
            end
        end else begin
            if ( TB_TS >= TB_MaxCycle ) begin
                TB_MxCEnd = 1'b1;
            end
            TB_TS <= TB_TS+1;
        end
    end
end

initial begin
    TB_TD_CLOCK = 1'b0;
    wait ( TB_RESET_posrst === 1'b0 );
    TB_TD_CLOCK = 1'b1;
end

initial begin
    TB_TR_CLOCK = 1'b0;
    #(TB_ResetPeriod-TB_ClockResetInterval_CLOCK);
    TB_TR_CLOCK = 1'b1;
end

//---------------------------------------------------------------------------

// main_ret
// main_ret: din
assign TB_main_ret_din = main_ret;

// main_ret: index
always @ ( posedge TB_CLOCK_posclk ) begin
    if ( TB_main_ret_wr_incadr == 1 ) begin
        TB_main_ret_index_t <= TB_main_ret_index_t + 1;
    end
end
assign TB_main_ret_index = TB_main_ret_index_t;

// main_ret: wr_incadr
always @ ( TB_RESET_posrst or TB_TD_CLOCK or TB_main_ret_fvc or TB_SimEnd ) begin
    if ( TB_RESET_posrst === 1'b0 && TB_TD_CLOCK == 1'b1 && TB_main_ret_fvc >= 1 && TB_SimEnd != 1'b1 ) begin
        TB_main_ret_wr_incadr_t <= 1'b1;
    end else begin
        TB_main_ret_wr_incadr_t <= 1'b0;
    end
end
assign TB_main_ret_wr_incadr = TB_main_ret_wr_incadr_t;
endmodule

//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
