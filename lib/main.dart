import 'package:flutter/material.dart';

import 'questionare.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State {
  var _qindex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _qindex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _qindex += 1;
    });
    print(_qindex);
  }

  final _questions = const [
    {
      "questionText": "Select a day of the week",
      "answers": [
        {"text": "Monday", "score": 0},
        {"text": "Tuesday", "score": 3},
        {"text": "Wednesday", "score": 200},
        {"text": "Thursday", "score": 6},
        {"text": "Friday", "score": 9},
      ]
    },
    {
      "questionText": "At what time?",
      "answers": [
        {"text": "08:00 - 09:00", "score": 1},
        {"text": "09:00 - 10:00", "score": 2},
        {"text": "10:00 - 11:00", "score": 3},
        {"text": "02:15 - 04:15", "score": 400},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Time Table - Final Year",
              style: TextStyle(fontSize: 28, color: Colors.black87),
            ),
          ),
          body: _qindex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  qindex: _qindex)
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
