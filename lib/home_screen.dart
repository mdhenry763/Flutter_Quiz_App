import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/body_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz , {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/pictures/quiz-logo.png',
          width: 400,
          color: const Color.fromARGB(151, 255, 255, 255),
        ),
        const SizedBox(
          height: 80,
        ),
        const Text(
          'Flutter Quiz, lets go!',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 24.00,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: Text("Start Quiz", style: GoogleFonts.lato(color: Colors.white),),
        )
      ],
    );
  }
}
