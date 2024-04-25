import 'package:flutter/material.dart';

class StarLayoutScreen1Column extends StatelessWidget {
  const StarLayoutScreen1Column({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Star Layout"),
      ),
      body: Container(
        color: Colors.blue,
        child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.star),
              Spacer(),
              Icon(Icons.star),
              Icon(Icons.star),
            ]),
      ),
    );
  }
}
