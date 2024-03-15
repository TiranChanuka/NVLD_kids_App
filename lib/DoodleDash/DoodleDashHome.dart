import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../color.dart';
import 'drawing.dart';
import 'drawingCatagory.dart';

class DoodleDashHome extends StatelessWidget {
  const DoodleDashHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: primaryColor,
        ),
        // title: Text(
        //   'Doodle Dash',
        //   style: GoogleFonts.sourceSans3(
        //     fontSize: 24,
        //     fontWeight: FontWeight.w700,
        //     color: primaryColor,
        //   ),
        // ),
      ),
      body: ListView(
        children: [
          Text(
            'Fine Motor Skills Challenges',
            textAlign: TextAlign.center,
            style: GoogleFonts.sourceSans3(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: primaryColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Lottie.asset('assets/animations/ball.json',
                width: 300, height: 300),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              'Drawing, tracing, or drag-and-drop tasks',
              style: GoogleFonts.sourceSans3(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: primaryColor,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
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
          SizedBox(height: 10,),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Drawingcatagory(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset('assets/images/drawin.png'),
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
              child: Image.asset('assets/images/drag.png'),
            ),
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
