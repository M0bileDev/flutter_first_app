import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

//Set private viibility scope to this file, none of other classes
//have access to this class
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void onDicePressed() {
    //re-execute build function with updated class variable
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          scale: 2.5,
        ),
        SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: onDicePressed,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 20),
          ),
          child: Text('Roll dice'),
        )
      ],
    );
  }
}
