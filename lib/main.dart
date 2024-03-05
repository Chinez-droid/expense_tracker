import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expenses.dart';
void main () {
  runApp(
     MaterialApp(

      // configuring the app bar theme
      theme: ThemeData(useMaterial3: true),

      // using our expenses class settings here
      home: const Expenses(),
    ),
  );
}