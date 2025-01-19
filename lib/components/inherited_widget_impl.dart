import 'package:docs/state%20management/sharing%20state%20betwen%20widgets/2%20inherited%20widget.dart';
import 'package:flutter/material.dart';

class InheritedWidgetImpl extends StatelessWidget {
  const InheritedWidgetImpl({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(InheritWidget.of(context).data);
  }
}
