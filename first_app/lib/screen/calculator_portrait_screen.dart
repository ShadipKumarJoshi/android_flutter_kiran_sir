
import 'package:first_app/model/calculator_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalculatorPortraitScreen extends StatefulWidget {
  const CalculatorPortraitScreen({super.key});

  @override
  State<CalculatorPortraitScreen> createState() =>
      _CalculatorPortraitScreenState();
}

class _CalculatorPortraitScreenState extends State<CalculatorPortraitScreen> {
  final TextEditingController _numController = TextEditingController();
  double? firstNum;
  double? secondNum;

  List<String> listButtons = [
    'C',
    '^',
    '/',
    '<-',
    '1',
    '2',
    '3',
    '+',
    '4',
    '5',
    '6',
    '-',
    '7',
    '8',
    '9',
    '*',
    '%',
    '0',
    '.',
    '=',
  ];
  List<String> operators = [];

  CalculatorModel? calculatorModel;

  int numberOfButtons = 4;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      setState(() {
        numberOfButtons = 10;
      });
    } else {
      setState(() {
        numberOfButtons = 4;
      });
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator App'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextFormField(
            controller: _numController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.end,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
          Expanded(
            child: GridView.builder(
                padding: const EdgeInsets.all(20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: numberOfButtons,
                ),
                itemCount: listButtons.length,
                itemBuilder: (context, index) {
                  return ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (listButtons[index] == 'C') {
                            _numController.text = '';
                            operators.removeLast();
                          } else if (listButtons[index] == '<-') {
                            _numController.text = _numController.text
                                .substring(0, _numController.text.length - 1);
                          } else if (operators.isNotEmpty &&
                              listButtons[index] == '=') {
                            secondNum = double.parse(_numController.text);
                            calculatorModel = CalculatorModel(
                              firstNum: firstNum!,
                              secondNum: secondNum!,
                              operator: operators.first,
                            );
                            _numController.text =
                                calculatorModel!.calculate().toString();
                            operators.removeAt(0);
                          } else if (listButtons[index] == '+' ||
                              listButtons[index] == '-' ||
                              listButtons[index] == '*' ||
                              listButtons[index] == '/' ||
                              listButtons[index] == '^' ||
                              listButtons[index] == '%') {
                            operators.add(listButtons[index]);
                            firstNum = double.parse(_numController.text);
                            _numController.text = '';
                          } else {
                            _numController.text += listButtons[index];
                          }
                        });
                      },
                      child: Text(listButtons[index]));
                }),
          ),
        ],
      ),
    );
  }
}
