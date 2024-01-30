import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:practice/HomeScreen.dart';
import 'package:flutter_svg/svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroScreen(),
    );
  }
}

class IntroScreen extends StatelessWidget {
  List<Slide> slides = [
    Slide(
      description: "Jimmy Chuka exploring new spring sweater collection",
      marginDescription: EdgeInsets.only(top: 270),
      styleDescription: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 20,
      ),
      centerWidget: Image.asset(
        "assets/Vector.png",
        height: 60,
        width: 60,
      ),
      backgroundImage: ('assets/philip-martin-5aGUyCW_PJw-unsplash.jpg'),
      backgroundImageFit: BoxFit.cover,
    ),
    Slide(
        title: "Tailroid",
        styleTitle: const TextStyle(fontSize: 30),
        centerWidget: Image.asset(
          "assets/Vector.png",
          height: 60,
          width: 60,
        ),
        backgroundImage: ('assets/ayo-ogunseinde-6W4F62sN_yI-unsplash.jpg'),
        backgroundImageFit: BoxFit.fill),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      colorDot: Colors.white,
      slides: slides,
      onDonePress: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      },
      onSkipPress: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      },
    );
  }
}
