import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:quize_app/models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return transactionItem(transactions[index]);
        },
        itemCount: transactions.length,
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
