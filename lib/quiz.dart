import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/questionsScreen.dart';
import 'package:quiz/quizHome.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
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

  @override
  Widget build(context) {
    Widget screenWidget = QuizHome(switchScreen);
    if (activeScreen == 'questions_screen') {
      screenWidget = const QuestionsScreen();
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
