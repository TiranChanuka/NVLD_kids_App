import 'package:flutter/material.dart';
import '../color.dart'; // assuming you have defined your colors in color.dart
import 'package:google_fonts/google_fonts.dart';

class CardModel {
  final String title;
  final String imagePath;
  final String route;

  const CardModel(
      {required this.title, required this.imagePath, required this.route});
}

class HomeScreen extends StatefulWidget {
  final String name;

  const HomeScreen({Key? key, required this.name}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<CardModel> cards = [
    const CardModel(
      title: 'Magic Pattern',
      imagePath: 'assets/images/magic.jpg',
      route: '/magic_pattern',
    ),
    const CardModel(
        title: 'Puzzle Planet',
        imagePath: 'assets/images/buildingblock.jpg',
        route: '/puzzel_planet'),
    const CardModel(
        title: 'Feelings Explorer',
        imagePath: 'assets/images/smile.jpg',
        route: '/feeling_explore'),
    const CardModel(
        title: 'Doodle Dash',
        imagePath: 'assets/images/happy.jpg',
        route: '/doodle_dash'),
    const CardModel(
        title: 'Bubble Pop Bliss',
        imagePath: 'assets/images/bubble.jpg',
        route: '/bubble_pop_bliss'),
    const CardModel(
        title: 'My Day, My Way',
        imagePath: 'assets/images/dailyrout.jpg',
        route: '/myday_myway'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/profile_pic.png'),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Adventure Learning Hub",
              style: GoogleFonts.sourceSans3(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Colors.black, // change primaryColor to Colors.black or any other color you desire
              ),
            ),
          ),

          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                for (var card in cards)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, card.route);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 10),
                      child: Card(
                        child: Column(
                          children: [
                            Expanded(
                              child: Image.asset(
                                card.imagePath,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Text(
                                card.title,
                                style: GoogleFonts.sourceSans3(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black, // change quaternaryColor to Colors.black or any other color you desire
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
