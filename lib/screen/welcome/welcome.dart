// ignore_for_file: prefer_const_constructors_in_immutables
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:desktop_cafe/consts/config_size.dart';
import 'package:desktop_cafe/consts/window_button.dart';
import 'package:desktop_cafe/screen/drink/menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatefulWidget {
  Welcome({Key? key}) : super(key: key);
  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120.0),
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
            Text(
              "Welcome To RobotCafe",
              style: GoogleFonts.quicksand(
                fontSize: 56,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                letterSpacing: 1,
                textStyle: const TextStyle(
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: height * 0.25,
              width: width * 0.75,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(gborder * 4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(
                  kPadding * 2,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "1",
                        style: GoogleFonts.quicksand(
                          fontSize: 52,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          letterSpacing: 1,
                          textStyle: const TextStyle(
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      " Welcome To RobotCafe ! \n To Make Order Please Press Button Continence",
                      style: GoogleFonts.quicksand(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        letterSpacing: 1,
                        textStyle: const TextStyle(
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    RotationTransition(
                      turns: const AlwaysStoppedAnimation(15 / 360),
                      child: Container(
                        height: height,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(gborder),
                          image: const DecorationImage(
                            image: AssetImage('assets/image/flutter_01.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: height * 0.25,
              width: width * 0.75,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(gborder * 4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(
                  kPadding * 2,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "2",
                        style: GoogleFonts.quicksand(
                          fontSize: 52,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          letterSpacing: 1,
                          textStyle: const TextStyle(
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      " Tap On Item Cafe You Want ! \n Then Choose Sugar , Ice , Cup Level You Want \n That Depend On Drink Type",
                      style: GoogleFonts.quicksand(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        letterSpacing: 1,
                        textStyle: const TextStyle(
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                primary: Colors.grey,
                                shadowColor: Colors.grey,
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(gborder / 2),
                                ),
                              ),
                              onPressed: () {},
                              child: SizedBox(
                                height: 40,
                                child: Center(
                                  child: Text(
                                    "Ice Level",
                                    style: GoogleFonts.quicksand(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      letterSpacing: 1,
                                      textStyle: const TextStyle(
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                primary: Colors.grey,
                                shadowColor: Colors.grey,
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(gborder / 2),
                                ),
                              ),
                              onPressed: () {},
                              child: SizedBox(
                                height: 40,
                                child: Center(
                                  child: Text(
                                    "Tea Level",
                                    style: GoogleFonts.quicksand(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      letterSpacing: 1,
                                      textStyle: const TextStyle(
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                primary: Colors.grey,
                                shadowColor: Colors.grey,
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(gborder / 2),
                                ),
                              ),
                              onPressed: () {},
                              child: SizedBox(
                                height: 40,
                                child: Center(
                                  child: Text(
                                    "Sugar Level",
                                    style: GoogleFonts.quicksand(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      letterSpacing: 1,
                                      textStyle: const TextStyle(
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: height * 0.25,
              width: width * 0.75,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(gborder * 4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(
                  kPadding * 2,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "3",
                        style: GoogleFonts.quicksand(
                          fontSize: 52,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          letterSpacing: 1,
                          textStyle: const TextStyle(
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      " Then Tap Order Button ! \n To View Cafe Item Please Press Button Continence",
                      style: GoogleFonts.quicksand(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        letterSpacing: 1,
                        textStyle: const TextStyle(
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 400,
                      width: 300,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.grey,
                            shadowColor: Colors.grey,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(gborder / 2),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (c, a1, a2) => MenuPicking(),
                                transitionsBuilder: (c, anim, a2, child) =>
                                    FadeTransition(opacity: anim, child: child),
                                transitionDuration:
                                    const Duration(milliseconds: 2000),
                              ),
                            );
                          },
                          child: SizedBox(
                            height: 40,
                            width: 150,
                            child: Center(
                              child: Text(
                                "Continence",
                                style: GoogleFonts.quicksand(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  letterSpacing: 1,
                                  textStyle: const TextStyle(
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
