import 'package:flutter/material.dart';

enum Character { musician, chef, firefighter, artist }

class RadioExample extends StatefulWidget {
  const RadioExample({super.key});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  Character? _character = Character.musician;

  void setCharacter(Character? value) {
    setState(() {
      _character = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Musician'),
          leading: Radio<Character>(
            value: Character.musician,
            groupValue: _character,
            onChanged: setCharacter,
          ),
        ),
        ListTile(
          title: const Text('Artist'),
          leading: Radio<Character>(
            value: Character.artist,
            groupValue: _character,
            onChanged: setCharacter,
          ),
        ),
      ],
    );
  }
}
