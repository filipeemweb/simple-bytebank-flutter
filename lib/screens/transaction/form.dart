import 'package:flutter/material.dart';

import '../../components/custom_input.dart';
import '../../models/transaction.dart';

const _appBarTitle = 'Criando tranferência';

const _accountInputLabel = 'Número da conta';
const _accountInputHint = '0000';

const _valueInputLabel = 'Valor';
const _valueInputHint = '0.00';

const _buttonText = 'Confirmar';

class TransactionForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TransactionFormState();
  }
}

class TransactionFormState extends State<TransactionForm> {
  final TextEditingController _accountController = TextEditingController();
  final TextEditingController _valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_appBarTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomInput(
              controller: _accountController,
              labelText: _accountInputLabel,
              hintText: _accountInputHint,
            ),
            CustomInput(
              controller: _valueController,
              labelText: _valueInputLabel,
              hintText: _valueInputHint,
              icon: Icons.monetization_on,
            ),
            ElevatedButton(
              child: const Text(_buttonText),
              onPressed: () {
                _createTransaction(context);
              },
            )
          ],
        ),
      ),
    );
  }

  void _createTransaction(BuildContext context) {
    final int? accountNumber = int.tryParse(_accountController.text);
    final double? value = double.tryParse(_valueController.text);

    if (accountNumber != null && value != null) {
      final transactionCreated = Transaction(accountNumber, value);
      Navigator.pop(context, transactionCreated);
    }
  }
}
