import 'package:flutter/material.dart';
import 'package:quiz/answerButton.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context){
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The question...',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(button_text: 'Answer 1', onTap: (){}),
          AnswerButton(button_text: 'Answer 2', onTap: (){}),
          AnswerButton(button_text: 'Answer 3', onTap: (){}),
          AnswerButton(button_text: 'Answer 4', onTap: (){}),
        ],
      ),
    );
  }
}
