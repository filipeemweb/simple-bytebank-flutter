import 'package:bytebank/screens/transaction/form.dart';
import 'package:flutter/material.dart';

import '../../models/transaction.dart';

const _appBarTitle = 'Transferências';

class TransactionList extends StatefulWidget {
  final List<Transaction> _transactions = <Transaction>[];

  @override
  State<StatefulWidget> createState() {
    return TransactionListState();
  }
}

class TransactionListState extends State<TransactionList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_appBarTitle),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          _addNewTransaction(context);
        },
      ),
      body: ListView.builder(
          itemCount: widget._transactions.length,
          itemBuilder: (context, index) {
            final transaction = widget._transactions[index];
            return TransactionItem(transaction);
          }),
    );
  }

  void _addNewTransaction(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return TransactionForm();
    })).then(
      (transaction) {
        if (transaction != null) {
          setState(() {
            widget._transactions.add(transaction);
          });
        }
      },
    );
  }
}

class TransactionItem extends StatelessWidget {
  final Transaction _transaction;

  const TransactionItem(this._transaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.monetization_on),
        title: Text(_transaction.value.toString()),
        subtitle: Text(_transaction.accountNumber.toString()),
      ),
    );
  }
}
