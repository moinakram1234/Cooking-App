import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> receipts = [
    {'image': 'images/image1.jpg', 'name': 'Pasta Alfredo'},
    {'image': 'images/image2.jpg', 'name': 'Chicken Parmesan'},
    {'image': 'images/image3.jpg', 'name': 'Vegetarian Stir Fry'},
    {'image': 'images/image1.jpg', 'name': 'Pasta Alfredo'},
    {'image': 'images/image2.jpg', 'name': 'Chicken Parmesan'},
    {'image': 'images/image3.jpg', 'name': 'Vegetarian Stir Fry'},
    // Add more receipts as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  'New Recipes',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'sans-serif',
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 64, 64, 64),
                  ),
                ),
              ),
              Container(
                child: Text(
                  'view all',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'sans-serif',
                    fontWeight: FontWeight.normal,
                    color: const Color.fromARGB(255, 139, 132, 132),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: receipts.map((receipt) {
                return Container(
                  child: Column(
                    children: [
                      Container(
                        width: 100, // your desired width
                        height: 100, // your desired height
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.purple.withOpacity(0.1),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),

                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            receipt['image'],
                            width: 100, // Adjust the image width
                            height: 100, // Adjust the image height
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      MarqueeWidget(text: receipt['name']),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  'Recommended Recipes',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'sans-serif',
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 64, 64, 64),
                  ),
                ),
              ),
              Container(
                child: Text(
                  'view all',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'sans-serif',
                    fontWeight: FontWeight.normal,
                    color: const Color.fromARGB(255, 139, 132, 132),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: receipts.map((receipt) {
                return Container(
                  child: Column(
                    children: [
                      Container(
                        width: 190, // your desired width
                        height: 270, // your desired height
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.purple.withOpacity(0.1),
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            receipt['image'],
                            width: 100, // Adjust the image width
                            height: 100, // Adjust the image height
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      MarqueeWidget(text: receipt['name']),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class MarqueeWidget extends StatelessWidget {
  final String text;

  const MarqueeWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Adjust the width as needed
      child: Text(
        text,
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w600,
          color: Color.fromARGB(255, 56, 54, 54),
          shadows: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 3,

              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
      ),
    );
  }
}
