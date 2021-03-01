import 'package:flutter/material.dart';
import 'package:quize_app/answer.dart';
import 'package:quize_app/question.dart';
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

  void _onAnswer() {
    setState(() {
      _questionIndex++;
    });
  }

  void _onGoBack(){
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
            ? Center(
                child: Column(
                  children: <Widget>[
                    Question(questions[_questionIndex]['question']),
                    ...(questions[_questionIndex]['answers'] as List<String>)
                        .map((answer) {
                      return Answer(answer, _onAnswer);
                    }).toList()
                  ],
                ),
              )
            : Finish(_onGoBack),
      ),
    );
  }
}
