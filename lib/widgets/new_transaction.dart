import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTransaction;

  NewTransaction(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText: 'Title',
                ),
              ),
              TextField(
                controller: amountController,
                decoration: InputDecoration(
                  labelText: 'Amount',
                ),
              ),
              TextButton(
                onPressed: () {
                  addTransaction(titleController.text, amountController.text);
                },
                child: Text('Add transaction',
                    style: TextStyle(color: Colors.purple)),
              )
            ],
          ),
        ),
        elevation: 5,
      ),
    );
  }
}
