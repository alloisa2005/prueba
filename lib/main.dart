import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  var questions = ['Cual es tu color favorito?', 'Cual es tu animal favorito?'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('My App'),
          ),
          body: Container(
            padding: EdgeInsets.only(top: 10),
            height: double.infinity,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(questions[questionIndex]),
                RaisedButton(
                  child: Text('Answer1'),
                  onPressed: _answerQuestion,
                ),
                RaisedButton(
                  child: Text('Answer2'),
                  onPressed: _answerQuestion,
                ),
                RaisedButton(
                  child: Text('Answer3'),
                  onPressed: _answerQuestion,
                ),
              ],
            ),
          )),
    );
  }

  void _answerQuestion() {
    setState(() {
      questionIndex++;
      print('>>QIndex: ' + questionIndex.toString());
    });
  }
}
