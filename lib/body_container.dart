import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz/home_screen.dart';
import 'package:quiz/questions_screen.dart';

class BodyContainer extends StatefulWidget {
  const BodyContainer({super.key});

  @override
  State<BodyContainer> createState() {
    return _BodyCotaniner();
  }
}

class _BodyCotaniner extends State<BodyContainer>{
  Widget? activeScreen;
  final List<String> selectedAnswers = [];

  @override
  void initState() {
    activeScreen = HomeScreen(switchScreen);
    super.initState(); //Parent state init state is called as well
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
  }

  void switchScreen(){
    setState(() {
      activeScreen = QuestionsScreen(onSelectAnswer: chooseAnswer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: const Color.fromARGB(255, 201, 25, 232),
      child:  Center(
        child: activeScreen,
      ),
    );
  }
}
