import 'package:first_app/common_widget/my_button.dart';
import 'package:flutter/material.dart';

class CustomWidgetScreen extends StatelessWidget {
  const CustomWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Button Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                hintText: 'Enter Name',
              ),
            ),
            MyButton(
              onPressed: () {},
              text: 'Click Me',
            )
          ],
        ),
      ),
    );
  }
}
