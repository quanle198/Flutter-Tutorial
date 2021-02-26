import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHander;
  final String answer;

  Answer(this.selectHander, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(
          answer,
        ),
        onPressed: selectHander,
      ),
    );
  }
}
