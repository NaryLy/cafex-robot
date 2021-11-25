// ignore_for_file: prefer_const_constructors_in_immutables
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:desktop_cafe/consts/config_size.dart';
import 'package:desktop_cafe/consts/window_button.dart';
import 'package:desktop_cafe/screen/drink/cold/colddrink.dart';
import 'package:desktop_cafe/screen/drink/hot/hotdrink.dart';
import 'package:desktop_cafe/screen/drink/juice/juice.dart';
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatefulWidget {
  Welcome({Key? key}) : super(key: key);
  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: Column(
          children: [
            WindowTitleBarBox(
              child: Row(
                children: [
                  Expanded(
                    child: MoveWindow(),
                  ),
                  const WindowButtons()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding * 3),
              child: AnimatedToggleSwitch<int>.size(
                current: value,
                values: const [0, 1, 2],
                iconOpacity: 0.2,
                indicatorSize: const Size.fromWidth(double.infinity),
                iconAnimationType: AnimationType.onHover,
                iconAnimationCurve: Curves.bounceIn,
                indicatorAnimationType: AnimationType.onHover,
                indicatorType: IndicatorType.roundedRectangle,
                indicatorColor: Colors.white,
                borderColor: Colors.transparent,
                colorBuilder: (i) =>
                    i.isEven ? Colors.blueGrey : Colors.lightBlue,
                borderRadius: BorderRadius.circular(gborder),
                onChanged: (i) => setState(
                  () => value = i,
                ),
                iconBuilder: (i, size, active) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      textBuilder(
                        i,
                        size,
                        active,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(value),
    );
  }

  final List _widgetOptions = const [
    HotDrink(),
    ColdDrink(),
    Juice(),
  ];

  Widget textBuilder(int i, Size size, bool active) {
    String? data;
    switch (i) {
      case 0:
        data = "Hot Drink";
        break;
      case 1:
        data = "Cold Drink";
        break;
      case 2:
        data = "Juice";
        break;
    }
    return Text(
      '$data',
      style: GoogleFonts.quicksand(
        fontSize: active ? size.longestSide / 2 : size.longestSide / 2,
        fontWeight: FontWeight.w600,
        letterSpacing: 1,
        color: active ? Colors.white : Colors.black,
      ),
    );
  }
}

Widget iconBuilder(int i, Size size, bool active) {
  IconData data = Icons.access_time_rounded;
  if (i.isEven) data = Icons.cancel;
  return Icon(
    data,
    size: size.shortestSide,
  );
}
