import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Games extends StatelessWidget {
  const Games({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Load a Lottie file from your assets
          Lottie.asset('assets/animations/kidsworking.json'),

        ],
      ),
    );
  }
}
