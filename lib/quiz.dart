import 'package:flutter/material.dart';
import 'package:quize_app/answer.dart';
import 'package:quize_app/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.questionIndex,
    @required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Question(questions[questionIndex]['question']),
          ...(questions[questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(answer, answerQuestion);
          }).toList()
        ],
      ),
    );
  }
}
