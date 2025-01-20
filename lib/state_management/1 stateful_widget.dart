import 'package:flutter/material.dart';

class StatefulWidgetImpl extends StatefulWidget {
  const StatefulWidgetImpl({super.key});

  @override
  State<StatefulWidgetImpl> createState() => _StatefulWidgetImpl();
}

class _StatefulWidgetImpl extends State<StatefulWidgetImpl> {
  int _count = 0;

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("$_count"),
        TextButton(
          onPressed: _incrementCount,
          style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(
                  Theme.of(context).colorScheme.primary)),
          child: Text(
            "Increment",
            style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
          ),
        ),
      ],
    );
  }
}
