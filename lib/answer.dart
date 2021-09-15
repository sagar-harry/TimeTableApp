import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child: RaisedButton(
            color: Colors.blueAccent,
            textColor: Colors.black54,
            child: Text(
              answerText,
              style: TextStyle(fontSize: 25),
            ),
            onPressed: selectHandler));
  }
}
