# arty-chisel-brainfxxk
BrainFxxk Processor on Arty A7

![preview](https://user-images.githubusercontent.com/4300987/55052799-7c7a7b00-509d-11e9-995d-fb8071305202.gif)

# 描画例

## FizzBuzz

![image](https://pbs.twimg.com/media/D2kJbRzU0AAB1rh.png:large)

## Mandelbrot

![image](https://pbs.twimg.com/media/D2kPLafVYAATBDO.png:large)


# これは何

ScalaでHDLが記述できるChisel3で実装されたハードウェアbrainfuck言語処理系です。

* [scalaのソースコード](https://github.com/kamiyaowl/chisel-practice/tree/94dd3a965d3c9fc8dd75394450032b482ac794e5/src/main/scala/bf)
* [scalaから合成したHDL](https://github.com/kamiyaowl/chisel-practice/blob/94dd3a965d3c9fc8dd75394450032b482ac794e5/bf/DebugAccessPort.v)

本プロジェクトはDigilent社から販売されている[Arty A7](https://store.digilentinc.com/arty-a7-artix-7-fpga-development-board-for-makers-and-hobbyists/)をターゲットにしています。

# 書き込み

本プロジェクトをVivado 2018.3以降で開いて合成するか、[top.bit](https://github.com/kamiyaowl/arty-chisel-brainfxxk/blob/master/viavdo/arty-chisel-brainfxxk.runs/impl_1/top.bit)を書き込みます

# 実行手順

* Arty A7にはUSB-UARTがついているので、シリアルコンソールを何かしらの方法で開きます。
    * baud: 115200, stopbit:1, parity: none
* SW0(一番右のスライドスイッチ)を上にスライドするとプログラム書き込みモードになります
* シリアルコンソールに実行したいプログラムを貼り付けます
    * 転送されたプログラムはループバックされ、シリアルコンソール上に表示されます
* SW0を下にスライドします
* SW1を上にスライドするとプログラムが実行されます
* LD7(一番左の緑色LED)が点灯したらプログラム実行完了です



