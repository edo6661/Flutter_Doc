import 'package:flutter/material.dart';

class InheritWidget extends InheritedWidget {
  // ! child nya itu widget yang bergantung pada InheritWidget, dan yang butuh data dari InheritWidget
  const InheritWidget({super.key, required this.data, required super.child});
  final String data;

  static InheritWidget of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<InheritWidget>();
    if (result == null) {
      throw Exception("No InheritWidget found in context");
    }
    return result;
  }

  @override
  // * Memeriksa apakah data berubah, jika ya widget yang bergantung akan rebuild
  bool updateShouldNotify(InheritWidget oldWidget) => data != oldWidget.data;
}
