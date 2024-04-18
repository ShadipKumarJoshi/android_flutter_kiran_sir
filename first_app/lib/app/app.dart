import 'package:first_app/screen/swap_numbers.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // themes
      // home: HelloWorldScreen(),
      // home: SimpleInterestScreen(),
      home: SwapNumbersScreen(),
    );
  }
}
