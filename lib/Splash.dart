import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:async';
import 'package:practice/Slider1.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();

    // Create a timer to wait for 5 seconds
    Timer(Duration(seconds: 3), () {
      // Navigate to another page after the timer expires
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>
              IntroScreen(), // Replace with the desired destination page
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SvgPicture.asset(
          "assets/cut.svg",
        ),
      ),
    );
  }
}
