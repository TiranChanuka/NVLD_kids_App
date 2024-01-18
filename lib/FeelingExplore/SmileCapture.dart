import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color.dart';

class SmileCapture extends StatelessWidget {
  const SmileCapture({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: primaryColor,
        ),
        title: Text(
          'Capture Smile',
          style: GoogleFonts.sourceSans3(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}
