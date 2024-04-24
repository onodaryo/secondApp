import 'package:flutter/material.dart';

class QuizHome extends StatefulWidget{
  const QuizHome({super.key});

  @override
  State<QuizHome> createState() {
    return _QuizHome();
  }
}

class _QuizHome extends State<QuizHome> {
  void changeSceneH2Q(){
    // ...
  }
  @override
  build(context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 280,
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,

          ),
        ),
        const SizedBox(
          height: 24,
        ),
        OutlinedButton(
            onPressed: changeSceneH2Q,
            child: const Text(
              'Start Quiz',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
        ),
      ],
    );
  }
}
