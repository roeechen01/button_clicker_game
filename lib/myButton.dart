import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  Color color;
  String text;
  int score;
  Function clickFunc;

  MyButton(
      {@required this.color,
      @required this.text,
      @required this.score,
      @required this.clickFunc});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints.tightFor(width: 120, height: 120),
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: ElevatedButton(
            child: Text(
              text,
              style: TextStyle(fontSize: 24),
            ),
            onPressed: () => clickFunc(score),
            style: ElevatedButton.styleFrom(
              primary: color,
              shape: CircleBorder(),
            ),
          ),
        ));
  }
}
