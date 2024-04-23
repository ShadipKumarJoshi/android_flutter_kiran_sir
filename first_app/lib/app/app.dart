import 'package:first_app/screen/circle_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // themes
      // home: HelloWorldScreen(),
      // home: SimpleInterestScreen(),
      // home: SwapNumbersScreen(),
      // home: ArithmeticScreen(),
      home: CircleScreen(),
      // home: LayoutScreen(),
    );
  }
}
