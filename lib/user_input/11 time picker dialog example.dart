import 'package:flutter/material.dart';

class TimerPickerDialogExample extends StatefulWidget {
  @override
  State<TimerPickerDialogExample> createState() =>
      _TimerPickerDialogExampleState();
}

class _TimerPickerDialogExampleState extends State<TimerPickerDialogExample> {
  TimeOfDay? selectedTime;

  @override
  Widget build(BuildContext context) {
    var time = selectedTime;

    return Column(children: [
      Text(
        time == null ? "You haven't picked a time yet." : time.format(context),
      ),
      ElevatedButton.icon(
        icon: const Icon(Icons.calendar_today),
        onPressed: () async {
          var pickedTime = await showTimePicker(
            context: context,
            initialEntryMode: TimePickerEntryMode.dial,
            initialTime: TimeOfDay.now(),
          );

          setState(() {
            selectedTime = pickedTime;
          });
        },
        label: const Text('Pick a date'),
      )
    ]);
  }
}
