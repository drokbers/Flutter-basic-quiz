import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

//void main() {
// runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Which one is capital of Germany?',
      'answers': [
        {'text': 'Berlin', 'score': 10},
        {'text': 'Bonn', 'score': 0},
        {'text': 'Hamburg', 'score': 0},
        {'text': 'Rossemhei', 'score': 0},
      ],
    },
    {
      'questionText': 'The proclamation of the republic in Turkey?',
      'answers': [
        {'text': '1923', 'score': 15},
        {'text': '1921', 'score': 0},
        {'text': '1931', 'score': 0},
        {'text': '1938', 'score': 0},
      ],
    },
    {
      'questionText': 'Which one is bigger?',
      'answers': [
        {'text': 'Country', 'score': 0},
        {'text': 'City', 'score': 0},
        {'text': 'Town', 'score': 0},
        {'text': 'Continent ', 'score': 12},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalscore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalscore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Basic Quiz'),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    questionIndex: _questionIndex,
                    answerQuestion: _answerQuestion,
                    questions: _questions,
                  )
                : Result(_totalscore, _resetQuiz)));
  }
}
