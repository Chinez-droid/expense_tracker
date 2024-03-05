import 'dart:math';

import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

// ExpenseItem class used to output the individual list items of the expenses_list
class ExpenseItem extends StatelessWidget {
  // expense property accepted as a constructor(positional argument)
  const ExpenseItem(this.expense, {super.key});

  // class expense property stored as an object
  final Expense expense;

  @override
  Widget build(BuildContext context) {
    // for widgets design & functionality
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20, // -
          vertical: 16, // I
        ),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(height: 4),
            Row(
              children: [
                Text("\$${expense.amount.toStringAsFixed(2)}"),
                // 12.3422 => 12.34
                const Spacer(),
                 Row(
                  children: [
                    Icon(categoryIcons[expense.category]),
                    const SizedBox(width: 8),
                    Text(expense.formattedDate),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
