import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent[400],
        appBar: AppBar(
          title: const Text(
            'Destiny Dice roller',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              fontFamily: 'Pushster-Regular',
            ),
          ),
          backgroundColor: Colors.deepOrange,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: TextButton(
                child: Image.asset(
                  'images/dice$leftDiceNumber.png',
                  height: 250,
                  width: 250,
                ),
                onPressed: () {}),
          ),
          Expanded(
            child: TextButton(
                child: Image.asset(
                  'images/dice$rightDiceNumber.png',
                  height: 250,
                  width: 250,
                ),
                onPressed: () {}),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.redAccent[400], //background color of button
              elevation: 3, //elevation of button
              padding: EdgeInsets.all(20), //content padding inside button
            ),
            onPressed: () {
              changeDiceFace();
            },
            child: Text('Test your luck'),
          ),
        ],
      ),
    );
  }
}
