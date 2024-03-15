import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../color.dart';

class SmileCapture extends StatelessWidget {
  const SmileCapture({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: primaryColor,
        ),
        title: Text(
          'Smile to Camera',
          style: GoogleFonts.sourceSans3(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: primaryColor,
          ),
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(child: Lottie.asset('assets/animations/smile.json',
                  width: 160, height: 160),),
              Expanded(child: Text('When you Smile.you are so Beautiful 😄',style: GoogleFonts.sourceSans3(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: textColor,
              ),))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text('Try smile to camera',
                style: GoogleFonts.sourceSans3(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: textColor,
                ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}
