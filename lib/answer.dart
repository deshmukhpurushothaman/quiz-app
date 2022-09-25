import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        // child: RaisedButton(
        //   color: Colors.blue,
        //   textColor: Colors.white,
        //   child: Text(answerText),
        //   onPressed: () => selectHandler(),
        // ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20, color: Colors.blue)),
          onPressed: () => selectHandler(),
          child: Text(answerText),
        ));
  }
}
