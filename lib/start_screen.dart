import 'package:flutter/material.dart';
import 'package:treble_quiz_app/styled_text.dart';

const mainAxisAlignmentColumnCenter = MainAxisAlignment.center;

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: mainAxisAlignmentColumnCenter,
      children: [
        const Center(
          child: HeaderText('Treble Quiz App', ),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(119, 255, 255, 255),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_right_alt),
            label: const SmallText("Start Quiz"))
      ],
    );
  }
}
