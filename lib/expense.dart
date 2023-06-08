import 'package:flutter/material.dart';

class Expense  extends StatefulWidget{
  const Expense({key}):super(key:key);
  @override
  State<Expense> createState() {
    return _ExpenseState();
  }
}

class _ExpenseState extends State<Expense>{
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Text('chart'),
          Text('Expense list'),
        ],
      ),
    );
  }
}