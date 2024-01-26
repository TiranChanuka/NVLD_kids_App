import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color.dart';

class BubblePopBliss extends StatelessWidget {
  const BubblePopBliss({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: primaryColor,
        ),
        title: Text(
          'Mindfulness and relaxation',
          style: GoogleFonts.sourceSans3(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: primaryColor,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,),
            child: Image.asset('assets/images/mindrelax.png'),
          ),
          SizedBox(height: 20,),
          Padding(padding: const EdgeInsets.only(left: 20,right: 20),
            child: Card(
              color: cardColor,
              child: Row(
                children: [
                  Expanded(
                    flex: 1, // Adjust ratio as needed
                    child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            'assets/images/smile.jpg',
                            width: 50,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        )
                    ),
                  ),
                  Expanded(
                    flex: 2, // Adjust ratio as needed
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Listen Musics',
                        style: GoogleFonts.sourceSans3(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: textColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(padding: const EdgeInsets.only(left: 20,right: 20),
            child: Card(
              child: Row(
                children: [
                  Expanded(
                    flex: 1, // Adjust ratio as needed
                    child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            'assets/images/smile.jpg',
                            width: 50,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        )
                    ),
                  ),
                  Expanded(
                    flex: 2, // Adjust ratio as needed
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Card Title',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(padding: const EdgeInsets.only(left: 20,right: 20),
            child: Card(
              child: Row(
                children: [
                  Expanded(
                    flex: 1, // Adjust ratio as needed
                    child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            'assets/images/smile.jpg',
                            width: 50,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        )
                    ),
                  ),
                  Expanded(
                    flex: 2, // Adjust ratio as needed
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Card Title',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(padding: const EdgeInsets.only(left: 20,right: 20),
            child: Card(
              child: Row(
                children: [
                  Expanded(
                    flex: 1, // Adjust ratio as needed
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          'assets/images/smile.jpg',
                          width: 50,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      )
                    ),
                  ),
                  Expanded(
                    flex: 2, // Adjust ratio as needed
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Card Title',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
