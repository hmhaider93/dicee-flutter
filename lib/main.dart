import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
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
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
    var leftDiceNumber = 3;
    var rightDiceNumber = 2;

  void rollDice() {
    setState(() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  
 @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: TextButton(
                  onPressed: rollDice,
                  child: Image.asset('images/dice$leftDiceNumber.png'))),
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: rollDice,
              child: Image(
                image: AssetImage('images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
