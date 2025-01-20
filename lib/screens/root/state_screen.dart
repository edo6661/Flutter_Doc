import 'package:docs/components/horizontal_divider.dart';
import 'package:docs/components/inherited_widget_impl.dart';
import 'package:docs/components/title.dart';
import 'package:docs/state_management/1%20stateful_widget.dart';
import 'package:docs/state_management/2%20listenable%20change%20notifier.dart';
import 'package:docs/state_management/2%20listenable%20value%20notifier.dart';
import 'package:docs/state_management/sharing_state_betwen_widgets/1%20widget%20constructor.dart';
import 'package:docs/state_management/sharing_state_betwen_widgets/2%20inherited%20widget.dart';
import 'package:docs/widgets/1%20padded_text_stateless.dart';
import 'package:flutter/material.dart';

class _StateScreen extends State<StateScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final ListenableChangeNotifier listenableChangeNotifier =
      ListenableChangeNotifier();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 12,
        children: <Widget>[
          const Column(
            children: [
              PaddedText(),
              StatefulWidgetImpl(),
            ],
          ),
          const HorizontalDivider(),
          const MainTitle(title: "Sharing State"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              WidgetConstructor(count: _counter),
              ElevatedButton(
                  onPressed: _incrementCounter, child: Text("Increment")),
              WidgetConstructor(count: _counter),
            ],
          ),
          const HorizontalDivider(),
          const MainTitle(title: "Inherit Widget"),
          const InheritWidget(
              data: "data yang didapet dari parent",
              child: InheritedWidgetImpl()),
          const HorizontalDivider(),
          const MainTitle(title: "Listenable Change Notifier"),
          // ! Then pass it to ListenableBuilder to ensure that the subtree returned by the builder function is re-built whenever the ChangeNotifier updates its listeners.
          ListenableBuilder(
              listenable: listenableChangeNotifier,
              builder: (context, child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Count: ${listenableChangeNotifier.count}"),
                    ElevatedButton(
                        onPressed: () {
                          listenableChangeNotifier.increment();
                        },
                        child: Text("Increment")),
                  ],
                );
              }),
          const HorizontalDivider(),
          const MainTitle(title: "Listenable Value Notifier"),
          ListenableValueNotifier(),
        ],
      ),
    );
  }
}

class StateScreen extends StatefulWidget {
  const StateScreen({super.key});

  @override
  State<StateScreen> createState() => _StateScreen();
}
