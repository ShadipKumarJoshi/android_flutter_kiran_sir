import 'package:first_app/model/arithmetic_model.dart';
import 'package:flutter/material.dart';
//POJO

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
// Delcare variables
  int? first;
  int? second;
  int result = 0;

  //Relationship
  // Loosley coupled
  ArithemticModel? arithemticModel;
  //  ArithemticModel encapsulates the arithmetic logic.
  // ArithemticModel? arithemticModel;: This variable holds an instance of ArithemticModel,
  //which encapsulates the arithmetic logic.
  //It's nullable (ArithemticModel?) because it's initialized later.

  // Create global key for form // form needs this key to search // check state
  final formKey = GlobalKey<FormState>();
  // Form validation is implemented using GlobalKey<FormState> and the validator property of the TextFormField widgets.
// If the validation passes, the arithmetic operation is performed; otherwise, appropriate error messages are displayed.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("Arithmetic"),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: formKey,
          // ctrl +. at coloum to wrap with result, change widget to Form and add key: formkey
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // TextField has no validator so use TextFormField
              TextFormField(
                onChanged: (value) {
                  first = int.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter First No',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter first no";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              TextFormField(
                onChanged: (value) {
                  second = int.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Second No',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter second no";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // form validation after clicking button
                    if (formKey.currentState!.validate()) {
                      // code runs only after validation is done
                      setState(
                        () {
                          // //Al;gorith,m
                          // // Business logic
                          // result = first! + second!;
                          arithemticModel =
                              ArithemticModel(first: first!, second: second!);
                          result = arithemticModel!.add();
                        },
                      );
                    }
                  },
                  child: const Text(
                    'Add',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Display informatuion
              Text(
                'Sum is : $result',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
