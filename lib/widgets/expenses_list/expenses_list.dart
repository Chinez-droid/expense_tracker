import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

// stateless class for generating a list of expenses
class ExpensesList extends StatelessWidget {
  // constructor function holding the expenses & onRemoveExpense
  const ExpensesList(
      {super.key, required this.expenses, required this.onRemoveExpense});

  // object for outputting the expense list
  final List<Expense> expenses;

  // storing the function for removing expenses
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    // returning using ListView.builder for displaying multiple items
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expenses[index]),
        background: Container(
            color: Theme.of(context).colorScheme.error,
            margin: EdgeInsets.symmetric(
                horizontal: Theme.of(context).cardTheme.margin!.horizontal)),
        onDismissed: (direction) {
          onRemoveExpense(expenses[index]);
        },
        child: ExpenseItem(expenses[index]),
      ),
    );
  }
}
