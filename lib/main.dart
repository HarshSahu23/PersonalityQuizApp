import "package:flutter/material.dart";
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // const MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  int finalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      finalScore = 0;
    });
  }

  void _answeredQuestion(int score) {
    finalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  final _questions = [
    {
      "questionText": "Your Favourite Pet Animal is :",
      "answers": [
        {"Text": "Dog", "Score": 3},
        {"Text": "Cat", "Score": 5},
        {"Text": "Snake", "Score": 7},
        {"Text": "Rabbit", "Score": 1},
        {"Text": "Bird", "Score": 2},
        {"Text": "Tiger", "Score": 9},
      ],
    },
    {
      "questionText": "Your Favourite Vegetable is :",
      "answers": [
        {"Text": "Potato", "Score": 2},
        {"Text": "Cauliflower", "Score": 4},
        {"Text": "लौकी", "Score": 6},
        {"Text": "Bitter Gourd", "Score": 9},
        {"Text": "Lettuce", "Score": 3},
      ],
    },
    {
      "questionText": "Your Favourite Place is : ",
      "answers": [
        {"Text": "California", "Score": 4},
        {"Text": "Greenland", "Score": 2},
        {"Text": "Mumbai", "Score": 6},
        {"Text": "Tokyo", "Score": 3},
        {"Text": "Dubai", "Score": 5},
        {"Text": "Islamabad", "Score": 9},
        {"Text": "Moscow", "Score": 5},
      ],
    },
    {
      "questionText": "Your Favourite Vehicle is : ",
      "answers": [
        {"Text": "Car", "Score": 4},
        {"Text": "Truck", "Score": 7},
        {"Text": "SUV", "Score": 6},
        {"Text": "Train", "Score": 5},
        {"Text": "Cycle", "Score": 2},
      ],
    },
    {
      "questionText": "Your Favourite Drink is : ",
      "answers": [
        {"Text": "Water", "Score": 1},
        {"Text": "Sprite", "Score": 5},
        {"Text": "Wine", "Score": 7},
        {"Text": "Fruit Juice", "Score": 3},
        {"Text": "Blood 😬", "Score": 10},
      ],
    },
    {
      "questionText": "Your favourite hobby  is : ",
      "answers": [
        {"Text": "Watch movie", "Score": 4},
        {"Text": "Gardening", "Score": 2},
        {"Text": "OutDoor Sports", "Score": 5},
        {"Text": "Video Games", "Score": 5},
        {"Text": "Sing / Dance", "Score": 4},
        {"Text": "Cooking", "Score": 3},
        {"Text": "Shooting guns ", "Score": 8},
      ],
    },
    {
      "questionText": "Your Favourite Flower is : ",
      "answers": [
        {"Text": "Daisy", "Score": 2},
        {"Text": "Rose", "Score": 4},
        {"Text": "Tulip", "Score": 5},
        {"Text": "MariGold", "Score": 3},
        {"Text": "Rafflesia", "Score": 9},
        {"Text": "Lavendar", "Score": 4},
        {"Text": "Lotus", "Score": 3},
      ],
    },
    {
      "questionText": "Your Favourite Wild Animal is : ",
      "answers": [
        {"Text": "Lion", "Score": 6},
        {"Text": "Elephant", "Score": 4},
        {"Text": "Rhinoceres", "Score": 5},
        {"Text": "Annaconda", "Score": 8},
        {"Text": "Cheetah", "Score": 7},
        {"Text": "Gorilla", "Score": 4},
        {"Text": "Wolf", "Score": 7},
        {"Text": "None of the above", "Score": 0},
      ],
    },
    {
      "questionText": "Your Weekend Plans are : ",
      "answers": [
        {"Text": "Sleep", "Score": 5},
        {"Text": "Visit Relatives", "Score": 2},
        {"Text": "Go Shopping", "Score": 4},
        {"Text": "Go for a vacation", "Score": 3},
        {"Text": "Gaming session with friends", "Score": 5},
        {"Text": "Hiking / Trekking", "Score": 6},
        {"Text": "OffRoad Racing", "Score": 8},
        {"Text": "Robbery...? 😱", "Score": 15},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Personality Quiz by Harsh "),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answeredQuestion: _answeredQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                  resetHandler: _resetQuiz,
                )
              : Result(
                  resetHandler: _resetQuiz,
                  resultScore: finalScore,
                )),
    );
  }
}
