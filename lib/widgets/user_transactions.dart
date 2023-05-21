import 'package:expenses/widgets/new_transaction.dart';
import '../models/transaction.dart';
import 'package:expenses/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({super.key});

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't1', title: 'New Clothes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't1', title: 'New Phone', amount: 369.99, date: DateTime.now()),
  ];

  void _addNewTrasaction(String txtitle, double txamount) {
    final newtx = Transaction(
        id: DateTime.now().toString(),
        title: txtitle,
        amount: txamount,
        date: DateTime.now());
    setState(() {
      _userTransactions.add(newtx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTrasaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
