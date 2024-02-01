import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:nvld_app/NaviationBar.dart';
import 'package:nvld_app/SignUp/SignUpPage.dart';

import '../color.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // ClipPath(
          //   clipper: MyClipperSignin(),
          //   child: Container(
          //     padding: const EdgeInsets.symmetric(horizontal: 10),
          //     height: MediaQuery.of(context).size.height / 4,
          //     width: double.infinity,
          //     decoration: const BoxDecoration(
          //       gradient: LinearGradient(
          //         begin: Alignment.topRight,
          //         end: Alignment.bottomLeft,
          //         colors: [
          //           Color(0xFF3383CD),
          //           Color(0xFF11249F),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Text(
              'Sign in',
              style: GoogleFonts.sourceSans3(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Lottie.asset('assets/animations/sign.json'),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Username',
                prefixIcon: Icon(Icons.person_outline_sharp,color: primaryColor,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: primaryColor,
                      width: 2.0), // Red border for all states
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      10), // Match the radius for consistency
                  borderSide: BorderSide(
                      color: primaryColor,
                      width: 2.0), // Ensure red in enabled state
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      10), // Match the radius for consistency
                  borderSide: BorderSide(
                      color: primaryColor,
                      width: 2.0), // Ensure red in focused state
                ),
              ),
            ),
          ),

          SizedBox(height: 20), // Adjust spacing as needed
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: TextField(
              obscureText: _isPasswordVisible, // Initially hide password
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock_outline,color: primaryColor,),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,color: primaryColor,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: primaryColor, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: primaryColor, width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: primaryColor, width: 2.0),
                ),
              ),
            ),
          ),

          SizedBox(height: 20),
          // Login button (replace placeholders with your styling and functionality)
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NavigationBarBottom()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          // Forget password option (replace placeholders with your functionality)
          TextButton(
            onPressed: () {}, // Define forget password action here
            child: Text(
              'Forgot Password?',
              style: GoogleFonts.sourceSans3(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: primaryColor,
              ),
            ),
          ),
          Center(
            child: Text(
              'Do you have an account?',
              style: GoogleFonts.sourceSans3(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: textColor,
              ),
            ),
          ),

          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignUp()),
              );
            }, // Define forget password action here
            child: Text(
              'Sign up',
              style: GoogleFonts.sourceSans3(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyClipperSignin extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
