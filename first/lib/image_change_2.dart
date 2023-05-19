// Hard coded Solution from the Udemy bot at all the best

import 'package:flutter/material.dart';
import 'dart:math';

var rand = Random();

class CustomRadialGradient extends StatelessWidget {
  const CustomRadialGradient(this.colors, {super.key}); // constructor function

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(colors: colors),
      ),
      child: const Center(
        child: ImageChanges(),
      ),
    );
  }
}

class ImageChanges extends StatefulWidget {
  const ImageChanges({super.key});

  @override
  State<ImageChanges> createState() {
    return _ImageChanges();
  }
}

class _ImageChanges extends State<ImageChanges> {
  var dice = 1;

  void rollDice() {
    setState(() {
      dice = rand.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$dice.png",
          width: 200,
        ),
        const SizedBox(
          height: 30,
        ),
        FloatingActionButton.extended(
          label: const Text(
            'Roll Dice',
            style: TextStyle(fontSize: 20, color: Colors.orange),
          ),
          backgroundColor: Colors.black,
          onPressed: rollDice,
        ),
      ],
    );
  }
}
