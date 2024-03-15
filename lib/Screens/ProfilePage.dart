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
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Profile',
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
                  color: Colors.white,
                  width: 0,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey
                        .withOpacity(0.3), // Shadow color with opacity
                    offset: Offset(
                        4.0, 4.0), // Distance the shadow is offset from the box
                    blurRadius: 5.0, // How blurry the shadow is
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center content vertically
                crossAxisAlignment:
                    CrossAxisAlignment.center, // Center content horizontally
                children: [
                  // Display user image
                  ClipRRect(
                    borderRadius:
                        BorderRadius.circular(50.0), // Adjust as needed
                    child: Image.asset(
                      'assets/images/smile.png',
                      height: 100.0, // Adjust image height
                      width: 100.0, // Adjust image width
                      fit: BoxFit.cover, // Cover the entire area
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  IconButton(icon: Icon(Icons.edit), onPressed: () {}),
                  Text(
                    'Name',
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
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.white,
                  width: 0,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey
                        .withOpacity(0.3), // Shadow color with opacity
                    offset: Offset(
                        4.0, 4.0), // Distance the shadow is offset from the box
                    blurRadius: 5.0, // How blurry the shadow is
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text('Personal Information',
                      style: Theme.of(context).textTheme.headline6),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Name:',
                        style: Theme.of(context).textTheme.bodyMedium,
                        overflow: TextOverflow.ellipsis,
                      )),
                      Expanded(
                          child: Text(
                        'Jhone Doe',
                        style: Theme.of(context).textTheme.bodySmall,
                        overflow: TextOverflow.ellipsis,
                      )),
                      Expanded(
                        child: IconButton(
                            icon: Icon(Icons.arrow_forward_ios_outlined),
                            onPressed: () {}),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Age:',
                        style: Theme.of(context).textTheme.bodyMedium,
                        overflow: TextOverflow.ellipsis,
                      )),
                      Expanded(
                          child: Text(
                        '6',
                        style: Theme.of(context).textTheme.bodySmall,
                        overflow: TextOverflow.ellipsis,
                      )),
                      Expanded(
                        child: IconButton(
                            icon: Icon(Icons.arrow_forward_ios_outlined),
                            onPressed: () {}),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        'DOB:',
                        style: Theme.of(context).textTheme.bodyMedium,
                        overflow: TextOverflow.ellipsis,
                      )),
                      Expanded(
                          child: Text(
                        '2000-10-03',
                        style: Theme.of(context).textTheme.bodySmall,
                        overflow: TextOverflow.ellipsis,
                      )),
                      Expanded(
                        child: IconButton(
                            icon: Icon(Icons.arrow_forward_ios_outlined),
                            onPressed: () {}),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Gender',
                        style: Theme.of(context).textTheme.bodyMedium,
                        overflow: TextOverflow.ellipsis,
                      )),
                      Expanded(
                          child: Text(
                        'Male',
                        style: Theme.of(context).textTheme.bodySmall,
                        overflow: TextOverflow.ellipsis,
                      )),
                      Expanded(
                        child: IconButton(
                            icon: Icon(Icons.arrow_forward_ios_outlined),
                            onPressed: () {}),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Name:',
                        style: Theme.of(context).textTheme.bodyMedium,
                        overflow: TextOverflow.ellipsis,
                      )),
                      Expanded(
                          child: Text(
                        'Jhone Doe',
                        style: Theme.of(context).textTheme.bodySmall,
                        overflow: TextOverflow.ellipsis,
                      )),
                      Expanded(
                        child: IconButton(
                            icon: Icon(Icons.arrow_forward_ios_outlined),
                            onPressed: () {}),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Name:',
                        style: Theme.of(context).textTheme.bodyMedium,
                        overflow: TextOverflow.ellipsis,
                      )),
                      Expanded(
                          child: Text(
                        'Jhone Doe',
                        style: Theme.of(context).textTheme.bodySmall,
                        overflow: TextOverflow.ellipsis,
                      )),
                      Expanded(
                        child: IconButton(
                            icon: Icon(Icons.arrow_forward_ios_outlined),
                            onPressed: () {}),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
