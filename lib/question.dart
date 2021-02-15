import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10, bottom: 50),
        width: double.infinity,
        child: Text(
          questionText,
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ));
  }
}
