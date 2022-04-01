import 'package:flutter/material.dart';
import './CustomAnswerWidget.dart';
import 'CustomQuestionWidget.dart';

class Quiz extends StatelessWidget {
  final Function answeredQuestion;
  final Function resetHandler;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  Quiz(
      {@required this.answeredQuestion,
      @required this.questionIndex,
      @required this.questions,
      @required this.resetHandler});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Question(questions[questionIndex]["questionText"]),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answer) {
            return Answers(
                () => answeredQuestion(answer["Score"]), answer["Text"]);
          }).toList(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: resetHandler,
        // child: Text("Reset"),
        child: const Icon(
          Icons.refresh,
          color: Colors.white,
          size: 29,
        ),
        tooltip: "Reset",
        splashColor: const Color.fromARGB(255, 17, 0, 248),
      ),
    );
  }
}
