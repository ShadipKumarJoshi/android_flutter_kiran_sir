import 'package:first_app/screen/calculator_landscape_screen.dart';
import 'package:first_app/screen/calculator_portrait_screen.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      return const CalculatorLandscapeScreen();
    } else {
      return const CalculatorPortraitScreen();
    }
  }
}
