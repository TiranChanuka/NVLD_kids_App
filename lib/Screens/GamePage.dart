import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nvld_app/color.dart';

class Games extends StatelessWidget {
  const Games({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Games',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
          ),
          Lottie.asset('assets/animations/play.json'),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Games is a game that helps children with NVLD to improve their social skills.',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: quaternaryColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Select Catagory',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    color: tertiaryColor,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
