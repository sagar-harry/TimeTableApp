import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(25, 20, 25, 20),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 28, color: Colors.black87),
          textAlign: TextAlign.center,
        ));
  }
}
