import 'package:flutter/material.dart';
import 'package:quiz/answer_button.dart';
import 'package:quiz/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer,});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerClicked(String answer) {
    widget.onSelectAnswer(answer);
    setState(() {
      currentQuestionIndex++;
      if (currentQuestionIndex > questions.length - 1) {
        currentQuestionIndex = questions.length - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestions = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              textAlign: TextAlign.center,
              currentQuestions.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 255, 166, 251),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //3 dots places comma separated values out of a list
            ...currentQuestions.getShuffledAnswers().map((item) {
              return AnswerButton(item, () {
                answerClicked(item);
              });
            }),
          ],
        ),
      ),
    );
  }
}
