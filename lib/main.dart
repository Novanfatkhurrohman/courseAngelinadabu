import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.red,
    appBar:
        AppBar(title: Center(child: Text('Dice')), backgroundColor: Colors.red),
    body: MyApp(),
  )));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDice() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
            onPressed: () {
              setState(() {
                changeDice();
              });
            },
            child: Image.asset('assets/images/dice$leftDiceNumber.png'),
          )),
          Expanded(
              child: FlatButton(
            onPressed: () {
              setState(() {
                changeDice();
              });
            },
            child: Image.asset('assets/images/dice$rightDiceNumber.png'),
          )),
        ],
      ),
    );
  }
}
