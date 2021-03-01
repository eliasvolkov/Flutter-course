import 'package:flutter/material.dart';
import 'package:quize_app/widgets/user_transactions.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter App"),
        ),
        body: UserTransaction(),
      ),
    );
  }
}
