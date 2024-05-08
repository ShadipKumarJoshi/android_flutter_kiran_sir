import 'dart:math';

class CalculatorModel {
  final double firstNum;
  final double secondNum;
  final String operator;

  CalculatorModel({
    required this.firstNum,
    required this.secondNum,
    required this.operator,
  });

  double calculate() {
    switch (operator) {
      case '+':
        return firstNum + secondNum;
      case '-':
        return firstNum - secondNum;
      case '*':
        return firstNum * secondNum;
      case '/':
        return firstNum / secondNum;
      case '^':
        return double.parse(pow(firstNum, secondNum).toString());
      case '%':
        return firstNum % secondNum;
      default:
        return firstNum;
    }
  }
}
