import 'package:first_app/screen/bottom_screen/dashboard_screen.dart';
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
        // home: ArithmeticScreen1(),
        // home: CircleScreen(),
        // home: CustomWidgetScreen(),
        // home: LayoutScreen(),
        // home: StarLayoutScreen(),
        // home: StarLayoutScreen1Column(),
        // home: ListTileScreen(),
        // home: ArithmeticScreen1(),
        // home: OutputScreen(title: ''),
        // home: CalculatorLandscapeScreen(),
        // home: CalculatorPortraitScreen(),
        // home: CalculatorScreen(),
        // home: DataTableScreen(),
        home: DashboardScreen());
  }
}
