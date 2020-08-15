import 'dart:math';

import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import 'package:expenses/models/transaction.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = <Transaction>[
    Transaction(
      id: 't1',
      title: 'Novo Tênis de Corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Conta de Água',
      value: 80.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Internet',
      value: 81.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't6',
      title: 'Supermercado',
      value: 411.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: 'IPTU',
      value: 51.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't7',
      title: 'Livros',
      value: 41.89,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't8',
      title: 'Pedágio',
      value: 21.0,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't9',
      title: 'Combustível',
      value: 110.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't10',
      title: 'Celular',
      value: 65.30,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
