import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nvld_app/color.dart';

class Games extends StatelessWidget {
  const Games({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: whitecolor,
        title: Text(
          'Games',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: primaryColor,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(0),
            child: Lottie.asset('assets/animations/ani5.json'),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              'Games is a game that helps children with NVLD to improve their social skills.',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: primaryColor,
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              'Select Catagory',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  color: tertiaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
