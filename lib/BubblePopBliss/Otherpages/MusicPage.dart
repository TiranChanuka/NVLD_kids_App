import 'package:flutter/material.dart';

class MusicPlayerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music Player'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/smile.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('Song Title', style: TextStyle(fontSize: 24)),
            Text('Artist Name', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(icon: Icon(Icons.skip_previous), onPressed: () {}),
                IconButton(icon: Icon(Icons.play_arrow), onPressed: () {}),
                IconButton(icon: Icon(Icons.skip_next), onPressed: () {}),
              ],
            ),
            SizedBox(height: 20),
            Slider(value: 0.5, onChanged: (double value) {}),
          ],
        ),
      ),
    );
  }
}
