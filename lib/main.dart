import 'package:docs/components/horizontal_divider.dart';
import 'package:docs/components/inherited_widget_impl.dart';
import 'package:docs/components/title.dart';
import 'package:docs/state%20management/1%20stateful_widget.dart';
import 'package:docs/state%20management/sharing%20state%20betwen%20widgets/1%20widget%20constructor.dart';
import 'package:docs/state%20management/sharing%20state%20betwen%20widgets/2%20inherited%20widget.dart';
import 'package:docs/widgets/1%20padded_text_stateless.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            spacing: 12,
            children: <Widget>[
              Column(
                children: [
                  const PaddedText(),
                  const StatefulWidgetImpl(),
                ],
              ),
              // ! container ga nge dukung const
              HorizontalDivider(),
              MainTitle(title: "Sharing State"),
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
              HorizontalDivider(),
              MainTitle(title: "Inherit Widget"),

              InheritWidget(
                  data: "data yang didapet dari parent",
                  child: const InheritedWidgetImpl()),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
