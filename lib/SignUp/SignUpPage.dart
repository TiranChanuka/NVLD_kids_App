import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../SignIn/SignInPage.dart';
import '../color.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Text(
              'Sign Up',
              style: GoogleFonts.sourceSans3(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: primaryColor,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(0),
            child: Lottie.asset(
              'assets/animations/signup.json',
              width: 250,
              height: 250,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Full Name',
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
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon: Icon(Icons.email_outlined,color: primaryColor,),
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

          SizedBox(
            height: 20,
          ),
          // Declare a state variable to control password visibility
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: TextField(
              obscureText: _isPasswordVisible, // Initially hide the password
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

          SizedBox(
            height: 20,
          ),
          // Declare a state variable to control password visibility
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: TextField(
              obscureText: _isPasswordVisible, // Initially hide the password
              decoration: InputDecoration(
                hintText: 'Confirm Password',
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
                  MaterialPageRoute(builder: (context) => const SignIn()),
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
                'Sign Up',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account? ',
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignIn()),
                  );
                }, // Define forget password action here
                child: Text(
                  'Sign In',
                  style: GoogleFonts.sourceSans3(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyClipperSignup extends CustomClipper<Path> {
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
