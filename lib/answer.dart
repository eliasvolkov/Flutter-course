import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerItem;
  final Function selectHandle;


  Answer(this.answerItem, this.selectHandle);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: selectHandle,
        child: Text(answerItem),
      ),
    );
  }
}
