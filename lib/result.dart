import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  String get ResultPhrase {
    String resultText;

    if (resultScore >= 10) {
      resultText = 'Thats okay but you need work more';
    } else if (resultScore >= 25) {
      resultText = 'Cool, But you can be better! ';
    } else if (resultScore >= 30) {
      resultText = 'WoW You\'re such a Awesome ';
    } else {
      resultText = 'You\'re so bad';
    }
    return resultText;
  }

  Result(this.resultScore, this.resetHandler);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        ResultPhrase,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
       RaisedButton(onPressed: resetHandler, child: Text('Restart Test'))
    ]));
  }
}
