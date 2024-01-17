import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../color.dart';

class FeelingExplorer extends StatelessWidget {
  const FeelingExplorer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: primaryColor,
        ),
        title: Text('Feeling Explorer',
        style: GoogleFonts.sourceSans3(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: primaryColor,
        ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Lottie.asset('assets/animations/ani2.json',width: 300,height: 300),
          ),
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
          Padding(padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
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
          SizedBox(height: 20,),
          Padding(padding: const EdgeInsets.only(left: 20,right: 20),
          child: Card(
            elevation: 4, // Adds soft shadow
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16), // Adjust corner radius
            ),
            clipBehavior: Clip.antiAlias, // Prevents image pixelation
            child: Stack(
              children: [
                // Background image
                Image.asset(
                  'assets/images/smile.jpg',
                  fit: BoxFit.cover,
                ),
                // Text overlay with transparent background
                Positioned(
                  bottom: 10, // Adjust text position
                  left: 10, // Adjust text position
                  child: Text(
                    'Feeling Capture',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white, // Adjust text color
                      // Apply transparency for text overlay
                      background: Paint()
                        ..color = Colors.black.withOpacity(0.7), // Adjust transparency
                    ),
                  ),
                ),
              ],
            ),
          ),
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
