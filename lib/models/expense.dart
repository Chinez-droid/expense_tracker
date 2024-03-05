import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

// storing the constructor function for formatting the date
final formatter = DateFormat.yMd();

// storing the ID object as a function
const uuid = Uuid();

// storing our expense category values using enum
enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work
};

// blueprint class for the expenses app data structure
class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4(); // initializing the ID

  // objects for the data structure
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  // getter method to format the date
  String get formattedDate {
    return formatter.format(date);
  }
}
