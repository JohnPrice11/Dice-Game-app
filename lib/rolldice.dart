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

class _DiceRollerState extends State<DiceRoller> {
  var outputImage = 'assests/images/dice-1.png';

  void rolldice() {
    var diceRoll = randomizer.nextInt(6) + 1;
    setState(() {
      outputImage = 'assests/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          outputImage,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
            padding: EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 28),
          ),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
