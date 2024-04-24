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
    print('hoge');
  }
  @override
  build(context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Opacity(
          opacity: 0.6,
          child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
        ),
        const SizedBox(
          height: 80,
        ),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,

          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: changeSceneH2Q,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text(
              'Start Quiz',
            ),
        ),
      ],
    );
  }
}
