import 'package:flutter/material.dart';
import 'package:spend_spent_spent/components/expenseDialog/keypad.dart';

class Step3 extends StatefulWidget {
  final Function setAmount;
  final String amount;

  const Step3({super.key, required this.setAmount, required this.amount});

  @override
  Step3State createState() => Step3State();
}

class Step3State extends State<Step3> {
  String valueToStr(from) {
    String str = from.padLeft(3, '0');
    List<String> split = str.split('');
    split.insert(split.length - 2, '.');

    str = split.join('');

    return str;
  }

  void addNumber(String i) {
    String value = (widget.amount + i).replaceFirst(RegExp(r'^0+'), '');
    widget.setAmount(value);
  }

  void removeNumber() {
    if (widget.amount.isNotEmpty) {
      String value = widget.amount.substring(0, widget.amount.length - 1);
      widget.setAmount(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      children: [
        Row(children: [
          Expanded(
              child: Container(
                  height: 70,
                  alignment: Alignment.centerRight,
                  decoration: BoxDecoration(
                    color: colors.surface,
                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(valueToStr(widget.amount),
                        style:
                            TextStyle(fontSize: 20, color: colors.onSurface)),
                  ))),
        ]),
        KeyPad(addNumber: addNumber, removeNumber: removeNumber)
      ],
    );
  }
}
