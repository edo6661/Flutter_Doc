import 'package:flutter/material.dart';

class SliderVolume extends StatefulWidget {
  const SliderVolume({super.key});
  @override
  State<SliderVolume> createState() => _SliderVolumeState();
}

class _SliderVolumeState extends State<SliderVolume> {
  double _currentVolume = 0;
  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentVolume,
      max: 5,
      divisions: 5,
      label: _currentVolume.toString(),
      onChanged: (double value) {
        setState(() {
          _currentVolume = value;
        });
      },
    );
  }
}
