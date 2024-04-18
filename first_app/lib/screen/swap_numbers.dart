import 'package:flutter/material.dart';

class SwapNumbersScreen extends StatefulWidget {
  const SwapNumbersScreen({super.key});

  @override
  State<SwapNumbersScreen> createState() => _SwapNumbersScreenState();
}

class _SwapNumbersScreenState extends State<SwapNumbersScreen> {
  int? first;
  int? second;
  int sumOfNumbers = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Swap two numbers',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            // Enter first no
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                first = int.parse(value);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter first number',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                second = int.parse(value);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Second number',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  sumOfNumbers = first! + second!;
                  first = sumOfNumbers - first!;
                  second = sumOfNumbers - second!;
                });
              },
              child: const Text('Swap'),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'The first number is : $first',
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              'The second number is : $second',
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
