import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './Otherpages/MusicPage.dart';
import '../color.dart';
import 'Otherpages/musicPlayer.dart';

class BubblePopBliss extends StatelessWidget {
  const BubblePopBliss({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
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
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Image.asset('assets/images/mindrelax.png'),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Card(
                color: cardColor,
                child: InkWell(
                  // Wrap the Row with InkWell
                  onTap: () {
                    // Navigate to the music page
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MusicHomeScreen()));
                  },
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
                          ),
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
              )),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Card(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
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
                        )),
                  ),
                  const Expanded(
                    flex: 2, // Adjust ratio as needed
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'Deep Breathing Exercises',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
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
                        )),
                  ),
                  const Expanded(
                    flex: 2, // Adjust ratio as needed
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'Nature Walks',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
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
                        )),
                  ),
                  const Expanded(
                    flex: 2, // Adjust ratio as needed
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'Art Therapy',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
