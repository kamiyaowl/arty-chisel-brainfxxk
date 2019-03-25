`timescale 1ns / 1ps

module top(
  input        clock_in, // @[:@872.4]
  output       io_uartTx, // @[:@874.4]
  input        io_uartRx, // @[:@874.4]
  input        io_switches_0, // @[:@874.4]
  input        io_switches_1, // @[:@874.4]
  input        io_switches_2, // @[:@874.4]
  input        io_switches_3, // @[:@874.4]
  output       io_leds_0, // @[:@874.4]
  output       io_leds_1, // @[:@874.4]
  output       io_leds_2, // @[:@874.4]
  output       io_leds_3, // @[:@874.4]
  output [2:0] io_triLed0, // @[:@874.4]
  output [2:0] io_triLed1, // @[:@874.4]
  output [2:0] io_triLed2, // @[:@874.4]
  output [2:0] io_triLed3 // @[:@874.4]
);

  wire sys_clk;
  wire locked;
  clk_wiz_0 clk0(
    .clk_out1(sys_clk), // 100MHz
    .locked(locked),
    .clk_in1(clock_in) // 100MHz single-ended pin
  );

  // sw[3]かPLLでリセットをかけるようにする
  reg reset;
  always @ (posedge sys_clk) begin
    if((io_switches_3 == 1'b1) || !locked) begin
      reset <= 1'b1;
    end else begin
      reset <= 1'b0;
    end
  end

  DebugAccessPort dap(
    .clock(sys_clk),
    .reset(reset),
    .io_uartTx(io_uartTx),
    .io_uartRx(io_uartRx),
    .io_switches_0(io_switches_0),
    .io_switches_1(io_switches_1),
    .io_switches_2(io_switches_2),
    .io_switches_3(io_switches_3),
    .io_leds_0(io_leds_0),
    .io_leds_1(io_leds_1),
    .io_leds_2(io_leds_2),
    .io_leds_3(io_leds_3),
    .io_triLed0(io_triLed0),
    .io_triLed1(io_triLed1),
    .io_triLed2(io_triLed2),
    .io_triLed3(io_triLed3)
  );
endmodule
