import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WordGuessingGame(),
    );
  }
}

class WordGuessingGame extends StatefulWidget {
  @override
  _WordGuessingGameState createState() => _WordGuessingGameState();
}

class _WordGuessingGameState extends State<WordGuessingGame> {
  List<String> words = [
    'FRIEND',
    'SCHOOL',
    'COMPUTER',
    'TEACHER',
    'READING',
    'MUSIC',
    'LUNCH',
    'FAMILY',
    'HAPPY',
    'COLORS',
    // Add more words
  ];

  late String currentWord;
  late List<String> revealedWord;
  TextEditingController inputController = TextEditingController();
  int attempts = 0;
  int score = 0;

  @override
  void initState() {
    super.initState();
    startNewGame();
  }

  void startNewGame() {
    if (words.isEmpty) {
      // All words completed, reset the game
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Congratulations! You completed all words.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  resetGame();
                },
                child: Text('Reset Game'),
              ),
            ],
          );
        },
      );
    } else {
      currentWord = words.removeAt(0).toUpperCase(); // Remove and use the first word
      revealedWord = List<String>.generate(currentWord.length, (index) => (index == 0) ? currentWord[0] : '_');
      inputController.clear();
      attempts = 0;

      // Use Future.delayed to show the dialog after the widget is fully initialized
      Future.delayed(Duration.zero, () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Next Word: $currentWord'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Start'),
                ),
              ],
            );
          },
        );
      });
    }
  }

  void resetGame() {
    setState(() {
      words = [
        'FRIEND',
        '',
        '',
        'COLORS',
        // Add more words
      ];
      score = 0;
    });
    startNewGame();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Word Guessing Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Attempts: $attempts'),
            SizedBox(height: 20),
            Text(revealedWord.join(' '), style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            TextField(
              controller: inputController,
              maxLength: 1,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
              decoration: InputDecoration(
                hintText: 'Enter a letter',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                checkAnswer();
              },
              child: Text('Submit'),
            ),
            SizedBox(height: 20),
            Text('Score: $score'),
          ],
        ),
      ),
    );
  }

  void checkAnswer() {
    setState(() {
      String guess = inputController.text.toUpperCase();
      bool correctGuess = false;

      for (int i = 0; i < currentWord.length; i++) {
        if (currentWord[i] == guess) {
          revealedWord[i] = guess;
          correctGuess = true;
        }
      }

      if (!correctGuess) {
        attempts++;
      }

      if (revealedWord.join() == currentWord) {
        score++;
        showResultDialog('Congratulations! You guessed the word.');
      } else if (attempts >= 6) {
        showResultDialog('Sorry, you ran out of attempts. The correct word was: $currentWord');
      }
    });
  }

  void showResultDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                startNewGame();
              },
              child: Text('Next Word'),
            ),
          ],
        );
      },
    );
  }
}


