import 'package:flutter/material.dart';
import 'package:quiz/body_container.dart';

void main() {
  runApp(const QuizFront());
}

class QuizFront extends StatelessWidget {
  const QuizFront({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: BodyContainer(),
      ),
    );
  }
}
