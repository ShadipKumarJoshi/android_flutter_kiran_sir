import 'package:flutter/material.dart';

class StarLayoutScreen extends StatelessWidget {
  const StarLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Star Layout"),
      ),
      body: Container(
        color: Colors.red,
        child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.star),
              Column(
                children: [
                  Icon(Icons.star),
                  Icon(Icons.star),
                ],
              )
            ]),
      ),
    );
  }
}
