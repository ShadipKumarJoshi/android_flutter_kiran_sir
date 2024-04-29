import 'package:flutter/material.dart';

class RadioButton extends StatelessWidget {
  const RadioButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arithmetic Operations',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ArithmeticScreen1(),
    );
  }
}

class ArithmeticScreen1 extends StatefulWidget {
  const ArithmeticScreen1({super.key});

  @override
  _ArithmeticScreen1State createState() => _ArithmeticScreen1State();
}

class _ArithmeticScreen1State extends State<ArithmeticScreen1> {
  final TextEditingController _firstNumberController = TextEditingController();
  final TextEditingController _secondNumberController = TextEditingController();
  String _operation = 'Add';
  String _result = '';

  void _calculate() {
    final double firstNum = double.tryParse(_firstNumberController.text) ?? 0;
    final double secondNum = double.tryParse(_secondNumberController.text) ?? 0;
    double result;

    switch (_operation) {
      case 'Add':
        result = firstNum + secondNum;
        break;
      case 'Subtract':
        result = firstNum - secondNum;
        break;
      case 'Multiply':
        result = firstNum * secondNum;
        break;
      case 'Divide':
        result = (secondNum != 0) ? firstNum / secondNum : 0;
        break;
      default:
        result = 0;
    }

    setState(() {
      _result = result.toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: _firstNumberController,
              decoration: const InputDecoration(labelText: 'First number'),
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
            ),
            TextFormField(
              controller: _secondNumberController,
              decoration: const InputDecoration(labelText: 'Second number'),
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
            ),
            ListTile(
              title: const Text('Add'),
              leading: Radio(
                value: 'Add',
                groupValue: _operation,
                onChanged: (value) {
                  setState(() {
                    _operation = value.toString();
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Subtract'),
              leading: Radio(
                value: 'Subtract',
                groupValue: _operation,
                onChanged: (value) {
                  setState(() {
                    _operation = value.toString();
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Multiply'),
              leading: Radio(
                value: 'Multiply',
                groupValue: _operation,
                onChanged: (value) {
                  setState(() {
                    _operation = value.toString();
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Divide'),
              leading: Radio(
                value: 'Divide',
                groupValue: _operation,
                onChanged: (value) {
                  setState(() {
                    _operation = value.toString();
                  });
                },
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculate,
              child: const Text('Calculate'),
            ),
            const SizedBox(height: 20),
            Text('Result: $_result'),
          ],
        ),
      ),
    );
  }
}
