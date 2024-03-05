import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

// stateless class for generating a list of expenses
class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
  });

  // object for outputting the expense list
  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    // returning using ListView.builder because we'll display multiple items
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => ExpenseItem(expenses[index]),
    );
  }
}
