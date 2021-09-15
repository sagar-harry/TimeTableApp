import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int qindex;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.qindex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[qindex]["questionText"] as String),
        ...(questions[qindex]["answers"] as List<Map<String, Object>>)
            .map((answers) {
          return Answer(
              () => answerQuestion(answers["score"]), answers["text"]);
        }).toList()
      ],
    );
  }
}
