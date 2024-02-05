import 'package:flutter/material.dart';
import 'package:practice/DetailPage.dart';
import 'package:practice/cart.dart';

class MyWidget extends StatelessWidget {
  final List<String> images = [
    "assets/closet/Sweater.jpg",
    "assets/closet/Shirt.jpg",
    "assets/closet/pant.jpg",
    "assets/closet/suit.jpg",
    "assets/closet/cap.jpg",
    "assets/closet/trench coat.jpg",
    "assets/closet/t-shirt.jpg",
    "assets/closet/dress.jpg",
    "assets/closet/skirt.jpg",
    "assets/closet/Sheath Dress.jpg",
    "assets/closet/sock.jpg",
    "assets/closet/tie.jpg",
  ];

  final List<String> bottomTexts = [
    "Sweaters",
    "Shirts",
    "Pants",
    "Suits",
    "Caps",
    "Trench Coats",
    "T-Shirts",
    "Dress",
    "Skirts",
    "Sheath Dress",
    "Socks",
    "Tie",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 8,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(Icons.menu),
            color: Colors.black,
            onPressed: () {
              // Handle menu icon click
            },
          ),
        ),
        title: Row(
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
              icon: Icon(Icons.shopping_cart),
              color: Colors.black, // Cart icon
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              // Navigate to a new page when the grid item is tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(item: bottomTexts[index]),
                ),
              );
            },
            child:
                GridItem(image: images[index], bottomText: bottomTexts[index]),
          );
        },
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String image;
  final String bottomText;

  GridItem({required this.image, required this.bottomText});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              bottomText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
