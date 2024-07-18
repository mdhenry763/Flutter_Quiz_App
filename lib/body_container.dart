import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/home_screen.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/results_screen.dart';

class BodyContainer extends StatefulWidget {
  const BodyContainer({super.key});

  @override
  State<BodyContainer> createState() {
    return _BodyCotaniner();
  }
}

class _BodyCotaniner extends State<BodyContainer>{
  Widget? activeScreen;
  List<String> selectedAnswers = [];
  String screenShown = 'home_screen';

  @override
  void initState() {
    activeScreen = HomeScreen(switchScreen);
    super.initState(); //Parent state init state is called as well
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    screenShown == 'questions_screen';
    if(selectedAnswers.length == questions.length){
      setState(() {
        screenShown = 'result_screen';
        activeScreen =  ResultsScreen(switchScreen, chosenAnswers: selectedAnswers,);
        selectedAnswers = [];
      });
    }
  }

  void switchScreen(){
    setState(() {
      if(screenShown == 'result_screen')
      {
        activeScreen = HomeScreen(switchScreen);
        screenShown = 'home_screen';
      }else
      {
        activeScreen = QuestionsScreen(onSelectAnswer: chooseAnswer);
      } 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 108, 4, 127),
          Color.fromARGB(255, 150, 56, 166)
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight)
      ),
      padding: const EdgeInsets.all(10),
      child:  Center(
        child: activeScreen,
      ),
    );
  }
}
