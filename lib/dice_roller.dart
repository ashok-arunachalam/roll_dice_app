import 'package:flutter/material.dart';
import 'dart:math';

final random = Random();

class DiceRoller extends StatefulWidget
{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _RollDice();
  }
}

class _RollDice extends State<DiceRoller>
{
  static const List<String> allDiceImages = ["asserts/images/dice-1.png", "asserts/images/dice-2.png", "asserts/images/dice-3.png",
                                "asserts/images/dice-4.png", "asserts/images/dice-5.png", "asserts/images/dice-6.png"];
  String diceImage = allDiceImages[random.nextInt(6)];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
            diceImage,
          width: 200,
        ),
        const SizedBox(width: 30,height: 30,),
        ElevatedButton(onPressed: _onDiceBtnPressed,
            child: const Text("RollDice")),
      ],
    );
  }

  _onDiceBtnPressed()
  {
    setState(() {
      diceImage = allDiceImages[random.nextInt(6)];
    });
  }
}

