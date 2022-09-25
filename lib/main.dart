import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
      print('${_questionIndex}');
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _questions = const [
      {
        'questionText': 'What\'s your favourite color?',
        'answers': [
          {'text': 'Blue', 'score': 10},
          {'text': 'Red', 'score': 5},
          {'text': 'Black', 'score': 3},
          {'text': 'White', 'score': 1}
        ]
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': [
          {'text': 'Lion', 'score': 10},
          {'text': 'Tiger', 'score': 5},
          {'text': 'Elephant', 'score': 3},
          {'text': 'Snake', 'score': 1}
        ]
      },
      {
        'questionText': 'Who\'s your favourite cricketer?',
        'answers': [
          {'text': 'Sachin', 'score': 10},
          {'text': 'Rohit', 'score': 5},
          {'text': 'Kohli', 'score': 3},
          {'text': 'Dhoni', 'score': 1}
        ]
      },
    ];
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Learning App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
