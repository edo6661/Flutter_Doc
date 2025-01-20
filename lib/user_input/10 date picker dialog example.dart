import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerDialogExample extends StatefulWidget {
  @override
  State<DatePickerDialogExample> createState() =>
      _DatePickerDialogExampleState();
}

class _DatePickerDialogExampleState extends State<DatePickerDialogExample> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    var date = selectedDate;

    return Column(children: [
      Text(
        date == null
            ? "You haven't picked a date yet."
            : DateFormat('MM-dd-yyyy').format(date),
      ),
      ElevatedButton.icon(
        icon: const Icon(Icons.calendar_today),
        onPressed: () async {
          var pickedDate = await showDatePicker(
            context: context,
            initialEntryMode: DatePickerEntryMode.calendarOnly,
            initialDate: DateTime.now(),
            firstDate: DateTime(2019),
            lastDate: DateTime(2050),
          );

          setState(() {
            selectedDate = pickedDate;
          });
        },
        label: const Text('Pick a date'),
      )
    ]);
  }
}
