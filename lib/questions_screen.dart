import 'package:flutter/material.dart';
import 'package:treble_quiz_app/data/questions.dart';
import 'package:treble_quiz_app/styled_button.dart';
import 'package:treble_quiz_app/styled_text.dart';

const mainAxisAlignmentColumnCenter = MainAxisAlignment.center;
const crossAxisAlignmentStretch = CrossAxisAlignment.stretch;

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.onSelectAnswer, {super.key});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: mainAxisAlignmentColumnCenter,
          crossAxisAlignment: crossAxisAlignmentStretch,
          children: [
            MediumText(currentQuestion.text),
            const SizedBox(height: 20),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () {
                  answerQuestion(answer);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
