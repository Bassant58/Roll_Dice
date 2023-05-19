import 'package:flutter/material.dart';
import 'dart:math';

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
  var dice = [
    'assets/images/dice-1.png',  //0
    'assets/images/dice-2.png',
    'assets/images/dice-3.png',
    'assets/images/dice-4.png',
    'assets/images/dice-5.png',
    'assets/images/dice-6.png'
  ];

  var newDice = 'assets/images/dice-1.png';

  void rollDice() {
    setState(() {
      var intValue = Random().nextInt(dice.length) + 0;
      String imageName = dice[intValue].toString();
      newDice = imageName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          newDice,
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
