import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color.dart';

class SadCapture extends StatelessWidget {
  const SadCapture({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: primaryColor,
        ),
        title: Text(
          'Try Sad',
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
