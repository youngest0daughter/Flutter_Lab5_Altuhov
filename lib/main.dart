import 'package:flutter/material.dart';
import 'package:facts_app_altuhov/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          Colors.deepPurple,
          Colors.indigo,
          Colors.teal,
        ),
      ),
    ),
  );
}