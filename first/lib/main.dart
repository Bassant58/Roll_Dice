import 'package:flutter/material.dart';
// import 'image_change_1.dart';
import 'image_change_2.dart';

void main() {
  runApp(
   const  MaterialApp(
      home: Scaffold(
          //  backgroundColor: Colors.purpleAccent,
          body: CustomRadialGradient(
              [Colors.deepOrangeAccent, Color.fromARGB(115, 224, 5, 5)])),
    ),
  );
}
