//Dated  : 16.08.2022
//author : Ganesh Kumar
//file   : lib/main.dart

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();// underscore tends to private
  }
}

class _MyAppState extends State<MyApp>{
  //class wide variable
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
       _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText' : 'what\'s your favorite color?',
        'answers' : ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText' : 'what\'s your favorite animal?',
        'answers' : ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText' : 'who\'s your favorite instructor?',
        'answers' : ['Ganesh', 'Kumar', 'Agnesh', 'Genie'],
      },
      // "\" back slash apostrophe
      
    ]; // semicolon is important
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          //Column or Row
          children: [
            //questions.elementAt(0) or questions[0]
            Question(
              questions[_questionIndex],
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    ); // Semicolon
  }
}
