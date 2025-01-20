import 'package:flutter/material.dart';

class ListenableValueNotifier extends StatelessWidget {
  ListenableValueNotifier({super.key});
  final ValueNotifier<int> counterNotifier = ValueNotifier(0);
  void increment() {
    counterNotifier.value++;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: increment,
          child: Text('Increment'),
        ),
        ValueListenableBuilder(
            valueListenable: counterNotifier,
            builder: (context, value, child) {
              return Text('$value');
            }),
      ],
    );
  }
}
