import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:quiz/quizHome.dart';

class GradientContainer extends Container {
  GradientContainer(this.gradientFirst, this.gradientEnd, {super.key});

  final Color gradientFirst;
  final Color gradientEnd;

  @override
  Widget build(context){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            gradientFirst,
            gradientEnd,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: QuizHome(),
      ),
    );
  }
}
