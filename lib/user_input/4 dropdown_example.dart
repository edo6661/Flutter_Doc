import 'package:flutter/material.dart';

enum ColorLabel {
  blue('Blue', Colors.blue),
  pink('Pink', Colors.pink),
  green('Green', Colors.green),
  yellow('Yellow', Colors.yellow),
  grey('Grey', Colors.grey);

  const ColorLabel(this.label, this.color);
  final String label;
  final Color color;
}

class DropdownExample extends StatefulWidget {
  const DropdownExample({super.key});

  @override
  State<DropdownExample> createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  final TextEditingController colorController = TextEditingController();
  ColorLabel selectedColor = ColorLabel.blue;

  @override
  void dispose() {
    colorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<ColorLabel>(
      initialSelection: ColorLabel.green,
      controller: colorController,
      requestFocusOnTap: true,
      label: const Text('Color'),
      onSelected: (ColorLabel? color) {
        if (color != null) {
          setState(() {
            selectedColor = color;
          });
        }
      },
      dropdownMenuEntries: ColorLabel.values
          .map<DropdownMenuEntry<ColorLabel>>((ColorLabel color) {
        return DropdownMenuEntry<ColorLabel>(
          value: color,
          label: color.label,
          enabled: color.label != 'Grey',
          style: MenuItemButton.styleFrom(
            foregroundColor: color.color,
          ),
        );
      }).toList(),
    );
  }
}
