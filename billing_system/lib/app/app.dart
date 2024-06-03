import 'package:billing_system/screen/billing_system_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        // themes
        
        home: BillingSystemScreen());
  }
}
