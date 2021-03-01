import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionTitle;

  Question(this.questionTitle);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Text(
        questionTitle,
        style: TextStyle(fontSize: 20, color: Colors.black),
        textAlign: TextAlign.center,
      ),
    );
  }
}
