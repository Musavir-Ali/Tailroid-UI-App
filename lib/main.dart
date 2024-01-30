import 'package:flutter/material.dart';
import 'package:practice/DetailPage.dart';
import 'package:practice/HomeScreen.dart';
import 'package:practice/Login_Screen.dart';
import 'package:practice/Splash.dart';
import 'package:practice/firstScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Splash());
  }
}
