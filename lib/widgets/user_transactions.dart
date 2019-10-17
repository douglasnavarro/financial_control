import 'package:flutter/material.dart';

import '../models/transaction.dart';
import '../widgets/new_transaction.dart';
import '../widgets/transactions_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
    final List<Transaction> _userTransactions = [
    Transaction(
      id: '1',
      title: 'Sapatos',
      amount: 10.50,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Mercado',
      amount: 25.10,
      date: DateTime.now(),
    )
  ];

  void _addNewTransaction(String title, double amount) {
    final newTx = Transaction(title: title, amount: amount, date: DateTime.now(), id: DateTime.now().toString());
    setState(() {
      _userTransactions.add(newTx);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      NewTransaction(_addNewTransaction),
      TransactionList(_userTransactions)]);
  }
}
