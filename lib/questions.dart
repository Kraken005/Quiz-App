import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  //const Questions({super.key});

  final String questionText;

  const Questions(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
