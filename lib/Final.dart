import 'dart:async';

import 'package:flutter/material.dart';
import 'package:practice/firstScreen.dart';

class PaymentProcessingPage extends StatefulWidget {
  @override
  _PaymentProcessingPageState createState() => _PaymentProcessingPageState();
}

class _PaymentProcessingPageState extends State<PaymentProcessingPage> {
  @override
  void initState() {
    super.initState();
    // Start a timer for 2 seconds
    Timer(Duration(seconds: 2), () {
      // After 2 seconds, navigate to the success page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OrderPlacedPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.grey,
            elevation: 8,
            iconTheme: (IconThemeData(color: Colors.black)),
            title: const Row(
              children: [
                Text(
                  "Tailroid",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ],
            ),
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.black,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 20.0),
              Text('Processing Payment...'),
            ],
          ),
        ),
      ),
    );
  }
}

class OrderPlacedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.grey,
            elevation: 8,
            iconTheme: (IconThemeData(color: Colors.black)),
            title: const Row(
              children: [
                Center(
                  child: Text(
                    "Thank You!",
                    style: TextStyle(
                        fontWeight: FontWeight.w200, color: Colors.black),
                  ),
                ),
              ],
            ),
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.black,
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyWidget(),
                      ));
                },
              ),
            )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 100.0,
              ),
              SizedBox(height: 20.0),
              Text(
                'Your order is placed.',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
