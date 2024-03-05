import 'package:flutter/material.dart';

// class to manage textfield for input
class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  // better alternative to storing all the inputs for textField
  final _titleController = TextEditingController();

  // deletes the controller when the widget ain't needed anymore
  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // returns the widget's design & functionality
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('Title'),
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  print(_titleController.text);
                },
                child: Text('Save Expense'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
