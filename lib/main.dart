import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdice = 1;
  int rightdice = 1;

  void myRandomNumbers() {
    leftdice = Random().nextInt(6) + 1;
    rightdice = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () => {
                setState(
                  () => {
                    myRandomNumbers(),
                  },
                ),
              },
              child: Image(
                image: AssetImage("lib/Images/dice$leftdice.png"),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () => {
                print("The second image as been called"),
                setState(
                  () => {
                    myRandomNumbers(),
                  },
                ),
              },
              child: Image(
                image: AssetImage("lib/Images/dice$rightdice.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
