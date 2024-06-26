import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz/data/questions.dart';
import 'package:quiz/questionSummary.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen({super.key, required this.chosenAnswers, required this.onRestart, required this.onReturnTitle});

  final List<String> chosenAnswers;
  final void Function() onReturnTitle;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for(var i =0; i < chosenAnswers.length; i++){
      summary.add({
        'question_index'  : i,
        'question'        : questions[i].text,
        'correct_answer'  : questions[i].answers[0],
        'user_answer'     : chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(context){
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions question correctly!',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 20,
                ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30,),
            QuestionsSummary(summaryData: summaryData),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                  onPressed: onRestart,
                  style: TextButton.styleFrom(
                    foregroundColor:Colors.white,
                  ),
                  icon: const Icon(
                    Icons.refresh,
                  ),
                  label: const Text('Restart Quiz!'),
                ),
                const SizedBox(width: 20,),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  icon: const Icon(Icons.cancel),
                  onPressed: onReturnTitle,
                  label: const Text('Return to Title.'),
                )
              ]
            ),
          ],
        ),
      ),
    );
  }
}