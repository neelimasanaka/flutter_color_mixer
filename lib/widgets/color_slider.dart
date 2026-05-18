import 'package:flutter/material.dart';

class ColorSlider extends StatelessWidget {
  final String title;
  final double value;
  final Function(double) onChanged;

  const ColorSlider({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$title: ${value.toInt()}",
          style: const TextStyle(fontSize: 18),
        ),
        Slider(
          value: value,
          min: 0,
          max: 255,
          onChanged: onChanged,
        ),
      ],
    );
  }
}