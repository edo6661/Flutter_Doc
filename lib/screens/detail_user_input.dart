import 'package:docs/user_input/10%20date%20picker%20dialog%20example.dart';
import 'package:docs/user_input/11%20time%20picker%20dialog%20example.dart';
import 'package:docs/user_input/12%20swipeable%20dismissable%20example.dart';
import 'package:docs/user_input/5%20slider%20volume.dart';
import 'package:docs/user_input/6%20checkbox%20example.dart';
import 'package:docs/user_input/7%20switch%20example.dart';
import 'package:docs/user_input/8%20radio%20example.dart';
import 'package:docs/user_input/9%20checkbox%20list%20tile.dart';
import 'package:flutter/material.dart';

class DetailUserInput extends StatelessWidget {
  const DetailUserInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More User Input'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            SliderVolume(),
            const Row(
              children: [CheckboxExample(), SwitchExample()],
            ),
            RadioExample(),
            CheckboxListTileExample(),
            DatePickerDialogExample(),
            TimerPickerDialogExample(),
            SwipeableDismissableExample()
          ]),
        ),
      ),
    );
  }
}
