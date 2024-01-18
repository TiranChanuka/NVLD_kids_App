import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color.dart';

class BubblePopBliss extends StatelessWidget {
  const BubblePopBliss({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: primaryColor,
        ),
        title: Text(
          'Mindfulness and relaxation',
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
