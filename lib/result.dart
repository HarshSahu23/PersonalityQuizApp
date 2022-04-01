import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  const Result({this.resetHandler, this.resultScore});

  Text get resultPhrase {
    Text resultText;
    if (resultScore <= 20) {
      resultText = Text(
        "Angelic & Pure 🥰",
        style: TextStyle(
            fontSize: 26, fontStyle: FontStyle.italic, color: Colors.pink[500]),
      );
    } else if ((resultScore > 20) && (resultScore <= 30)) {
      resultText = Text(
        "Innocent & Righteous 😄",
        style: TextStyle(
            fontSize: 26, fontStyle: FontStyle.italic, color: Colors.teal[500]),
      );
    } else if ((resultScore > 30) && (resultScore <= 40)) {
      resultText = Text(
        "Charming & Awesome😀",
        style: TextStyle(
            fontSize: 26, fontStyle: FontStyle.normal, color: Colors.blue[500]),
      );
    } else if ((resultScore > 40) && (resultScore <= 50)) {
      resultText = Text(
        "Intimidating & Bold😨",
        style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600,
            color: Colors.orange[500]),
      );
    } else if ((resultScore > 50)) {
      resultText = Text(
        "Devil & Wicked 😈",
        style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w900,
            color: Colors.purple[500]),
      );
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text(
            "\n\n\n\n\nQuiz Finished🎉\n\n",
            style: TextStyle(fontSize: 26),
          ),
          resultPhrase,
          FlatButton(
              onPressed: resetHandler,
              child: const Text(
                "Try Again ?",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20,
                ),
              ))
        ],
      ),
    );
  }
}
