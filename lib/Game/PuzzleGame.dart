import 'package:flutter/material.dart';

class PuzzleGame extends StatefulWidget {
  @override
  _PuzzleGameState createState() => _PuzzleGameState();
}

class _PuzzleGameState extends State<PuzzleGame> {
  List<int> puzzle = [1, 2, 3, 4, 5, 6, 7, 8, 0]; // Initial puzzle configuration

  void moveTile(int index) {
    int blankIndex = puzzle.indexOf(0);
    if (index - 1 == blankIndex ||
        index + 1 == blankIndex ||
        index - 3 == blankIndex ||
        index + 3 == blankIndex) {
      setState(() {
        puzzle[index] = 0;
        puzzle[blankIndex] = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Puzzle Game'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
        ),
        itemCount: 9,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => moveTile(index),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: puzzle[index] == 0 ? Colors.grey : Colors.lightBlue,
              ),
              child: Center(
                child: Text(
                  puzzle[index].toString(),
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
