import 'package:flutter/material.dart';
import 'package:quize_app/models/transaction.dart';
import 'package:quize_app/widgets/new_transaction.dart';
import 'package:quize_app/widgets/transaction_list.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
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

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        NewTransaction(_addTransaction),
        TransactionList(transactions),
      ],
    );
  }
}
