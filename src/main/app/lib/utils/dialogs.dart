import 'dart:math';

import 'package:flutter/material.dart';

void showAlertDialog(BuildContext context, String title, String text) {
  showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
            title: Text(title),
            content: Text(text),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ));
}

void showPromptDialog(BuildContext context, String title, String label,
    TextEditingController controller, Function onOk,
    {int? maxLines, String Function(String seed)? getAutoComplete}) {
  final colors = Theme.of(context).colorScheme;
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: TextField(
            controller: controller,
            maxLines: maxLines,
            keyboardType: TextInputType.multiline,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context, 'Cancel');
              },
              child: Text(
                'Cancel',
                style: TextStyle(color: colors.secondary),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, 'OK');
                onOk();
              },
              child: const Text('OK'),
            ),
          ],
        );
      });
}

EdgeInsetsGeometry getInsetsForMaxSize(MediaQueryData data,
    {double? maxWidth, double? maxHeight}) {
  var horizontal =
      max<double>(0, (data.size.width - (maxWidth ?? data.size.width)) / 2);
  var vertical =
      max<double>(0, (data.size.height - (maxHeight ?? data.size.height)) / 2);
  return EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);
}
