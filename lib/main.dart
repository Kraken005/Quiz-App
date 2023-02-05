import 'package:flutter/material.dart';
import 'package:quizapp/answers.dart';
import './questions.dart';
import './Quiz.dart';
import './Results.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  static var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    //return 0;
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What is the longest river in the world',
        'answerText': [
          {'text': 'Nile', 'score': 1},
          {'text': 'Amazon', 'score': 0},
          {'text': 'Brahmaputra', 'score': 0},
          {'text': 'Thames', 'score': 0},
        ],
      },
      {
        'questionText': 'When did World War II start',
        'answerText': [
          {'text': '1945', 'score': 0},
          {'text': '1939', 'score': 1},
          {'text': '1942', 'score': 0},
          {'text': '1918', 'score': 0},
        ],
      },
      {
        'questionText': 'Where is UN headquaters located',
        'answerText': [
          {'text': 'Hague', 'score': 0},
          {'text': 'London', 'score': 0},
          {'text': 'Geneva', 'score': 0},
          {'text': 'New York', 'score': 1},
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Quiz App'),
          ),
          body: _questionIndex < questions.length
              ? Quiz(
                  questionIndex: _questionIndex,
                  answerQuestion: _answerQuestion(_totalScore),
                  questions: questions,
                )
              : Results()),
    );
  }
}
