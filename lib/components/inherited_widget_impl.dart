import 'package:docs/state_management/sharing_state_betwen_widgets/2%20inherited%20widget.dart';
import 'package:flutter/material.dart';

class InheritedWidgetImpl extends StatelessWidget {
  const InheritedWidgetImpl({super.key});

  @override
  Widget build(BuildContext context) {
    var data = InheritWidget.of(context).data;
    return Text(data);
  }
}
