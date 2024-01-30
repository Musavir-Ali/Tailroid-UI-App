import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:practice/cart.dart';

class DetailPage extends StatefulWidget {
  final String item;
  DetailPage({required this.item});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<Slide> slides = [
    Slide(
      backgroundImage: ('assets/Shirt/Shirt1.jpg'),
      backgroundImageFit: BoxFit.fill,
    ),
    Slide(
      backgroundImage: ('assets/Shirt/Shirt2.jpg'),
      backgroundImageFit: BoxFit.fill,
    ),
    Slide(
      backgroundImage: ('assets/Shirt/Shirt3.jpg'),
      backgroundImageFit: BoxFit.fill,
    ),
  ];
  Color iconColor = Colors.white;
  String _selectedSize = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 8,
        iconTheme: (IconThemeData(color: Colors.black)),
        title: const Row(
          children: [
            Text(
              "Tailroid",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.favorite),
              color: iconColor,
              onPressed: () {
                setState(() {
                  iconColor = Colors.red;
                });
              },
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            child: IntroSlider(
              colorDot: Colors.white,
              slides: slides,
              showSkipBtn: false,
              showDoneBtn: false,
              showNextBtn: false,
              showPrevBtn: false,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Perfect Situation Long Sleeve Shirt",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "€12.34",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "This is our best seller for a reason. Relaxed, tailored and ultra-comfortable, you'll love the way you look in this durable, reliable classic.",
                ),
                SizedBox(height: 16),
                Text(
                  "Choose Your Color",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SelectableColorBox(color: Colors.brown),
                    SelectableColorBox(color: Colors.blue),
                    SelectableColorBox(color: Colors.grey),
                    SelectableColorBox(color: Colors.black),
                    SelectableColorBox(color: Colors.purple),
                    SelectableColorBox(color: Colors.yellow),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  "Select your size",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Radio<String>(
                      value: 'Small',
                      groupValue: _selectedSize,
                      onChanged: (value) {
                        setState(() {
                          _selectedSize = value!;
                        });
                      },
                    ),
                    Text(
                      'S',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    Radio<String>(
                      value: 'Medium',
                      groupValue: _selectedSize,
                      onChanged: (value) {
                        setState(() {
                          _selectedSize = value!;
                        });
                      },
                    ),
                    Text(
                      'M',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    Radio<String>(
                      value: 'Large',
                      groupValue: _selectedSize,
                      onChanged: (value) {
                        setState(() {
                          _selectedSize = value!;
                        });
                      },
                    ),
                    Text(
                      'L',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    Radio<String>(
                      value: 'Extra Large',
                      groupValue: _selectedSize,
                      onChanged: (value) {
                        setState(() {
                          _selectedSize = value!;
                        });
                      },
                    ),
                    Text(
                      'XL',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Handle the onPressed event for the first button
                },
                child: Text('Contact Seller'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle the onPressed event for the second button
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartScreen(),
                      ));
                },
                child: Text('Add to Cart'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Buy Now'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SelectableColorBox extends StatefulWidget {
  final Color color;

  SelectableColorBox({required this.color});

  @override
  _SelectableColorBoxState createState() => _SelectableColorBoxState();
}

class _SelectableColorBoxState extends State<SelectableColorBox> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        width: 30.0,
        height: 30.0,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(25.0),
          border: isSelected
              ? Border.all(
                  color: Colors.black,
                  width: 2.0,
                )
              : null,
        ),
      ),
    );
  }
}
