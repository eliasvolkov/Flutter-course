import 'package:flutter/material.dart';
import 'package:quize_app/models/transaction.dart';
import 'package:quize_app/widgets/new_transaction.dart';
import 'package:quize_app/widgets/transaction_list.dart';
import 'package:quize_app/widgets/user_transactions.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  List<Transaction> transactions = [
    Transaction(id: '1', title: "Milk", amount: 3, date: DateTime.now()),
    Transaction(id: '2', title: "Bread", amount: 2.5, date: DateTime.now()),
  ];

  void _addTransaction(String title, amount) {
    final newTransaction = Transaction(
        id: DateTime.now().toString(),
        title: title,
        amount: double.parse(amount),
        date: DateTime.now());

    setState(() {
      transactions.add(newTransaction);
    });
  }

  void _showTransactionModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return NewTransaction(_addTransaction);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showTransactionModal(context),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [TransactionList(transactions)],
        ),
      ),
    );
  }
}
