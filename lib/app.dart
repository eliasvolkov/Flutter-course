import 'package:flutter/material.dart';
import 'package:quize_app/models/transaction.dart';
import 'package:intl/intl.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  List<Transaction> transactions = [
    Transaction(id: 1, title: "Milk", amount: 3, date: DateTime.now()),
    Transaction(id: 2, title: "Bread", amount: 2.5, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter App"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: double.infinity,
                child: Card(
                  color: Colors.blue,
                  child: Text('Tabs Bar'),
                  elevation: 5,
                ),
              ),
              Container(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ...transactions.map((transaction) {
                        return Card(
                          child: Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 15.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.purple, width: 2.0)),
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    '\$${transaction.amount}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.purple),
                                  )),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    transaction.title,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    DateFormat.yMMMd().format(transaction.date),
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      }).toList()
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
