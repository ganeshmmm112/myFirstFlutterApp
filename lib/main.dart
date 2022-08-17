//Dated  : 16.08.2022
//author : Ganesh Kumar
//file   : lib/main.dart

import 'package:flutter/material.dart';

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
      'what\'s your favorite color?', // "\" back slash apostrophe
      'what\'s your favorite animal?',
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
            Text(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestion, // don't use parentheses
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 Chosen!'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                //...Anonymous Functions
                print('Answer 3 Chosen!');
              },
            ),
          ],
        ),
      ),
    ); // Semicolon
  }
}
