import 'package:expense_tracker/model/expenses.dart';
import 'package:expense_tracker/widgets/expense_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({key, required this.expenses}) : super(key: key);
  final List<Expenses> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: ((context, index) => ExpenseItem(expenses[index])));
  }
}
