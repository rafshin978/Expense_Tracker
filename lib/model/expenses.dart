import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();

final formated = DateFormat.yMd();

enum Category { food, travel, leisure, work }

const categoryIcon = {
  Category.food: Icons.dinner_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expenses {
  Expenses(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
  String get formattedDate {
    return formated.format(date);
  }
}

class ExpenseBucket {
  ExpenseBucket({
    required this.category,
    required this.expense,
  });

  ExpenseBucket.forCategory(List<Expenses> allExpenses, this.category)
      : expense = allExpenses
            .where((expense) => expense.category == category)
            .toList();

  final Category category;
  final List<Expenses> expense;

  double get totalExpenses {
    double sum = 0;

    for (final expenses in expense) {
      sum += expenses.amount;
    }
    return sum;
  }
}
