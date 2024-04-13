import 'package:flutter/material.dart';
import 'package:treble_quiz_app/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(colorList: [
        Color.fromARGB(255, 92, 201, 95),
        Color.fromARGB(255, 142, 91, 230)
      ]),
    ),
  ));
}
