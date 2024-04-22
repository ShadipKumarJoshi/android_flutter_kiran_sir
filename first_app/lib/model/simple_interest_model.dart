class SimpleInterestModel {
  final double principalValue;
  final double rateValue;
  final double timeValue;

  SimpleInterestModel({
    required this.principalValue,
    required this.rateValue,
    required this.timeValue,
  });

  // Simple interest logic
  double result() {
    return principalValue * rateValue * timeValue / 100;
  }
}
