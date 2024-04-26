import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:quiz/questionsScreen.dart';
import 'package:quiz/quizHome.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/resultScreen.dart';

const int START_SCREEN = 0;
const int QUIZ_SCREEN = 1;
const int RESULT_SCREEN = 2;

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
  int activeScreen = START_SCREEN;

  /*@override
  void initState(){
    activeScreen = QuizHome(switchScreen);
    super.initState();
  }*/

  void switchScreen() {
    setState(() {
      activeScreen = QUIZ_SCREEN;
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = RESULT_SCREEN;
      });
    }
  }

  void return2Title() {
    setState(() {
      activeScreen = START_SCREEN;
      selectedAnswers.clear();
    });
  }
  
  void restartQuiz(){
    setState(() {
      activeScreen = QUIZ_SCREEN;
      selectedAnswers.clear();
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = QuizHome(switchScreen);
    if (activeScreen == QUIZ_SCREEN) {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    if(activeScreen == RESULT_SCREEN) {
      screenWidget = ResultScreen(chosenAnswers: selectedAnswers, onRestart: restartQuiz, onReturnTitle: return2Title,);
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
