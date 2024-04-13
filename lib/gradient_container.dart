import 'package:flutter/material.dart';
import 'package:treble_quiz_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
const mainAxisAlignmentColumnCenter = MainAxisAlignment.center;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colorList});

  final List<Color> colorList;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colorList, begin: startAlignment, end: endAlignment),
      ),
      child: const Column(
        mainAxisAlignment: mainAxisAlignmentColumnCenter,
        children: [
          Center(
            child: StyledText('Treble Quiz App'),
          )
        ],
      ),
    );
  }
}
