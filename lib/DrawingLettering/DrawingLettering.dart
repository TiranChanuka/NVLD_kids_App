import 'package:flutter/material.dart';
import 'package:flutter_signature_pad/flutter_signature_pad.dart';


class DrawingLettering extends StatefulWidget {
  @override
  _DrawingLetteringState createState() => _DrawingLetteringState();
}

class _DrawingLetteringState extends State<DrawingLettering> {
  List<String> picturePaths = [
    'assets/letter_a.jpg',
    'assets/letter_b.jpg',
    'assets/letter_c.jpg',
    'assets/letter_d.jpg',
    'assets/letter_e.jpg',
    'assets/butterfly.jpg',
    'assets/flower.jpg',
    'assets/sun.jpg',
    'assets/tree.jpg',
    'assets/home.jpg',
  ];
  int currentPictureIndex = 0;
  final GlobalKey<SignatureState> _signatureKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawing Picture ${currentPictureIndex + 1}'),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Image.asset(
                picturePaths[currentPictureIndex],
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Signature(
                      key: _signatureKey,
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Check if the drawing matches the picture
                      checkDrawing();
                    },
                    child: Text('Check Drawing'),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Save the drawing and move to the next picture or start over
                      _signatureKey.currentState!.clear();
                      setState(() {
                        currentPictureIndex =
                            (currentPictureIndex + 1) % picturePaths.length;
                      });
                    },
                    child: Text('Next Picture'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void checkDrawing() {
    if (_signatureKey.currentState!.points.isNotEmpty) {
      // Simulate checking if the drawing is correct (replace with your logic)
      bool isDrawingCorrect = true; // Replace this with your actual logic

      if (isDrawingCorrect) {
        // Display a success message
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Correct Drawing'),
              content: Text('You identified the picture correctly!'),
              actions: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      } else {
        // Display an error message and reset the picture
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Incorrect Drawing'),
              content: Text('Your drawing does not match the picture.'),
              actions: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    // Reset the picture
                    _signatureKey.currentState!.clear();
                  },
                  child: Text('Try Again'),
                ),
              ],
            );
          },
        );
      }
    }
  }
}
