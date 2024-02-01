import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../color.dart';
class MyDayMyWay extends StatelessWidget {
  const MyDayMyWay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: primaryColor,
        ),
        title: Text(
          'Visual schedule empowers',
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
          child: Lottie.asset('assets/animations/ani1.json',
              width: 300, height: 300),
        ),

        ],
      ),
    );
  }
}
