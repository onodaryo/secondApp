import 'package:flutter/material.dart';
import 'package:quiz/gradientContainer.dart';

void main (){
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Colors.deepPurple,
          Colors.indigo,
        ),
      ),
    ),
  );
}
