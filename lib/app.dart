import 'package:flutter/material.dart';
import 'package:quize_app/quiz.dart';
import 'finish.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _questionIndex = 0;

  final questions = [
    {
      'question': 'What\'s your name?',
      'answers': ['First', 'Second', 'Third']
    },
    {
      'question': 'Do you like futter?',
      'answers': ['Yes', 'No', 'I don\'t know']
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  void _onGoBack() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quize App"),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                questions: questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Finish(goBack: _onGoBack),
      ),
    );
  }
}
