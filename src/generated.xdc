
connect_debug_port u_ila_0/probe8 [get_nets [list {dap/stdoutData[0]} {dap/stdoutData[1]} {dap/stdoutData[2]} {dap/stdoutData[3]} {dap/stdoutData[4]} {dap/stdoutData[5]} {dap/stdoutData[6]} {dap/stdoutData[7]}]]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 16384 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list clk0/inst/clk_out1]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 14 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {dap/bf/programAddr_reg[0]} {dap/bf/programAddr_reg[1]} {dap/bf/programAddr_reg[2]} {dap/bf/programAddr_reg[3]} {dap/bf/programAddr_reg[4]} {dap/bf/programAddr_reg[5]} {dap/bf/programAddr_reg[6]} {dap/bf/programAddr_reg[7]} {dap/bf/programAddr_reg[8]} {dap/bf/programAddr_reg[9]} {dap/bf/programAddr_reg[10]} {dap/bf/programAddr_reg[11]} {dap/bf/programAddr_reg[12]} {dap/bf/programAddr_reg[13]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 8 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {dap/bf/bf_io_inst[0]} {dap/bf/bf_io_inst[1]} {dap/bf/bf_io_inst[2]} {dap/bf/bf_io_inst[3]} {dap/bf/bf_io_inst[4]} {dap/bf/bf_io_inst[5]} {dap/bf/bf_io_inst[6]} {dap/bf/bf_io_inst[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 8 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {dap/bf/Q[0]} {dap/bf/Q[1]} {dap/bf/Q[2]} {dap/bf/Q[3]} {dap/bf/Q[4]} {dap/bf/Q[5]} {dap/bf/Q[6]} {dap/bf/Q[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 4 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {dap/bf/branchStackPtr_reg__0[0]} {dap/bf/branchStackPtr_reg__0[1]} {dap/bf/branchStackPtr_reg__0[2]} {dap/bf/branchStackPtr_reg__0[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 3 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {dap/bf/errorCode[0]} {dap/bf/errorCode[1]} {dap/bf/errorCode[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 14 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {dap/bf/pc[0]} {dap/bf/pc[1]} {dap/bf/pc[2]} {dap/bf/pc[3]} {dap/bf/pc[4]} {dap/bf/pc[5]} {dap/bf/pc[6]} {dap/bf/pc[7]} {dap/bf/pc[8]} {dap/bf/pc[9]} {dap/bf/pc[10]} {dap/bf/pc[11]} {dap/bf/pc[12]} {dap/bf/pc[13]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 10 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {dap/bf/stackPtr_reg[0]} {dap/bf/stackPtr_reg[1]} {dap/bf/stackPtr_reg[2]} {dap/bf/stackPtr_reg[3]} {dap/bf/stackPtr_reg[4]} {dap/bf/stackPtr_reg[5]} {dap/bf/stackPtr_reg[6]} {dap/bf/stackPtr_reg[7]} {dap/bf/stackPtr_reg[8]} {dap/bf/stackPtr_reg[9]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 8 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {dap/bf/outData[0]} {dap/bf/outData[1]} {dap/bf/outData[2]} {dap/bf/outData[3]} {dap/bf/outData[4]} {dap/bf/outData[5]} {dap/bf/outData[6]} {dap/bf/outData[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 14 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list {dap/bf/branchStackData[0]} {dap/bf/branchStackData[1]} {dap/bf/branchStackData[2]} {dap/bf/branchStackData[3]} {dap/bf/branchStackData[4]} {dap/bf/branchStackData[5]} {dap/bf/branchStackData[6]} {dap/bf/branchStackData[7]} {dap/bf/branchStackData[8]} {dap/bf/branchStackData[9]} {dap/bf/branchStackData[10]} {dap/bf/branchStackData[11]} {dap/bf/branchStackData[12]} {dap/bf/branchStackData[13]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 8 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list {dap/uart/txBuf[0]} {dap/uart/txBuf[1]} {dap/uart/txBuf[2]} {dap/uart/txBuf[3]} {dap/uart/txBuf[4]} {dap/uart/txBuf[5]} {dap/uart/txBuf[6]} {dap/uart/txBuf[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 8 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list {dap/rxData[0]} {dap/rxData[1]} {dap/rxData[2]} {dap/rxData[3]} {dap/rxData[4]} {dap/rxData[5]} {dap/rxData[6]} {dap/rxData[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list dap/bf/bf_io_programAck]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list dap/bf/bf_io_programReady]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list dap/bf/bf_io_stdinAck]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list dap/bf/bf_io_stdoutAck]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list dap/bf/bf_io_stdoutReady]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list dap/io_leds_1_OBUF]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets sys_clk]
