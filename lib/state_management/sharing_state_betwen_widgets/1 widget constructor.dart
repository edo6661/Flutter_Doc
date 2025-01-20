import 'package:flutter/material.dart';

class WidgetConstructor extends StatelessWidget {
  final int count;
  const WidgetConstructor({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Text('$count');
  }
}
