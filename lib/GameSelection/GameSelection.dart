import 'package:flutter/material.dart';

class GameSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a Game Activity'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Add padding to prevent overflow
        child: ListView(
          children: [
            GameOption(
              image: 'facial_expression_image.jpg',
              caption: 'Improve facial expression recognition with this game.',
              gameTitle: 'Facial Expression Recognition Game',
              route: '/facialExpressionGame',
            ),
            GameOption(
              image: 'drawing_lettering_image.jpg',
              caption: 'Enhance your drawing and lettering skills interactively.',
              gameTitle: 'Interactive Drawing and Lettering Challenge',
              route: '/drawingLetteringGame',
            ),
            GameOption(
              image: 'puzzle_solving_image.jpg',
              caption: 'Embark on a puzzle-solving adventure in this game.',
              gameTitle: 'Puzzle Solving Adventure Game',
              route: '/puzzleSolvingGame',
            ),
          ],
        ),
      ),
    );
  }
}

class GameOption extends StatelessWidget {
  final String image;
  final String caption;
  final String gameTitle;
  final String route;

  GameOption({
    required this.image,
    required this.caption,
    required this.gameTitle,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            caption,
            textAlign: TextAlign.center,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, route);
          },
          child: Text(gameTitle),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
