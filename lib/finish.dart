import 'package:flutter/material.dart';

class Finish extends StatelessWidget {
  final Function goBack;


  Finish({@required this.goBack});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Column(
        children: [
          Text(
            "Thank you for your time!",
            style: TextStyle(fontSize: 20, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          Row(
            children: [
              TextButton(onPressed: goBack, child: Text('Go back'))
            ],
          )
        ],
      )
    );
  }
}
