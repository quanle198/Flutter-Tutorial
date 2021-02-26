import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Green', 'Blue']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Cat', 'Dog', 'Rabbit']
    },
    {
      'questionText': 'What\'s your favorite intructor?',
      'answers': ['Quan', 'Max', 'Min']
    },
  ];
  void answerQuestion() {
    if (questionIndex < questions.length - 1) {
      setState(() {
        questionIndex = questionIndex + 1;
      });
      print(questionIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]['questionText']),
            ...(questions[questionIndex]['answers'] as List<String>)
                .map((answer) => Answer(answerQuestion, answer))
                .toList(),
          ],
        ),
      ),
    );
  }
}
