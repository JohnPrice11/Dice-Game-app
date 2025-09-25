import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: GradientContainer(
          const Color.fromARGB(255, 28, 3, 72),
          const Color.fromARGB(255, 80, 127, 6),
        ),
      ),
    ),
  );
}
