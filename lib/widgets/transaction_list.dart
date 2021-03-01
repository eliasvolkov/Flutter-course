import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:quize_app/models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: transactions.map((transaction) {
            return transactionItem(transaction);
          }).toList(),
        ),
      ),
    );
  }
}

Widget transactionItem(Transaction transaction) {
  return Card(
    child: Row(
      children: [
        Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.purple, width: 2.0)),
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
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
}
