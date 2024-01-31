import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color.dart';
import 'ShapesMatchGame.dart';
class MagicPatternHome extends StatelessWidget {
  const MagicPatternHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: primaryColor,
        ),
        title: Text(
          'Build Pattern',
          style: GoogleFonts.sourceSans3(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: primaryColor,
          ),
        ),
      ),
      body: Column(
        children: [
          ElevatedButton(
            child: Text('TicTac'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ShapesMatchGameScreen()),
              );
              print('Button pressed!');
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.blue, // Background color
              onPrimary: Colors.white, // Text color
              elevation: 5, // Shadow elevation
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Corner rounding
              ),
            ),
          )
        ],
      ),
    );
  }
}
