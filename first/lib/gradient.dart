import 'package:flutter/material.dart';

// var textInputValue = 'Hello World';

class CustomRadialGradient extends StatelessWidget {
  CustomRadialGradient(this.innerText, this.textSize, this.colors,
      {super.key}); // constructor function

  final String innerText;
  final double textSize;
  final List<Color> colors;
  var dice = 'assets/images/dice-1.png';
  void rollDice() {
    dice = 'assets/images/dice-2.png';
    print('change');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(colors: colors),
      ),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            dice,
            width: 200,
          ),
          const SizedBox(
            height: 30,
          ),
          FloatingActionButton.extended(
            // extendedTextStyle: const TextStyle(fontSize: 20 , color: Colors.orange), // <-- Text
            label: const Text(
              'Roll Dice',
              style: TextStyle(fontSize: 20, color: Colors.orange),
            ),
            backgroundColor: Colors.black,
            // icon: const Icon(
            //   // <-- Icon
            //   Icons.devices_sharp,
            //   size: 24.0,
            // ),
            onPressed: rollDice,
            // () {},
          ),
        ],
      )),
    );
  }
}

class TextStyling extends StatelessWidget {
  const TextStyling(this.textInputValue, this.textSize, {super.key});

  final String textInputValue;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        textInputValue,
        style: TextStyle(
            fontSize: textSize, color: const Color.fromARGB(74, 15, 14, 15)),
      ),
    );
  }
}



