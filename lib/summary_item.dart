import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/question_index.dart';

class SummaryItem extends StatelessWidget {
  SummaryItem(this.data, {super.key});

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIndex(data['user_answer'] == data['correct_answer'] , (data['question_index']) as int),
        const SizedBox(
          width: 20,
        ),
        //Allows screen to fit
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                (data['question']) as String,
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                data['user_answer'] as String,
                style:
                    const TextStyle(color: Color.fromARGB(255, 194, 62, 217)),
              ),
              Text(
                data['correct_answer'] as String,
                style:
                    const TextStyle(color: Color.fromARGB(255, 62, 155, 217)),
              )
            ],
          ),
        )
      ],
    );
  }
}
