import 'package:buttons_clicker_game/myButton.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  void buttonClick(int score) {
    setState(() {
      this.score += score;
    });
  }

  double get size => this.score / 10;

  int score = 0;
  var buttonsMap = [
    {'color': Colors.blue, 'score': 5, 'text': 'A'},
    {'color': Colors.red, 'score': 2, 'text': 'B'},
    {'color': Colors.green, 'score': 7, 'text': 'C'}
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Score: $score'),
        ),
        body: Column(
          children: [
            Text('Press a button', style: TextStyle(fontSize: 20)),
            Container(
              height: 50,
            ),
            /*MyButton(
                color: buttonsMap[0]['color'],
                score: buttonsMap[0]['score'],
                text: buttonsMap[0]['text'])*/
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...buttonsMap.map((buttonMap) => MyButton(
                    color: buttonMap['color'],
                    score: buttonMap['score'],
                    text: buttonMap['text'],
                    clickFunc: buttonClick))
              ],
            ),
            Container(
              width: size,
              height: size,
              decoration:
                  BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
            )
          ],
        ),
      ),
    );
  }
}
