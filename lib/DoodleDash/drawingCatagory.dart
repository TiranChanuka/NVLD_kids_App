import 'package:flutter/material.dart';

import '../color.dart';
import 'drawing.dart';
import 'drawingCircle.dart';
import 'drawingTriangle.dart';

class Drawingcatagory extends StatelessWidget {
  const Drawingcatagory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Draw Shapes'),
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(20),
          child: Image.asset('assets/images/shape.png'),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Text(
              'Select Catagory',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  color: tertiaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DrawingBoardCircle(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset('assets/images/dc.png'),
            ),
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DrawingBoard(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset('assets/images/dr.png'),
            ),
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DrawingBoardTriangle(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset('assets/images/dt.png'),
            ),
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
