import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp( MyDiceApp());
}

class MyDiceApp extends StatelessWidget {
  const MyDiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dice Roll"),
        ),
        body: Dice(),
      ),
    );
  }
}
class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  @override
  int left = 1;
  int right = 2;
  void DiceRoll() {
    setState(() {
      left = Random().nextInt(6)+1;
      right = Random().nextInt(6)+1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
          children: [
            Expanded(child: TextButton(onPressed: () { DiceRoll(); },
              style: TextButton.styleFrom(backgroundColor: Colors.pink),
              child: Image.asset('images/dice$left.png'),
            ),
            ),
            Expanded(child: TextButton(onPressed: () { DiceRoll(); },
              style: TextButton.styleFrom(backgroundColor: Colors.purple),
              child: Image.asset('images/dice$right.png'),
            ),
            ),
          ],
        ),
      ),
    );
  }
}

