import 'package:flutter/material.dart';

class Reusult extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Reusult(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText;
    if (resultScore <= 10) {
      resultText = ' not bad';
    } else if (resultScore <= 16) {
      resultText = ' good';
    } else {
      resultText = ' amazing';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          'Score: ' + resultScore.toString() + resultPhrase,
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        TextButton(
          child: Text('Restast quiz!'),
          style: TextButton.styleFrom(primary: Colors.green),
          onPressed: resetHandler,
        )
      ],
    ));
  }
}
