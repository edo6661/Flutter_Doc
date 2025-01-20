import 'package:docs/screens/detail_user_input.dart';
import 'package:docs/service/logger_service.dart';
import 'package:docs/user_input/1%20full_form.dart';
import 'package:docs/user_input/2%20segmented_btn_example.dart';
import 'package:docs/user_input/3%20chip_example.dart';
import 'package:docs/user_input/4%20dropdown_example.dart';
import 'package:flutter/material.dart';

class UserInputScreen extends StatelessWidget {
  const UserInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              FilledButton(
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailUserInput()));
                },
                child: const Text('Button'),
              ),
              const SelectableText('''
              Two households, both alike in dignity, 
              In fair Verona, where we lay our scene, 
              From ancient grudge break to new muti'''),
              RichText(
                text: TextSpan(
                  text: 'Hello ',
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'bold',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: ' world!'),
                  ],
                ),
              ),
              FullForm(),
              const SegmentedBtn(),
              const ChipExample(),
              const DropdownExample(),
            ],
          ),
        ),
      ),
    );
  }
}
