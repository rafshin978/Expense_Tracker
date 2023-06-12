import 'package:expense_tracker/widgets/expense_list/expense_list.dart';
import 'package:expense_tracker/model/expenses.dart';
import 'package:flutter/material.dart';

class Expense extends StatefulWidget {
  const Expense({key}) : super(key: key);
  @override
  State<Expense> createState() {
    return _ExpenseState();
  }
}

class _ExpenseState extends State<Expense> {
  final List<Expenses> _registeredExpenses = [
    Expenses(
        title: "Ab Restaurant",
        amount: 3300,
        date: DateTime.now(),
        category: Category.food),
    Expenses(
        title: "Rajastan Trip",
        amount: 15000,
        date: DateTime.now(),
        category: Category.travel),  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:  [
           const Text('chart'),
          Expanded(child: ExpenseList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}