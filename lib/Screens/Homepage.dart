import 'package:flutter/material.dart';
import '../color.dart';
import 'package:google_fonts/google_fonts.dart';

class CardModel {
  final String title;
  final String imagePath; // Add a property for the image path

  const CardModel({required this.title, required this.imagePath});
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<CardModel> cards = [
    CardModel(title: 'Magic Pattern', imagePath: 'assets/images/magic.jpg'),
    CardModel(
        title: 'Puzzle Planet', imagePath: 'assets/images/buildingblock.jpg'),
    CardModel(title: 'Feelings Explorer', imagePath: 'assets/images/smile.jpg'),
    CardModel(title: 'Doodle Dash', imagePath: 'assets/images/happy.jpg'),
    CardModel(title: 'Bubble Pop Bliss', imagePath: 'assets/images/bubble.jpg'),
    CardModel(
        title: 'My Day, My Way', imagePath: 'assets/images/dailyrout.jpg'),

    // ... add more cards with image paths
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      appBar: AppBar(
        backgroundColor: whitecolor,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20, // Adjust the radius as needed
              backgroundImage: AssetImage(
                  'assets/profile_pic.png'), // Replace with your image path
            ),
            const SizedBox(width: 10), // Add spacing between elements
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Welcome',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
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
                  Card(
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
                              color: quaternaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: whitecolor,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //       backgroundColor: Colors.black,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.gamepad),
      //       label: 'Games',
      //       backgroundColor: Colors.black,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.bar_chart),
      //       label: 'stat',
      //       backgroundColor: Colors.black,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //       backgroundColor: Colors.black,
      //     ),
      //   ],
      // ),
    );
  }
}
