import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import './main.dart';
import './Quiz.dart';

class Answers extends StatelessWidget {
  final String answers;
  const Answers( {super.key, required this.selectHandler(), required this.answers});

  final Function selectHandler;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler(),
        child: Text(answers),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
      ),
    );
  }
}
