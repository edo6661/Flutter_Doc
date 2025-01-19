import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;
  void _incrementCounter() {
    // ! Whenever you mutate a State object (for example, by incrementing the counter), you must call setState to signal the framework to update the user interface by calling the State's build method again.

    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text('$_counter');
  }
}
