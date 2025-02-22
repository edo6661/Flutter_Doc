import 'package:flutter/material.dart';

enum Calendar { day, week, month, year }

class SegmentedBtn extends StatefulWidget {
  const SegmentedBtn({super.key});

  @override
  State<SegmentedBtn> createState() => _SegmentedBtnState();
}

class _SegmentedBtnState extends State<SegmentedBtn> {
  Calendar calendarView = Calendar.day;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SegmentedButton<Calendar>(
          segments: const <ButtonSegment<Calendar>>[
            ButtonSegment<Calendar>(
              value: Calendar.day,
              label: Text('Day'),
              icon: Icon(Icons.calendar_view_day),
            ),
            ButtonSegment<Calendar>(
              value: Calendar.week,
              label: Text('Week'),
              icon: Icon(Icons.calendar_view_week),
            ),
            ButtonSegment<Calendar>(
              value: Calendar.month,
              label: Text('Month'),
              icon: Icon(Icons.calendar_view_month),
            ),
            ButtonSegment<Calendar>(
              value: Calendar.year,
              label: Text('Year'),
              icon: Icon(Icons.calendar_today),
            ),
          ],
          selected: <Calendar>{calendarView},
          onSelectionChanged: (Set<Calendar> newSelection) {
            setState(() {
              calendarView = newSelection.first;
            });
          },
        )
      ],
    );
  }
}
