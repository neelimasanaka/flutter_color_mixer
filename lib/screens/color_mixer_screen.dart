import 'package:flutter/material.dart';
import '../widgets/color_slider.dart';

class ColorMixerScreen extends StatefulWidget {
  const ColorMixerScreen({super.key});

  @override
  State<ColorMixerScreen> createState() => _ColorMixerScreenState();
}

class _ColorMixerScreenState extends State<ColorMixerScreen> {
  double red = 100;
  double green = 100;
  double blue = 100;

  @override
  Widget build(BuildContext context) {
    Color mixedColor = Color.fromRGBO(
      red.toInt(),
      green.toInt(),
      blue.toInt(),
      1,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Color Mixer"),
        backgroundColor: mixedColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                color: mixedColor,
                borderRadius: BorderRadius.circular(20),
              ),
            ),

            const SizedBox(height: 30),

            ColorSlider(
              title: "Red",
              value: red,
              onChanged: (value) {
                setState(() {
                  red = value;
                });
              },
            ),

            ColorSlider(
              title: "Green",
              value: green,
              onChanged: (value) {
                setState(() {
                  green = value;
                });
              },
            ),

            ColorSlider(
              title: "Blue",
              value: blue,
              onChanged: (value) {
                setState(() {
                  blue = value;
                });
              },
            ),

            const SizedBox(height: 20),

            Text(
              "RGB: (${red.toInt()}, ${green.toInt()}, ${blue.toInt()})",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}