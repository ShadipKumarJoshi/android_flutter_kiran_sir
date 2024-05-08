import 'package:first_app/screen/calculator_landscape_screen.dart';
import 'package:first_app/screen/list_tile_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // themes
      // home: HelloWorldScreen(),
      // home: SimpleInterestScreen(),
      // home: SwapNumbersScreen(),
      // home: ArithmeticScreen(),
      // home: CircleScreen(),
      // home: LayoutScreen(),
      // home: StarLayoutScreen(),
      // home: StarLayoutScreen1Column(),
      // home: ListTileScreen(),
      // home: ArithmeticScreen1(),
      // home: OutputScreen(),
      home: CalculatorLandscapeScreen(),
    );
  }
}
