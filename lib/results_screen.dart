import 'package:flutter/material.dart';
import 'package:treble_quiz_app/data/questions.dart';
import 'package:treble_quiz_app/questions_summary/questions_summary.dart';
import 'package:treble_quiz_app/styled_text.dart';

const mainAxisAlignmentColumnCenter = MainAxisAlignment.center;

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.onRestart});

  final List<String> chosenAnswers;
  final Function onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: mainAxisAlignmentColumnCenter,
          children: [
            LargeText(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: () {
                onRestart();
              },
              icon: const Icon(Icons.restart_alt_rounded),
              label: const MediumText('Restart quiz'),
            )
          ],
        ),
      ),
    );
  }
}
