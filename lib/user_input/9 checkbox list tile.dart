import 'package:flutter/material.dart';

class CheckboxListTileExample extends StatefulWidget {
  const CheckboxListTileExample({super.key});

  @override
  State<CheckboxListTileExample> createState() => _CheckboxListTileExample();
}

class _CheckboxListTileExample extends State<CheckboxListTileExample> {
  double timeDilation = 1.0;
  bool _lights = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckboxListTile(
          title: const Text('Animate Slowly'),
          value: timeDilation != 1.0,
          onChanged: (bool? value) {
            setState(() {
              timeDilation = value! ? 10.0 : 1.0;
            });
          },
          secondary: const Icon(Icons.hourglass_empty),
        ),
        SwitchListTile(
          title: const Text('Lights'),
          value: _lights,
          onChanged: (bool value) {
            setState(() {
              _lights = value;
            });
          },
          secondary: const Icon(Icons.lightbulb_outline),
        ),
      ],
    );
  }
}
