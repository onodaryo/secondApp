import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:quiz/questionsScreen.dart';
import 'package:quiz/quizHome.dart';
import 'package:quiz/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];
  // Widget? activeScreen;
  var activeScreen = 'start_screen';

  /*@override
  void initState(){
    activeScreen = QuizHome(switchScreen);
    super.initState();
  }*/

  void switchScreen() {
    setState(() {
      activeScreen = 'questions_screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = 'start_screen';
        selectedAnswers.clear();
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = QuizHome(switchScreen);
    if (activeScreen == 'questions_screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.deepOrange,
              Colors.indigo,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            )
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
