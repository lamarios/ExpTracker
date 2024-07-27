import 'package:flutter/material.dart';
import 'package:spend_spent_spent/globals.dart';

class NoteSuggestionPill extends StatelessWidget {
  final String text;
  final Function(String text) tapSuggestion;

  const NoteSuggestionPill(
      {super.key, required this.text, required this.tapSuggestion});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: GestureDetector(
        onTap: () => tapSuggestion(text),
        child: Container(
            decoration: BoxDecoration(
              borderRadius: defaultBorder,
              color: colors.primaryContainer,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: TextStyle(color: colors.onPrimaryContainer),
              ),
            )),
      ),
    );
  }
}