    lsc_ml_ice40_cnn __(.clk( ),
        .resetn( ),
        .o_rd_rdy( ),
        .i_start( ),
        .i_we( ),
        .i_waddr( ),
        .i_din( ),
        .o_we( ),
        .o_dout( ),
        .o_cycles( ),
        .o_commands( ),
        .o_fc_cycles( ),
        .i_debug_rdy( ),
        .o_debug_vld( ),
        .o_fill( ),
        .i_fifo_empty( ),
        .i_fifo_low( ),
        .o_fifo_rd( ),
        .i_fifo_dout( ),
        .o_status( ));