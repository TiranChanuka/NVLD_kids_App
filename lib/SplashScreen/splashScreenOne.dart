import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nvld_app/color.dart';
import '../NaviationBar.dart';


class SplashScreenOne extends StatelessWidget {
  const SplashScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.all(20.0), // Adjust padding values as needed
            child: Material(
              // elevation: 2,
              // borderRadius: BorderRadius.circular(200),
              // child: Container(
              //   decoration: BoxDecoration(
              //     gradient: primaryGradient,
              //     borderRadius: BorderRadius.circular(200),
              //   ),
              child: Lottie.asset('assets/animations/kidsworking.json'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Welcome to Kids',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Kids is a game that helps children with NVLD to improve their social skills.',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: primaryColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NavigationBarBottom()),
                );
              },
              child: Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: primaryColor,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
