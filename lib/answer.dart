import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;

  Answer(this.selectHandler); // Handling the function -The Function (Address) we re passing around is also known as a “CALLBACK ” because the receiving widget calls it the future.

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text('Answer 1'),
        onPressed: selectHandler,
      ),
    );
  }
}
