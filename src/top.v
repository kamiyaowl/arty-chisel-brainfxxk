`timescale 1ns / 1ps

module top(
  input        clock_in, // @[:@872.4]
  input        reset, // @[:@873.4]
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
  wire reset;
  clk_wiz_0 clk0(
    .clk_out1(sys_clk), // 100MHz
    .locked(locked),
    .clk_in1(clock_in) // 100MHz single-ended pin
  );
  assign reset = (!locked) | (io_switches_3); // PLLアンロック及びSW3で同期リセット

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
