// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:desktop_cafe/consts/constants.dart';
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

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
        preferredSize: const Size.fromHeight(100.0), // here the desired height
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
            AnimatedToggleSwitch<int>.size(
              current: value,
              values: const [0, 1, 2, 3],
              iconOpacity: 0.2,
              indicatorSize: const Size.fromWidth(100),
              indicatorAnimationType: AnimationType.onHover,
              indicatorType: IndicatorType.roundedRectangle,
              indicatorColor: Colors.white,
              borderColor: Colors.transparent,
              colorBuilder: (i) => i.isEven ? Colors.amber : Colors.red,
              onChanged: (i) => setState(
                () => value = i,
              ),
              iconBuilder: (i, size, active) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$i',
                      style: TextStyle(
                        color: active ? Colors.white : Colors.black,
                      ),
                    ),
                    alternativeIconBuilder(
                      i,
                      size,
                      active,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(value),
      ),
    );
  }

  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  Widget alternativeIconBuilder(int i, Size size, bool active) {
    IconData data = Icons.access_time_rounded;
    switch (i) {
      case 0:
        data = Icons.ac_unit_outlined;
        break;
      case 1:
        data = Icons.account_circle_outlined;
        break;
      case 2:
        data = Icons.assistant_navigation;
        break;
      case 3:
        data = Icons.arrow_drop_down_circle_outlined;
        break;
    }
    return Icon(
      data,
      size: size.shortestSide,
      color: active ? Colors.white : Colors.black,
    );
  }
}

class WindowButtons extends StatelessWidget {
  const WindowButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(colors: buttonColors),
        MaximizeWindowButton(colors: buttonColors),
        CloseWindowButton(colors: closeButtonColors),
      ],
    );
  }
}
