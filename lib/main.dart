import 'package:desktop_cafe/screen/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'consts/constants.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: WindowBorder(
          color: borderColor,
          width: 1,
          child: Welcome(),
        ),
      ),
    ),
  );
  doWhenWindowReady(
    () {
      final win = appWindow;
      // const initialSize = Size(1050, 600);
      // win.minSize = initialSize;
      // win.size = initialSize;
      win.alignment = Alignment.center;
      win.title = "CafeX";
      win.show();
    },
  );
}
