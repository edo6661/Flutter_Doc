import 'package:flutter/material.dart';

class SwipeableDismissableExample extends StatefulWidget {
  @override
  State<SwipeableDismissableExample> createState() =>
      _SwipeableDismissableExampleState();
}

class _SwipeableDismissableExampleState
    extends State<SwipeableDismissableExample> {
  List<int> items = List<int>.generate(4, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 16),
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          background: Container(
            color: Colors.green,
          ),
          // ! ValueKey itu untuk mengidentifikasi item yang dihapus
          key: ValueKey<int>(items[index]),
          onDismissed: (DismissDirection direction) {
            setState(() {
              items.removeAt(index);
            });
          },
          child: ListTile(
            title: Text(
              'Item ${items[index]}',
            ),
          ),
        );
      },
    );
  }
}
