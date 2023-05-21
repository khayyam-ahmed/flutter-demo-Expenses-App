import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  NewTransaction(this.addNewTransaction, {super.key});

  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addNewTransaction;

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);
    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    addNewTransaction(enteredTitle, enteredAmount);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          TextField(
            decoration: const InputDecoration(labelText: 'Title'),
            controller: titleController,
            onSubmitted: (_) => submitData(),
          ),
          TextField(
            decoration: const InputDecoration(labelText: 'Amount'),
            controller: amountController,
            keyboardType: TextInputType.number,
            onSubmitted: (_) => submitData(),
            // onChanged: () {

            // },
          ),
          TextButton(
            onPressed: submitData,
            child: const Text(
              'Add Transaction',
              // style: TextStyle(color: Colors.deepOrangeAccent),
            ),
          )
        ]),
      ),
    );
  }
}
