import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:spend_spent_spent/add_expense_dialog/state/add_expense_dialog.dart';
import 'package:spend_spent_spent/add_expense_dialog/views/components/note_suggestion_pill.dart';
import 'package:spend_spent_spent/globals.dart';
import 'package:spend_spent_spent/utils/dialogs.dart';
import 'package:spend_spent_spent/utils/views/components/dummies/DummyFade.dart';

class ExpenseActions extends StatelessWidget {
  const ExpenseActions({
    super.key,
  });

  Future<void> selectDate(BuildContext context) async {
    final cubit = context.read<AddExpenseDialogCubit>();

    var expendeDate = cubit.state.expenseDate;
    var date = await showDatePicker(
        context: context,
        initialDate: expendeDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100));

    cubit.setDate(date ?? expendeDate);
  }

  void enableCurrencyConversion(BuildContext context) {
    final cubit = context.read<AddExpenseDialogCubit>();
    cubit.enableCurrencyConversion(!cubit.state.showCurrencyConversion);
  }

  void showNoteDialog(BuildContext context) {
    final cubit = context.read<AddExpenseDialogCubit>();
    showPromptDialog(context, 'Expense note', "Something about this expense",
        cubit.noteController, () {});
  }

  void tapSuggestion(BuildContext context, String text) {
    final cubit = context.read<AddExpenseDialogCubit>();
    cubit.setNote(text);
    cubit.noteController.text = text;
  }

  @override
  Widget build(BuildContext context) {
    print(service.config?.canConvertCurrency);
    final colors = Theme.of(context).colorScheme;
    // TODO: implement build
    return BlocBuilder<AddExpenseDialogCubit, AddExpenseDialogState>(
        builder: (context, state) {
      final cubit = context.read<AddExpenseDialogCubit>();
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
            child: Row(
              children: [
                TextButton(
                    // style: flatButtonStyle,
                    onPressed: () => selectDate(context),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5.0, vertical: 4),
                      child: Text(
                          DateFormat('yyyy-MM-dd').format(state.expenseDate)),
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: DummyFade(
                    running: state.gettingLocation,
                    child: IconButton(
                        onPressed: () {
                          cubit.setLocation(!state.useLocation);
                        },
                        icon: Icon(Icons.near_me,
                            color: state.useLocation
                                ? colors.primary
                                : colors.onSurface)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: AnimatedContainer(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)),
                        color: state.noteSuggestions.isEmpty
                            ? colors.surfaceContainer
                            : colors.surface,
                      ),
                      duration: Duration(
                          milliseconds: panelTransition.inMilliseconds ~/ 2),
                      child: IconButton(
                          onPressed: () => showNoteDialog(context),
                          icon: Icon(Icons.comment_rounded,
                              color: cubit.noteController.text.isNotEmpty
                                  ? colors.primary
                                  : colors.onSurface))),
                ),
                Visibility(
                  visible: service.config?.canConvertCurrency ?? false,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 0),
                    child: IconButton(
                        onPressed: () => enableCurrencyConversion(context),
                        icon: Icon(Icons.attach_money,
                            color: state.showCurrencyConversion
                                ? colors.primary
                                : colors.onSurface)),
                  ),
                ),
              ],
            ),
          ),
          AnimatedOpacity(
              opacity: state.noteSuggestions.isNotEmpty ? 1 : 0,
              duration: panelTransition ~/ 2,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: defaultBorder,
                          color: colors.surface,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: state.noteSuggestions
                                  .map((e) => NoteSuggestionPill(
                                      key: Key(e),
                                      text: e,
                                      tapSuggestion: (text) =>
                                          tapSuggestion(context, text)))
                                  .toList(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ))
        ],
      );
    });
  }
}