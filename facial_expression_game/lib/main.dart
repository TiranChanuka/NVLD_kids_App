import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FacialExpressionGame(),
    );
  }
}

class FacialExpressionGame extends StatefulWidget {
  @override
  _FacialExpressionGameState createState() => _FacialExpressionGameState();
}

class _FacialExpressionGameState extends State<FacialExpressionGame> {
  int currentQuestionIndex = 0;
  List<Map<String, String>> questions = [
    {'image': 'assets/happy_face.jpg', 'answer': 'Happy'},
    {'image': 'assets/sad_face.jpg', 'answer': 'Sad'},
    {'image': 'assets/angry_face.jpg', 'answer': 'Angry'},
    {'image': 'assets/surprised_face.jpg', 'answer': 'Surprised'},
    // Add questions 
  ];

  String selectedExpression = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facial Expression Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              questions[currentQuestionIndex]['image']!,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    buildAnswerButton('Happy'),
    SizedBox(width: 10), 
    buildAnswerButton('Sad'),
    SizedBox(width: 10), 
    buildAnswerButton('Angry'),
    SizedBox(width: 10), 
    buildAnswerButton('Surprised'),
  ],
),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                checkAnswer();
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildAnswerButton(String answer) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          selectedExpression = answer;
        });
      },
      style: ElevatedButton.styleFrom(
        primary: selectedExpression == answer ? Colors.green : null,
      ),
      child: Text(answer),
    );
  }

  void checkAnswer() {
    String correctAnswer = questions[currentQuestionIndex]['answer']!;
    String message = (selectedExpression == correctAnswer)
        ? 'Correct! You identified the $correctAnswer expression.'
        : 'Incorrect! Try again.';

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                moveToNextQuestion();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void moveToNextQuestion() {
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        // Move to the next question
        currentQuestionIndex++;
        selectedExpression = '';
      } else {
        // Display a message or navigate to a new screen when all questions are answered
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Congratulations! You completed all questions.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
        
        // currentQuestionIndex = 0;
        // selectedExpression = '';
      }
    });
  }
}
