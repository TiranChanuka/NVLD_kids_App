import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../color.dart';
import 'package:google_fonts/google_fonts.dart';

class CardModel {
  final String title;
  final String imagePath;
  final String route;

  const CardModel(
      {required this.title, required this.imagePath, required this.route});
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<CardModel> cards = [
    CardModel(
      title: 'Magic Pattern',
      imagePath: 'assets/images/magic.jpg',
      route: '/feeling_explore',
    ),
    CardModel(
        title: 'Puzzle Planet',
        imagePath: 'assets/images/buildingblock.jpg',
        route: '/feeling_explore'),
    CardModel(
        title: 'Feelings Explorer',
        imagePath: 'assets/images/smile.jpg',
        route: '/feeling_explore'),
    CardModel(
        title: 'Doodle Dash',
        imagePath: 'assets/images/happy.jpg',
        route: '/feeling_explore'),
    CardModel(
        title: 'Bubble Pop Bliss',
        imagePath: 'assets/images/bubble.jpg',
        route: '/feeling_explore'),
    CardModel(
        title: 'My Day, My Way',
        imagePath: 'assets/images/dailyrout.jpg',
        route: '/feeling_explore'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: whitecolor,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/profile_pic.png'),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Welcome',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text('User Name',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Title section
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Adventure Learning Hub",
              style: GoogleFonts.sourceSans3(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: primaryColor,
              ),
            ),
          ),

          // GridView section
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
                                // Access card.imagePath within the card's widget tree
                                card.imagePath,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Text(
                                // Access card.title within the card's widget tree
                                card.title,
                                style: GoogleFonts.sourceSans3(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: quaternaryColor,
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
