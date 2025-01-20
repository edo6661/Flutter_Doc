import 'package:flutter/material.dart';

class HorizontalDivider extends StatelessWidget {
  const HorizontalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    // ! container ga nge dukung const
    return Container(height: 1, color: Theme.of(context).colorScheme.primary);
  }
}
