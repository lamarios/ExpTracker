import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:spend_spent_spent/components/dummies/DummyFade.dart';
import 'package:spend_spent_spent/components/expenseDialog/noteSuggestionPill.dart';
import 'package:spend_spent_spent/globals.dart';
import 'package:spend_spent_spent/utils/dialogs.dart';

class ExpenseActions extends StatefulWidget {
  final Function(DateTime date) setDate;
  final Function(String note) setNote;
  final Function(bool enable) enableCurrencyConversion;
  final Function(bool set) setLocation;
  DateTime expenseDate;
  bool location, gettingLocation;
  bool currencyConversionEnabled;
  List<String> noteSuggestions;

  ExpenseActions(
      {required this.setDate,
      required this.expenseDate,
      required this.setNote,
      required this.location,
      required this.setLocation,
      required this.enableCurrencyConversion,
      required this.currencyConversionEnabled,
      required this.noteSuggestions,
      required this.gettingLocation});

  @override
  ExpenseActionsState createState() => ExpenseActionsState();
}

class ExpenseActionsState extends State<ExpenseActions>
    with AfterLayoutMixin<ExpenseActions> {
  var expenseDate = DateTime.now();
  var location = false;
  var showCurrencyConversion = false;
  var noteController = TextEditingController();

  Future<void> selectDate() async {
    var date = await showDatePicker(
        context: context,
        initialDate: widget.expenseDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100));

    widget.setDate(date ?? widget.expenseDate);
  }

  @override
  void initState() {
    noteController.addListener(() {
      widget.setNote(noteController.text);
    });

    super.initState();
  }

  void enableCurrencyConversion() {
    setState(() {
      showCurrencyConversion = !showCurrencyConversion;
      widget.enableCurrencyConversion(!widget.currencyConversionEnabled);
    });
  }

  void showNoteDialog(BuildContext context) {
    showPromptDialog(context, 'Expense note', "Something about this expense",
        noteController, () {});
  }

  void tapSuggestion(String text) {
    widget.setNote(text);
    noteController.text = text;
  }

  @override
  Widget build(BuildContext context) {
    print(service.config?.canConvertCurrency);
    final colors = Theme.of(context).colorScheme;
    // TODO: implement build
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
          child: Row(
            children: [
              TextButton(
                  // style: flatButtonStyle,
                  onPressed: selectDate,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 4),
                    child: Text(
                        DateFormat('yyyy-MM-dd').format(widget.expenseDate)),
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: DummyFade(
                  running: widget.gettingLocation,
                  child: IconButton(
                      onPressed: () {
                        widget.setLocation(!widget.location);
                      },
                      icon: FaIcon(FontAwesomeIcons.locationArrow,
                          color: widget.location
                              ? colors.primary
                              : colors.onSurface)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: AnimatedContainer(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      color: widget.noteSuggestions.isEmpty
                          ? colors.surfaceContainer
                          : colors.surface,
                    ),
                    duration: Duration(
                        milliseconds: panelTransition.inMilliseconds ~/ 2),
                    child: IconButton(
                        onPressed: () => showNoteDialog(context),
                        icon: FaIcon(FontAwesomeIcons.commentDots,
                            color: noteController.text.length > 0
                                ? colors.primary
                                : colors.onSurface))),
              ),
              Visibility(
                visible: service.config?.canConvertCurrency ?? false,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 0),
                  child: IconButton(
                      onPressed: enableCurrencyConversion,
                      icon: FaIcon(FontAwesomeIcons.dollarSign,
                          color: widget.currencyConversionEnabled
                              ? colors.primary
                              : colors.onSurface)),
                ),
              ),
            ],
          ),
        ),
        AnimatedOpacity(
            opacity: widget.noteSuggestions.isNotEmpty ? 1 : 0,
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
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: widget.noteSuggestions
                                .map((e) => NoteSuggestionPill(
                                    key: Key(e),
                                    text: e,
                                    tapSuggestion: tapSuggestion))
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
  }

  @override
  Future<void> afterFirstLayout(BuildContext context) async {}
}
