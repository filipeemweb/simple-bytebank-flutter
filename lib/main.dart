import 'package:bytebank/screens/transaction/list.dart';
import 'package:flutter/material.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          primary: Colors.green[500],
          secondary: Colors.blueAccent[700],
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          primary: Colors.blueAccent[700],
          textStyle: const TextStyle(
            color: Colors.white,
          ),
        )),
      ),
      home: TransactionList(),
    );
  }
}




