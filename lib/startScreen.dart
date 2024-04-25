import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:quiz/quizHome.dart';

class StartScreen extends Container {
  StartScreen({super.key});

  @override
  Widget build(context){
    return const Center(
        child: QuizHome(),
    );
  }
}
