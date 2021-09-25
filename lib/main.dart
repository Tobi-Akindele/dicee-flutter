import 'dart:math';

import 'package:flutter/material.dart';

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
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ldn = 1;
  int rdn = 1;

  void rollDice() {
    Random random = new Random();
    setState(() {
      ldn = random.nextInt(6) + 1;
      rdn = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
          child: TextButton(
            onPressed: rollDice,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('images/dice$ldn.png'),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: rollDice,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('images/dice$rdn.png'),
            ),
          ),
        ),
      ]),
    );
  }
}
