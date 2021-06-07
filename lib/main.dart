import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Color(0xff199FB1),
      appBar: AppBar(
        title: Text(
          'Dice Roller',
          style:
              TextStyle(color: Color(0xffA5D1E1), fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xff0D5C75),
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  int sum = 2;
  var result;

  void randomNumber() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
    sum = leftDiceNumber + rightDiceNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    randomNumber();
                  });
                  print('Left DiceNumber = $leftDiceNumber');
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    randomNumber();
                  });
                  print('Right DiceNumber = $rightDiceNumber');
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
            Container(
              child: Text(
                'You got \n $sum',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color(0xffA5D1E1)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
