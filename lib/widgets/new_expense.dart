import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({key}) : super(key: key);
  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  /*var _enteredTitle = '';
  void _saveTitleInput(String inputText) {
    _enteredTitle = inputText;
  }*/

  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  void _presentDatePicker() {
    final now = DateTime.now();
    showDatePicker(
      context: context,
      initialDate: now,
      firstDate: DateTime(now.year - 1, now.month, now.day),
      lastDate: DateTime(now.year +4, now.month, now.day),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            //onChanged: _saveTitleInput,
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('Enter the title here'),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    prefixText: ("\$ "),
                    label: Text('Enter the amount'),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("Selected date"),
                    IconButton(
                      onPressed: _presentDatePicker,
                      icon: const Icon(Icons.calendar_month),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  print(_titleController.text);
                  print(_amountController.text);
                },
                child: const Text("Save"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Close"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
