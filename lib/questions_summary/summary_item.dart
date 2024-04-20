import 'package:flutter/material.dart';
import 'package:treble_quiz_app/questions_summary/question_identifier.dart';
import 'package:treble_quiz_app/styled_text.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: itemData['question_index'] as int,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MediumText(
              itemData['question'] as String,
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 5,
            ),
            SmallText(
              itemData['user_answer'] as String,
              textColor: const Color.fromARGB(255, 202, 171, 252),
            ),
            SmallText(
              itemData['correct_answer'] as String,
              textColor: const Color.fromARGB(255, 181, 254, 246),
            )
          ],
        ))
      ],
    );
  }
}
