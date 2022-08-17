import 'package:flutter/material.dart';

class Question extends StatelessWidget {
   final String questionText; //This class (or a class that this class inherits from) is marked as '@immutable', but one or more of its instance fields aren't final: Question.questionText.dart

  Question(this.questionText); // constructor (Positional Arguments)

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}