import 'package:expense_tracker/widgets/expense.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(
     MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home:const Expense() ,
    ),
  );
}