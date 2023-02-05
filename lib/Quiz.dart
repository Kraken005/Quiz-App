import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quizapp/questions.dart';
import './main.dart';

import 'answers.dart';

class Quiz extends StatelessWidget {
  //final String questionText;
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback answerQuestion;
  const Quiz({
    super.key,
    required this.questionIndex,
    required this.questions,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Questions(
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answerText'] as List<Map<String, Object>>)
            .map((answers) {
          return Answers(selectHandler: () =>  answerQuestion(answers(['score'])) as Function, answers: answers['text'] as String);
        }).toList(),
      ],
    );
  }
}
