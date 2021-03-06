import 'package:expense_planner/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionLists extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionLists(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      // tx is short for transactions
      children: transactions.map((tx) {
        return Card(
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.pink[600],
                    width: 2,
                  ),
                ),
                padding: EdgeInsets.all(10),
                child: Text(
                  '\$${tx.amount}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.pink[600],
                  ),
                ),
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      tx.title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      DateFormat.yMMMMd().format(tx.date),
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ])
            ],
          ),
        );
      }).toList(),
    );
  }
}
