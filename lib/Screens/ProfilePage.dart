import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 20,),
          Padding(padding: EdgeInsets.all(20),
          child: Text('Profile',
            style: GoogleFonts.sourceSans3(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: textColor,
            ),
          ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.grey,
                  width: 0,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
                crossAxisAlignment: CrossAxisAlignment.center, // Center content horizontally
                children: [
                  // Display user image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50.0), // Adjust as needed
                    child: Image.asset(
                      'assets/images/smile.png',
                      height: 100.0, // Adjust image height
                      width: 100.0, // Adjust image width
                      fit: BoxFit.cover, // Cover the entire area
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text('Name',
                  style: GoogleFonts.sourceSans3(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: textColor,
                  ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: Colors.grey,
                width: 0,
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: Text('Name',style: Theme.of(context).textTheme.bodySmall,overflow: TextOverflow.ellipsis,))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
