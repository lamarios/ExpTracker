import 'package:animations/animations.dart';
import 'package:spend_spent_spent/icons.dart';
import 'package:spend_spent_spent/models/category.dart';
import 'package:spend_spent_spent/utils/dialogs.dart';
import 'package:spend_spent_spent/views/addCategory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryEntry extends StatelessWidget {
  Category category;
  Function setIcon, delete;

  CategoryEntry({required this.setIcon, required this.category, required this.delete});

  editIcon(BuildContext context) {
    showModal(
        context: context,
        builder: (context) =>
            Card(margin: getInsetsForMaxSize(MediaQuery.of(context), 350, vertical: 60), child: AddCategory(onSelected: (newIcon) => setIcon(category, newIcon), buttonLabel: 'Choose new Icon')));
  }

  deleteIcon(BuildContext context) {
    showPlatformDialog(
      context: context,
      builder: (_) => PlatformAlertDialog(
        title: Text('Delete cateogory'),
        content: Text('The category will only be deleted when you press the save button, this will delete all related expenses.'),
        actions: <Widget>[
          PlatformDialogAction(
            child: PlatformText(
              'Cancel',
              style: TextStyle(color: Colors.grey[850]),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          PlatformDialogAction(
            child: PlatformText(
              'Delete',
              style: TextStyle(color: Colors.red),
            ),
            onPressed: () {
              delete(category);
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 35, right: 8, bottom: 8),
          child: Row(
            children: [
              getIcon(category.icon!, color: Theme.of(context).primaryColor, size: 20),
              Spacer(),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () => editIcon(context),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: FaIcon(
                    FontAwesomeIcons.pen,
                    size: 15,
                  ),
                ),
              ),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () => deleteIcon(context),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: FaIcon(
                    FontAwesomeIcons.trash,
                    size: 15,
                    color: Colors.red,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}