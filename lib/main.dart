//Dated  : 16.08.2022
//author : Ganesh Kumar
//file   : lib/main.dart

import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer Chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favorite color?',// "\" back slash apostrophe
      'what\'s your favorite animal?',
    ]; // semicolon is important
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column( //Column or Row
          children: [
            Text('The Question!'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion, // don't use parentheses
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
    );// Semicolon
  }
}
