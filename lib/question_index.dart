import 'package:flutter/material.dart';

class QuestionIndex extends StatelessWidget {
  const QuestionIndex(this.answer, this.index, {super.key});

  final bool answer;
  final int index;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        padding: const EdgeInsets.all(8),
        decoration: ShapeDecoration(
            shape: const CircleBorder(),
            color: answer
                ? const Color.fromARGB(255, 33, 240, 243)
                : const Color.fromARGB(255, 233, 30, 203)),
        child: Text((index + 1).toString(),
        ),
      );
  }
}
