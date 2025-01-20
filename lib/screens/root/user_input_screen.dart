import 'package:docs/service/logger_service.dart';
import 'package:flutter/material.dart';

class UserInputScreen extends StatelessWidget {
  const UserInputScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 12,
        children: <Widget>[
          FilledButton(
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              LogService.d("Button pressed");
            },
            child: const Text('Button'),
          ),
        ],
      ),
    );
  }
}
