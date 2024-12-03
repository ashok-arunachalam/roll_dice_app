import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';

class GradientUI extends StatelessWidget
{
  const GradientUI({super.key});

  @override
  Widget build(BuildContext context)
  {
      return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Color.fromARGB(255, 47, 44, 240), Color.fromARGB(255, 119, 118, 226),
              Color.fromARGB(255,  59, 57, 180 )],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
            )
        ),
        child: const Center(
            child: DiceRoller()
        )
      );
  }
}