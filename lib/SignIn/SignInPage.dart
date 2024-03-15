import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:nvld_app/NaviationBar.dart';
import 'package:nvld_app/SignUp/SignUpPage.dart';
import '../color.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isPasswordVisible = true;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  // http://10.0.2.2:8000
  final String backendUrl = 'http://localhost:3000/user/login'; // Replace with your backend URL

  Future<void> _signIn() async {
    final String username = _usernameController.text.trim();
    final String password = _passwordController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      // Show an error message if username or password is empty
      return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Please enter both username and password.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }

    try {
     // print(username);
      //print(password);
      final dio = Dio();
      // final response = await dio.get(backendUrl);
      final response = await dio.post(backendUrl, data: {'email': username, 'password': password});
      // print(response["data"]);
      // if (response.statusCode == 404){
      //   print("not found");
      // }
      // Extract name from the response and print it
      // final responseData = jsonDecode(response.data);
      // final name = responseData['data']['user']['name'];
      // print('Name: $name');

      if (response.statusCode == 200) {
        // Extract name from the response and print it
        final responseData = response.data;
        print(responseData);
        final user = responseData['data']['user'];
        print(user);
        final name = user['name'] as String; // Ensure it's treated as a String
        final _id = user['_id'] as String;
        final email = user['email'] as String;
        print('Name: $name');
        print(_id);


        // Successful sign-in, navigate to the home screen or any other destination
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NavigationBarBottom(
            name: name,
            id: _id,
            email: email,
          )),
        );
      } else {
        // Show an error message if sign-in fails
        _showErrorDialog('Sign-in failed. Please check your credentials.');
      }
    } catch (e) {
      print('Error: $e');
      _showErrorDialog('User Name or Password Incorrect.');
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
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
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Lottie.asset('assets/animations/sign.json'),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                hintText: 'Username',
                prefixIcon: Icon(Icons.person_outline_sharp, color: primaryColor),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: primaryColor, width: 2.0),
                ),
                // Remaining input decoration properties...
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: TextField(
              controller: _passwordController,
              obscureText: _isPasswordVisible,
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock_outline, color: primaryColor),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: primaryColor,
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
                // Remaining input decoration properties...
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: _signIn,
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ),
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
            },
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
