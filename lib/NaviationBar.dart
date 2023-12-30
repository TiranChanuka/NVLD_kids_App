import 'package:flutter/material.dart';
import 'package:nvld_app/color.dart';
import './Screens/Homepage.dart';
import './Screens/GamePage.dart';
import './Screens/ProfilePage.dart';
import './Screens/StatPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationBarBottom extends StatefulWidget {
  const NavigationBarBottom({super.key});
  @override
  State<NavigationBarBottom> createState() => _NavigationBarBottomState();
}

class _NavigationBarBottomState extends State<NavigationBarBottom> {
  int currentIndex = 0;
  List Pages = const [
    HomeScreen(),
    Games(),
    Profile(),
    StatShow(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 1,
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: tertiaryColor,
          unselectedItemColor: primaryColor,
          selectedFontSize: 15,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w700),
          showUnselectedLabels: true,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_esports),
              label: 'Games',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_sharp),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.analytics),
              label: 'Stats',
            ),
          ],
        ),
      ),
      body: Pages[currentIndex],
    );
  }
}
