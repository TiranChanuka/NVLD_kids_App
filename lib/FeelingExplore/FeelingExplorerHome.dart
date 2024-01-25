import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:nvld_app/FeelingExplore/AngryCapture.dart';
import '../color.dart';
import 'SadCapture.dart';
import 'SmileCapture.dart';

class FeelingExplorer extends StatelessWidget {
  const FeelingExplorer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: primaryColor,
        ),
        title: Text(
          'Feeling Explorer',
          style: GoogleFonts.sourceSans3(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: primaryColor,
          ),
        ),
      ),
      body: ListView(
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(left: 20, right: 20),
          //   child: Lottie.asset('assets/animations/ani2.json',
          //       width: 300, height: 300),
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              'In the silence of expression, emotions speak louder than words',
              style: GoogleFonts.sourceSans3(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: primaryColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Text(
              'Select Expression',
              textAlign: TextAlign.center,
              style: GoogleFonts.sourceSans3(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: tertiaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SmileCapture(), // Replace with your desired screen
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset('assets/images/smile.png'),
            ),
          ),

          SizedBox(height: 20,),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SadCapture(), // Replace with your desired screen
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset('assets/images/sad.png'),
            ),
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AngryCapture(), // Replace with your desired screen
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset('assets/images/angry.png'),
            ),
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
