import 'package:flutter/material.dart';
import 'package:nvld_app/color.dart';
import './Screens/Homepage.dart';
import './Screens/GamePage.dart';
import './Screens/ProfilePage.dart';
import './Screens/StatPage.dart';

class NavigationBarBottom extends StatefulWidget {
  final String email;
  final String name;
  final String id;

  const NavigationBarBottom({
    Key? key,
    required this.email,
    required this.name,
    required this.id,
  }) : super(key: key);

  @override
  State<NavigationBarBottom> createState() => _NavigationBarBottomState();
}

class _NavigationBarBottomState extends State<NavigationBarBottom> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      HomeScreen(),
      Games(),
      Profile(email: widget.email, name: widget.name, id: widget.id),
      StatShow(),
    ];

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
              icon: Icon(Icons.videogame_asset),
              label: 'Games',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: 'Stats',
            ),
          ],
        ),
      ),
      body: pages[currentIndex],
    );
  }
}
