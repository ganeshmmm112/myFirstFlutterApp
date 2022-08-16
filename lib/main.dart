//Dated  : 16.08.2022
//author : Ganesh Kumar
//file   : lib/main.dart

import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Text('This is my default text!'),
      ),
    );
  }
}