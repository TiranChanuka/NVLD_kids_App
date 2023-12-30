import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nvld_app/color.dart';

class SplashScreenOne extends StatelessWidget {
  const SplashScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0), // Adjust padding values as needed
            child: Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(200),
              child: Container(
                decoration: BoxDecoration(
                  gradient: primaryGradient,
                  borderRadius: BorderRadius.circular(200),
                ),
                child: Lottie.asset('assets/animations/kidsworking.json'),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
