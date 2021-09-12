import 'package:spend_spent_spent/components/rightColumn/expense.dart';
import 'package:spend_spent_spent/globals.dart';
import 'package:spend_spent_spent/models/dayExpense.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OneDay extends StatelessWidget {
  DayExpense expense;
  double total = 0;

  OneDay({required this.expense});

  displayDate() {
    return DateFormat.yMMMMd('en_US').format(DateFormat('yyyy-MM-dd').parse(expense.date));
  }

  @override
  Widget build(BuildContext context) {
    double total = expense.expenses.map((e) => e.amount).reduce((value, element) => value + element);
    List<Widget> widgets = [
      Text(displayDate()),
    ];

    expense.expenses.forEach((e) => widgets.add(OneExpense(key: Key(e.id.toString()), expense: e)));

    widgets.add(Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text('Total:'),
          Expanded(
              child: Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    formatCurrency(total),
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ))),
        ],
      ),
    ));
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(children: widgets),
    );
  }
}