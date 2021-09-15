import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText = "You did it!!";
    if (resultScore == 1) {
      resultText = "Statistics";
    } else if (resultScore == 2) {
      resultText = "Nano-Biotech";
    } else if (resultScore == 3) {
      resultText = "Medical embeded  systems";
    } else if (resultScore == 4) {
      resultText = "Nano-Biotech";
    } else if (resultScore == 5) {
      resultText = "Medical embeded  systems";
    } else if (resultScore == 6) {
      resultText = "Sensors & Transducers";
    } else if (resultScore == 7) {
      resultText = "Medical embeded  systems";
    } else if (resultScore == 8) {
      resultText = "Sensors & Transducers";
    } else if (resultScore == 9) {
      resultText = "Statistics";
    } else if (resultScore == 10) {
      resultText = "Sensors & Transducers";
    } else if (resultScore == 11) {
      resultText = "Statistics";
    } else if (resultScore == 12) {
      resultText = "Nano-Biotech";
    } else if (resultScore == 202 || resultScore == 203) {
      resultText = "Micro-Processor and MicroController Lab";
    } else if (resultScore == 600) {
      resultText = "MatLab";
    } else if (resultScore == 406) {
      resultText = "Health Informatics Lab";
    } else {
      resultText = "Free period";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(0, 260, 0, 0),
        child: Column(
          children: <Widget>[
            Text(
              "You have : ",
              style: TextStyle(
                fontSize: 18,
                color: Colors.deepPurpleAccent,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              resultPhrase,
              style: TextStyle(
                  fontSize: 36,
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            RaisedButton(
                onPressed: resetQuiz,
                child: Text(
                  "Go to start",
                  style: TextStyle(fontSize: 18, color: Colors.red),
                ))
          ],
        ));
  }
}
