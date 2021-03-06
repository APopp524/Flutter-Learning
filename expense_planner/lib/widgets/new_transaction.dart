import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              // onChanged: (value) {
              //   titleInput = value;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            FlatButton(
                onPressed: () {
                  print(titleController.text);
                  addTx(
                    titleController.text,
                    // must enter number or this will break
                    // ignore: todo
                    // TODO: add error message
                    double.parse(amountController.text),
                  );
                },
                child: Text('Add Transaction'),
                textColor: Colors.pink[600])
          ],
        ),
      ),
    );
  }
}
